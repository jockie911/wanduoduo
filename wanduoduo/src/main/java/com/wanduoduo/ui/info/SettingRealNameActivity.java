package com.wanduoduo.ui.info;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;

import com.jph.takephoto.model.TImage;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PhotoPicAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PhotoDialogHelper;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.widget.MyGridView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;

public class SettingRealNameActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    private static final int PIC_NUM_COUNT = 2;
    @Bind(R.id.gv_id_card)
    MyGridView gvIdCard;
    private List<String> alreadyPicLists = new ArrayList<>();
    private ArrayList<String> mResultPicPaths = new ArrayList<>();
    private PhotoPicAdapter picAdapter;
    private PhotoDialogHelper photoDialogHelper;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_setting_real_name;
    }

    @Override
    protected void initData() {
        tvTitle.setText("身份校验");
        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                String idcard_pic = infoBean.getData().getIdcard_pic();
                if(!TextUtils.isEmpty(idcard_pic)){
                    try {
                       JSONArray jsonArray = new JSONArray(idcard_pic);
                       for (int i = 0;i < jsonArray.length();i++)
                           alreadyPicLists.add(jsonArray.getString(i));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }

                picAdapter = new PhotoPicAdapter(alreadyPicLists, PIC_NUM_COUNT, 2, new PhotoPicAdapter.OnDeleteListen() {
                    @Override
                    public void onDelete(int deletePosition, boolean... isDeleteFromNet) {
                        if(isDeleteFromNet[0]){
                            alreadyPicLists.remove(deletePosition);
                        }else{
                            mResultPicPaths.remove(deletePosition);
                        }
                    }
                });
                gvIdCard.setAdapter(picAdapter);
                gvIdCard.setOnItemClickListener(SettingRealNameActivity.this);
            }
        });

    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        if((alreadyPicLists.size() + mResultPicPaths.size())< picAdapter.getCount() && i == picAdapter.getCount() - 1) {
            if(photoDialogHelper == null)
                photoDialogHelper = new PhotoDialogHelper(SettingRealNameActivity.this);
            photoDialogHelper.setMaxPicCount(PIC_NUM_COUNT - mResultPicPaths.size() - alreadyPicLists.size()).show();
        }else{
            Intent intent = new Intent(SettingRealNameActivity.this, ShowPicActivity.class);
            intent.putExtra("kind",2);
            intent.putStringArrayListExtra("piclist", (ArrayList<String>) alreadyPicLists);
            intent.putStringArrayListExtra("bimp", mResultPicPaths);
            intent.putExtra("position",i);
            startActivity(intent);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode){
            case IConstant.PHOTO_PIC_REQUEST_CODE:
                if(data != null && data.getBooleanExtra(IConsName.SUCCESS,false)){
                    ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
                    for (TImage image : images) {
                        mResultPicPaths.add(image.getPath());
                    }
                    picAdapter.addLocalPics(mResultPicPaths);
                }
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @OnClick({R.id.tv_submit})
    public void onclick(View view){
        if(view.getId() == R.id.tv_submit){
            if((alreadyPicLists.size()+ mResultPicPaths.size()) != 2){
                ToastUtils.makeToast("请至少上传两张身份验证");
                return;
            }else if(mResultPicPaths.size() == 0) {
                ToastUtils.makeToast("已保存信息");
                finish();
            }else{
                    DialogUtils.loading(this,"正在上传身份证信息");
                    final ArrayList<String> objs = new ArrayList<>();
                    objs.addAll(alreadyPicLists);

                    OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD, mResultPicPaths, new OkHttpUtils.OnResultListener() {
                        @Override
                        public void onSuccess(String result) {
                            try {
                                final String pics = new JSONObject(result).getJSONObject("data").getString("path");

                                JSONArray jsonArray = new JSONArray(pics);
                                for (String s : objs) {
                                    jsonArray.put(s);
                                }

                                OkHttpUtils.sendPostRequest(IConstant.USER_INFO, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).
                                        addParams("idcard_pic",jsonArray.toString() ).getMap(), new OkHttpUtils.OnResultListener() {
                                    @Override
                                    public void onSuccess(String result) {
                                        setSuscess(pics);
                                    }

                                    @Override
                                    public void onFailure(int errCode, String errMsg) {

                                    }
                                });
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }

                        @Override
                        public void onFailure(int errCode, String errMsg) {

                        }
                    });
                }
            }
    }


    /**
     *  图片上传成功
     * @param pics
     */
    private void setSuscess(final String pics) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                DialogUtils.loadingDismiss();

                AlertDialog.Builder builder = new AlertDialog.Builder(SettingRealNameActivity.this);
                builder.setTitle("提交成功");
                builder.setMessage("您的身份认证已成功提交，我们将在24小时内审核，请耐心等待。");
                builder.setCancelable(false);
                builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Intent intent = new Intent();
                        intent.putExtra("pic",pics);
                        setResult(RESULT_OK);
                        finish();
                    }
                }).create().show();
            }
        });
    }
}
