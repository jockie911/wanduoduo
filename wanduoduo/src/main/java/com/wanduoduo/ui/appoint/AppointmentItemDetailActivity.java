package com.wanduoduo.ui.appoint;

import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.adapter.activi.ItemPicAdapter;
import com.wanduoduo.adapter.online.OnLineAppointPubTagAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.AppointBean;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.widget.ActionSheetDialog;
import com.wanduoduo.widget.CircleImageView;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.UserInfo;

public class AppointmentItemDetailActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    @Bind(R.id.iv_avctor)
    CircleImageView ivAvctor;
    @Bind(R.id.tv_name)
    TextView tvName;
    @Bind(R.id.tv_age)
    TextView tvAge;
    @Bind(R.id.tv_activi_time)
    TextView tvActiviTime;
    @Bind(R.id.iv_jian_tou)
    ImageView ivJianTou;
    @Bind(R.id.iv_vip_level)
    ImageView ivVipLevel;
    @Bind(R.id.rel_person_info)
    RelativeLayout relPersonInfo;
    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;

    @Bind(R.id.iv_item_icon)
    ImageView ivItemIcon;
    @Bind(R.id.tv_item_title)
    TextView tvItemTitle;
    @Bind(R.id.tv_item_desc)
    TextView tvItemDesc;
    @Bind(R.id.mgv_pic)
    MyGridView mgvPic;
    @Bind(R.id.tv_item_order)
    TextView tvItemOrder;
    @Bind(R.id.tv_item_sex)
    TextView tvItemSex;

    @Bind(R.id.mgv_tag)
    MyGridView mgvTag;
    @Bind(R.id.rel_tag)
    RelativeLayout relTag;

    @Bind(R.id.iv_item_top)
    ImageView ivItemTop;
    @Bind(R.id.iv_item_bottom)
    ImageView ivItemBottom;
    @Bind(R.id.tv_item_place)
    TextView tvItemPlace;
    @Bind(R.id.tv_item_time)
    TextView tvItemTime;
    private int[] iconTitls = {R.drawable.icon_tag_traval,R.drawable.icon_tag_eat,R.drawable.icon_tag_movie,
            R.drawable.icon_tag_sing,R.drawable.icon_tag_run,R.drawable.icon_tag_other};
    private AppointBean.DataBean.DataListBean itemData;
    private static final int REQUEST_OK = 1;
    private static final int WARNING = 2;
    private String id = "";
    private String isSystem = "0";
    private int position;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_appointment_item_detail;
    }

    @Override
    protected void initData() {
        tvTitle.setText("随心约详情");
        ivRightTitleBar.setImageResource(R.drawable.share);
        id = getIntent().getStringExtra("id");
        position = getIntent().getIntExtra("position",-1);

        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                isSystem = infoBean.getData().getIs_system();
            }
        });

        OkHttpUtils.sendGetRequest(IConstant.USERDATE, getMap(), new OkHttpUtils.OnResultListener() {

            @Override
            public void onSuccess(String result) {
                try {
                    String data = new JSONObject(result).getString("data");

                    JLog.e(data);
                    itemData = GsonTools.changeGsonToBean(data, new AppointBean.DataBean.DataListBean().getClass());
                    myHandler.sendEmptyMessage(REQUEST_OK);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put("id",id);
        return map;
    }

    @OnClick({R.id.iv_right_title_bar,R.id.iv_avctor,R.id.rel_chatting})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.iv_right_title_bar:
                if(itemData == null) return;
                alertDialog();
                break;
            case R.id.iv_avctor:
                if(itemData == null) return;
                Intent intent = new Intent(this, InfoEditorPersonActivity.class);
                intent.putExtra(IConsName.ISCANEDIT,false);
                intent.putExtra(IConsName.USER_ID,itemData.getOrganizer().getId());
                startActivity(intent);
                break;
            case R.id.rel_chatting:
                if(itemData != null){
                    RongIM.getInstance().setCurrentUserInfo(new UserInfo(itemData.getOrganizer().getId(),itemData.getOrganizer().getNickname(), Uri.parse(itemData.getOrganizer().getAvatar())));
                    RongIM.getInstance().startPrivateChat(this,itemData.getOrganizer().getId(),itemData.getOrganizer().getNickname());
                }
                break;
        }
    }

    private void alertDialog() {
        ActionSheetDialog builder = new ActionSheetDialog(this).builder();
        if(TextUtils.equals(itemData.getOrganizer().getId(), SPUtils.getStringData(IConsName.USER_ID,"")) ||
                TextUtils.equals("1",isSystem)){
            builder.addSheetItem("删除", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                @Override
                public void onClick(int which) {
                    deleteItemAppoint();
                }
            });
        }
        if(!TextUtils.equals(itemData.getOrganizer().getId(), SPUtils.getStringData(IConsName.USER_ID,""))){
            builder.addSheetItem("举报", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                @Override
                public void onClick(int which) {
                    Intent intent = new Intent(AppointmentItemDetailActivity.this, WarningActivity.class);
                    intent.putExtra(IConsName.TYPE,"5");
                    intent.putExtra("id",itemData.getId());
                    startActivity(intent);
                }
            });
        }
        builder.show();
    }

    /**
     * 删除
     */
    private void deleteItemAppoint() {
        DialogUtils.showDialog(AppointmentItemDetailActivity.this, "确定删除随心约", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                OkHttpUtils.sendPostRequest(IConstant.DATE_DEL, getDeteleMap(), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        Intent intent = new Intent();
                        intent.putExtra("position",position);
                        setResult(RESULT_OK,intent);
                        finish();
                    }

                    @Override
                    public void onFailure(int errCode, String errMsg) {

                    }
                });
            }
        });
    }

    private Map<String, String> getDeteleMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("id",id);
        return map;
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == REQUEST_OK){
                dealWithData();
            }
        }
    };

    /**
     * 界面展示
     */
    private void dealWithData() {
        Glide.with(this).load(itemData.getOrganizer().getAvatar()).centerCrop().into(ivAvctor);
        tvName.setText(itemData.getOrganizer().getNickname());

        ivVipLevel.setVisibility(View.VISIBLE);
        switch (itemData.getOrganizer().getVip_level()){
            case "1": ivVipLevel.setImageResource(R.drawable.vip_1);break;
            case "2": ivVipLevel.setImageResource(R.drawable.vip_2);break;
            case "3": ivVipLevel.setImageResource(R.drawable.vip_3);break;
            case "4": ivVipLevel.setImageResource(R.drawable.vip_4);break;
            default: ivVipLevel.setVisibility(View.INVISIBLE);
        }

        tvAge.setVisibility(View.VISIBLE);
        if(itemData.getOrganizer().getGender() == 1){
            tvAge.setBackgroundResource(R.drawable.shape_age_male);
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_male);
            tvAge.setText(itemData.getOrganizer().getAge() + "");
        }else if(itemData.getOrganizer().getGender() == 2){
            tvAge.setBackgroundResource(R.drawable.shape_age_female);
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_female);
            tvAge.setText(itemData.getOrganizer().getAge() + "");
        }else{
            tvAge.setVisibility(View.INVISIBLE);
        }

        ivJianTou.setVisibility(View.INVISIBLE);
        relPersonInfo.setBackgroundColor(getResources().getColor(R.color.bgcolor));

        tvActiviTime.setText(TimeShowUtils.getStandardDate(itemData.getCreate_time()));

        ivItemIcon.setBackgroundResource(iconTitls[Integer.parseInt(itemData.getDate_tag_id()) - 1]);
        tvItemTitle.setText(itemData.getTitle());
        tvItemDesc.setText(itemData.getIntro());
        tvItemOrder.setText(TextUtils.equals("1",itemData.getPay_type())?"我买单":TextUtils.equals("2",itemData.getPay_type())?"求买单":"AA");
        tvItemSex.setText(TextUtils.equals("0",itemData.getSex_invite())?"不限男女":TextUtils.equals("1",itemData.getSex_invite())?"仅限男":"仅限女");

        if(itemData.getDate_pic() != null && itemData.getDate_pic().size() != 0){
            ItemPicAdapter itemPicAdapter = new ItemPicAdapter(itemData.getDate_pic(),true);
            mgvPic.setAdapter(itemPicAdapter);
            mgvPic.setOnItemClickListener(this);
        }else{
            mgvPic.setVisibility(View.GONE);
        }

        if(itemData.getSign() == null || itemData.getSign().size() == 0){
            relTag.setVisibility(View.GONE);
        }else{
            OnLineAppointPubTagAdapter onLineAppointPubTagAdapter = new OnLineAppointPubTagAdapter(itemData.getSign().toArray(new String[itemData.getSign().size()]),false);
            mgvTag.setAdapter(onLineAppointPubTagAdapter);
        }

        if(TextUtils.equals("1",itemData.getDate_tag_id())){
            ivItemBottom.setVisibility(View.INVISIBLE);
            tvItemPlace.setText(!TextUtils.isEmpty(itemData.getStart_time())?itemData.getStart_time().substring(0,10) + "出发":"不限时间");
            tvItemTime.setText(itemData.getDetail());
            ivItemTop.setImageResource(R.drawable.appoint_pub_time);
        }else{
            try {
                String name = new JSONObject(itemData.getAddress()).getString("name");
                tvItemPlace.setText(name);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            tvItemTime.setText(!TextUtils.isEmpty(itemData.getStart_time())?itemData.getStart_time().substring(0,10) + "出发":"不限时间");
        }
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        Intent intent = new Intent(this, ShowPicActivity.class);
        intent.putStringArrayListExtra("piclist", (ArrayList<String>) itemData.getDate_pic());
        intent.putExtra("position",i);
        startActivity(intent);
    }

    @Override
    protected void onDestroy() {
        myHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}

