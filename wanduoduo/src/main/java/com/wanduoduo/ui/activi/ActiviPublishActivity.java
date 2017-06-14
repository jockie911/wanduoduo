package com.wanduoduo.ui.activi;

import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.TextView;

import com.jph.takephoto.model.TImage;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PhotoPicAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.PubSelectPlaceBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PhotoDialogHelper;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/9/19.
 */
public class ActiviPublishActivity extends BaseActivity implements AdapterView.OnItemClickListener {
    private static final int PIC_NUM_COUNT = 9;
    private static final int UP_LOAD_PIC = 1;
    private static final int ACTIVI_WATCH = 2;
    private static final int PUB_ACTIVI = 3;
    private static final int SELECT_PLACE = 4;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.mgv_photo)
    MyGridView mgvPhoto;
    @Bind(R.id.et_content)
    EditText etContent;
    @Bind(R.id.tv_location)
    TextView tvLocation;
    @Bind(R.id.tv_watch)
    TextView tvWatch;
    private PhotoPicAdapter adapter;
    private ArrayList<String> mResultPicPaths = new ArrayList<>();
    private List<String> picUrlLists = new ArrayList<>();
    private int watchposition = 0;
    private PubSelectPlaceBean pubSelectPlaceBean;
    private PhotoDialogHelper photoDialogHelper;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_activi_publish;
    }

    @Override
    protected void initData() {
        tvTitle.setText("发布动态");
        tvRightTitleBar.setText("发布");

        mgvPhoto.setNumColumns(3);
        adapter = new PhotoPicAdapter(null, PIC_NUM_COUNT, 3, new PhotoPicAdapter.OnDeleteListen() {
            @Override
            public void onDelete(int deletePosition, boolean... isDeleteFromNet) {
                mResultPicPaths.remove(deletePosition);
            }
        });
        mgvPhoto.setAdapter(adapter);
        mgvPhoto.setOnItemClickListener(this);
    }

    @OnClick({R.id.tv_right_title_bar,R.id.rel_location, R.id.rel_watch, R.id.iv_share_weixin, R.id.iv_share_weibo})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_location:
                startActivityForResult(new Intent(ActiviPublishActivity.this,ActiviPublishSelectPlaceActivity.class),SELECT_PLACE);
                break;
            case R.id.rel_watch:
                Intent intent = new Intent(this, ActiviWatchActivity.class);
                intent.putExtra("watchposition",watchposition);
                startActivityForResult(intent,ACTIVI_WATCH);
                break;
            case R.id.iv_share_weixin:
                break;
            case R.id.iv_share_weibo:
                break;
            case R.id.tv_right_title_bar:
                // 发布活动
                if (isReady()) {
                    DialogUtils.loading(this, "正在上传中...");
                    if (mResultPicPaths.size() != 0){
                        OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD, mResultPicPaths, new MyOnRefreshListen(UP_LOAD_PIC));
                    }else{
                        myHandler.sendEmptyMessage(UP_LOAD_PIC);
                    }
                }
                break;
        }
    }

    private boolean isReady() {
        if (TextUtils.isEmpty(etContent.getText().toString()) && mResultPicPaths.size() == 0) {
            ToastUtils.makeToast("请上传内容");
            return false;
        }
        return true;
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        if(mResultPicPaths.size() < adapter.getCount() && i == adapter.getCount() - 1) {
            if(photoDialogHelper == null)
                photoDialogHelper = new PhotoDialogHelper(ActiviPublishActivity.this);
            photoDialogHelper.setMaxPicCount(PIC_NUM_COUNT - mResultPicPaths.size()).show();
        }else{
            Intent intent = new Intent(ActiviPublishActivity.this, ShowPicActivity.class);
            intent.putStringArrayListExtra("bimp", mResultPicPaths);
            intent.putExtra("kind",1);
            intent.putExtra("position",i);
            ActiviPublishActivity.this.startActivity(intent);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (data != null) {
            switch (requestCode) {
                case IConstant.PHOTO_PIC_REQUEST_CODE:
                    if(data != null && data.getBooleanExtra(IConsName.SUCCESS,false)){
                        ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
                        for (TImage image : images) {
                            mResultPicPaths.add(image.getPath());
                        }
                        adapter.addLocalPics(mResultPicPaths);
                    }
                    break;
                case ACTIVI_WATCH:
                    watchposition = data.getIntExtra("watchposition", 0);
                    if(watchposition == 1){
                        tvWatch.setText("公开");
                    }else if(watchposition == 2){
                        tvWatch.setText("仅互相喜欢的人可见");
                    }else if(watchposition == 3){
                        tvWatch.setText("仅自己可见");
                    }
                    break;
                case SELECT_PLACE:
                    pubSelectPlaceBean = data.getParcelableExtra("pubSelectPlaceBean");
                    if(TextUtils.isEmpty(pubSelectPlaceBean.getPlace())){
                        tvLocation.setText("");
                    }else{
                        tvLocation.setText("已设置");
                    }
                    break;
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private class MyOnRefreshListen implements OkHttpUtils.OnResultListener {
        private int requestCode;

        public MyOnRefreshListen(int requestCode) {
            this.requestCode = requestCode;
        }

        @Override
        public void onSuccess(String result) {
            if (requestCode == UP_LOAD_PIC) {
                try {
                    JSONArray jsonArray = new JSONObject(result).getJSONObject("data").getJSONArray("path");
                    for (int i = 0;i < jsonArray.length();i++){
                        picUrlLists.add(jsonArray.getString(i));
                    }
                    myHandler.sendEmptyMessage(UP_LOAD_PIC);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }else if(requestCode == PUB_ACTIVI){
                myHandler.sendEmptyMessage(PUB_ACTIVI);
            }
        }

        @Override
        public void onFailure(int errCode, String errMsg) {
        }
    }

    MyHandler myHandler = new MyHandler(this) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == UP_LOAD_PIC) {
                OkHttpUtils.sendPostRequest(IConstant.ACTIVITY_NEWS,getPubMap(),picUrlLists,"pics",new MyOnRefreshListen(PUB_ACTIVI));
            }else if(msg.what == PUB_ACTIVI){
                DialogUtils.loadingDismiss();
                finish();
            }
        }
    };

    private Map<String, String> getPubMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        if(!TextUtils.isEmpty(etContent.getText().toString()))
            map.put("content",etContent.getText().toString());
        if(watchposition != 0)
            map.put("view_type",watchposition + "");
        if(pubSelectPlaceBean != null && !TextUtils.isEmpty(pubSelectPlaceBean.getPlace())){
            map.put("lat",pubSelectPlaceBean.getLat() + "");
            map.put("lng",pubSelectPlaceBean.getLng() + "");
            map.put("address",pubSelectPlaceBean.getPlace());
        }
        return map;
    }
}
