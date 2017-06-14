package com.wanduoduo.fragment;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Message;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.authentication.AuthenticationBeginActivity;
import com.wanduoduo.ui.authentication.AuthenticationEditVideoActivity;
import com.wanduoduo.ui.authentication.AuthenticationSkillOrCarActivity;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.ui.info.CouponsActivity;
import com.wanduoduo.ui.info.InfoDifferentActivity;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.ui.info.InfoVipActivity;
import com.wanduoduo.ui.info.InfoVipChongZhiActivity;
import com.wanduoduo.ui.info.MsgActivity;
import com.wanduoduo.ui.info.PlayCoinActivity;
import com.wanduoduo.ui.info.SettingActivity;
import com.wanduoduo.ui.skill.PlayerSkillManageActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.CircleImageView;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.Conversation;

/**
 * Created by jockie on 2016/7/8.
 */
public class InfoFragment extends BaseFragment {

    private static final int REFRESH_INFO_FRAGMENT = 1;
    @Bind(R.id.tv_money)
    TextView tvMoney;
    @Bind(R.id.tv_coin)
    TextView tv_coin;
    @Bind(R.id.tv_conpous)
    TextView tvConpous;
    @Bind(R.id.civ_avatar)
    CircleImageView civAvatar;
    @Bind(R.id.tv_nickname)
    TextView tvNickname;
    @Bind(R.id.rel_authenttication_skill)
    RelativeLayout relAuthentticationSkill;
    @Bind(R.id.rel_authenttication_video)
    RelativeLayout relAuthentticationVideo;
    @Bind(R.id.tv_vip)
    TextView tvVip;
    @Bind(R.id.tv_skill_or_car)
    TextView tvSkillOrCar;
    @Bind(R.id.iv_skill_or_car)
    ImageView ivSkillOrCat;
    @Bind(R.id.iv_vip_level)
    ImageView ivVipLevel;
    @Bind(R.id.tv_msg_count)
    TextView tvMsgCount;
    private InfoBean infoBean;
    private boolean isVideoExist;
    private String[] vipNames = {"白银会员","黄金会员","铂金会员","钻石会员"};
    private int[] vipRes = {R.drawable.vip_1,R.drawable.vip_2,R.drawable.vip_3,R.drawable.vip_4};

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_info,null);
    }

    @Override
    protected void initData() {
        SPUtils.savaStringData(IConsName.CASH_LOGIN_INFO,"");
        if(TextUtils.isEmpty(SPUtils.getStringData(IConsName.CASH_LOGIN_INFO,""))){
            getInfoData();
        }else{
            infoBean = GsonTools.changeGsonToBean(SPUtils.getStringData(IConsName.CASH_LOGIN_INFO,""),InfoBean.class);
            myHandler.sendEmptyMessage(0);
        }
        getUnReadMsgCount();
    }

    public void getInfoData(){
        OkHttpUtils.sendGetRequest(IConstant.USER_INFO, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                SPUtils.savaStringData(IConsName.CASH_LOGIN_INFO,result);
                infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                myHandler.sendEmptyMessage(0);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    MyHandler myHandler = new MyHandler(getActivity()){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == 0 && infoBean != null && infoBean.getData()!= null){
                tv_coin.setText(infoBean.getData().getCoin());
                tvConpous.setText(infoBean.getData().getTicket_num());
                tvMoney.setText(infoBean.getData().getMoney());
                tvNickname.setText(infoBean.getData().getNickname());
                Glide.with(getActivity()).load(infoBean.getData().getAvatar()).centerCrop().into(civAvatar);
                relAuthentticationSkill.setClickable(true);
                relAuthentticationVideo.setClickable(true);

                String vip_level = infoBean.getData().getVip_level();
                int level = Integer.parseInt(vip_level);
                if (level != 0){
                    tvVip.setText(vipNames[level - 1]);
                    ivVipLevel.setBackgroundResource(vipRes[level - 1]);
                }
                isVideoExist = !TextUtils.isEmpty(infoBean.getData().getVideo());
                tvSkillOrCar.setText("技能管理");
            }else if(msg.what == 3){
                ToastUtils.makeToast("头像修改成功,等待后台审核,审核通过将会以系统通知推送给您!");
            }
        }
    };

    @OnClick({R.id.rel_setting,R.id.rel_authenttication_video,R.id.rel_authenttication_skill,R.id.ll_account_money,
    R.id.rel_play_coin,R.id.rel_coupons,R.id.info_iv_editor_person,R.id.info_rel_myserver,R.id.info_rel_like,
    R.id.info_rel_watch,R.id.civ_avatar,R.id.rel_vip,R.id.info_rel_msg,R.id.rel_share})
    public void onClick(View view){
        switch (view.getId()) {
            case R.id.rel_authenttication_video:        //视频认证
                if(isVideoExist){
                    Intent intent = new Intent(mContext, AuthenticationEditVideoActivity.class);
                    intent.putExtra(IConsName.ISCANEDIT,true);
                    try {
                        String video_url = new JSONObject(infoBean.getData().getVideo()).getString("video_url");
                        intent.putExtra("path",video_url);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    startActivityForResult(intent,REFRESH_INFO_FRAGMENT);
                }else{
                    startActivityForResult(new Intent(mContext, AuthenticationBeginActivity.class),REFRESH_INFO_FRAGMENT);
                }
                break;
            case R.id.rel_authenttication_skill:        //男生车辆认证  女生技能认证
                startActivity(new Intent(mContext, PlayerSkillManageActivity.class));
                break;
            case R.id.rel_setting:
                startActivity(new Intent(mContext, SettingActivity.class));     //设置
                break;
            case R.id.ll_account_money:
                Intent intentMoney = new Intent(mContext, InfoDifferentActivity.class);     //余额
                intentMoney.putExtra("type", IConsName.INFO_ACOUNT_MONEY);
                if(infoBean != null){
                    intentMoney.putExtra("money",infoBean.getData().getMoney());
                }
                startActivityForResult(intentMoney,REFRESH_INFO_FRAGMENT);
                break;
            case R.id.rel_play_coin:
                Intent intent1 = new Intent(mContext, PlayCoinActivity.class);
                if(infoBean != null)
                    intent1.putExtra("coin",infoBean.getData().getCoin());
                startActivityForResult(intent1,REFRESH_INFO_FRAGMENT);       //玩币
                break;
            case R.id.rel_coupons:
                startActivity(new Intent(mContext, CouponsActivity.class));     //优惠券
                break;
            case R.id.info_iv_editor_person:    //编辑个人资料
                Intent intentEditPerson = new Intent(mContext, InfoEditorPersonActivity.class);
                intentEditPerson.putExtra(IConsName.ISCANEDIT,true);
                startActivityForResult(intentEditPerson,REFRESH_INFO_FRAGMENT);
                break;
            case R.id.info_rel_myserver:    //我购买的服务
                infoJumpActivity(IConsName.INFO_ALREADY_BUY_SERVICE);
                break;
            case R.id.info_rel_like:
                infoJumpActivity(IConsName.INFO_MY_LIKE);   //喜欢的人
                break;
            case R.id.info_rel_watch:
                infoJumpActivity(IConsName.INFO_WATCH);   //谁看过我
                break;
            case R.id.civ_avatar:
                civAvatarClick();
                break;
            case R.id.rel_vip:
                if(infoBean != null){
                    if(0 == infoBean.getData().getIs_vip()){
                        Intent intent = new Intent(mContext, InfoVipActivity.class);
                        intent.putExtra("coin",infoBean.getData().getCoin());
                        startActivityForResult(intent,REFRESH_INFO_FRAGMENT);
                    }else{
                        Intent intent = new Intent(mContext, InfoVipChongZhiActivity.class);
                        intent.putExtra("coin",infoBean.getData().getCoin());
                        startActivityForResult(intent,REFRESH_INFO_FRAGMENT);
                    }
                }
                break;

            case R.id.info_rel_msg:      //消息
                startActivity(new Intent(mContext,MsgActivity.class));
//                startActivity(new Intent(mContext,TestActivity.class));
                break;
            case R.id.rel_share:
                Intent intent = new Intent(mContext, DetailWebViewActivity.class);
                intent.putExtra(IConsName.TYPE,IConsName.WEBVIEW_SHARE_SUPRISE);
                intent.putExtra("title","分享有礼");
                intent.putExtra("url","http://api.wanduoduo.cc/new/share_invite.html?id=" + SPUtils.getStringData(IConsName.USER_ID,""));
                startActivity(intent);
                break;
        }
    }

    private void civAvatarClick() {
        Intent intentAvatar = new Intent(mContext, InfoEditorPersonActivity.class);
        intentAvatar.putExtra(IConsName.ISCANEDIT,true);
        startActivityForResult(intentAvatar,REFRESH_INFO_FRAGMENT);
    }

    /**
     * 点击技能认证先认证视频
     */
    private void clickToAuthVideoDialog() {
        DialogUtils.showDialog(getActivity(), "技能认证完成前请先认证视频,否则我们将无法认定是您本人", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                startActivityForResult(new Intent(mContext, AuthenticationBeginActivity.class),REFRESH_INFO_FRAGMENT);
            }
        });
    }

    /**
     *  认证技能车辆弹出框
     */
    private void skillAuthenticationAlertDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if(infoBean.getData().getGender() == 1){
            builder.setTitle("是否修改已认证车辆");
        }else {
            builder.setTitle("是否修改已认证技能");
        }
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                skillAuthentication();
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    private void skillAuthentication() {
        Intent intent = new Intent(mContext,AuthenticationSkillOrCarActivity.class);
        intent.putExtra("type",infoBean.getData().getGender());
        startActivityForResult(intent,REFRESH_INFO_FRAGMENT);
    }

    private void infoJumpActivity(int type) {
        Intent intent = new Intent(mContext, InfoDifferentActivity.class);
        intent.putExtra("type", type);
        if(infoBean != null){
            intent.putExtra("money",infoBean.getData().getMoney());
        }
        startActivity(intent);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode){
            case REFRESH_INFO_FRAGMENT:
                getInfoData();
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void getUnReadMsgCount(){
        if(RongIM.getInstance() != null){
            RongIM.getInstance().setOnReceiveUnreadCountChangedListener(new RongIM.OnReceiveUnreadCountChangedListener() {
                @Override
                public void onMessageIncreased(int i) {
                    if(i == 0 && tvMsgCount != null){
                        tvMsgCount.setVisibility(View.INVISIBLE);
                    }else{
                        if(tvMsgCount != null){
                            tvMsgCount.setVisibility(View.VISIBLE);
                            tvMsgCount.setText(i + "");
                        }
                    }
                }
            }, Conversation.ConversationType.PRIVATE, Conversation.ConversationType.SYSTEM,Conversation.ConversationType.CUSTOMER_SERVICE);
        }
    }

    @Override
    public void onDestroy() {
        if (myHandler != null)
            myHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        if(!hidden){
            getInfoData();
        }
        super.onHiddenChanged(hidden);
    }
}
