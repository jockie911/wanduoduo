package com.wanduoduo.fragment;

import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.cjj.MaterialRefreshLayout;
import com.cjj.MaterialRefreshListener;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.bean.OnLineSelectBean;
import com.wanduoduo.fragment.online.OnLineChooseFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoVipActivity;
import com.wanduoduo.ui.online.OnLineChooseActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.utils.WddHelper;
import com.wanduoduo.widget.MyHandler;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class OnLineFragment extends BaseFragment {

    private static final int ON_LINE_CHOOSE = 1;
    private static final int ROCKET_SUCCESS = 2;
    private static final int ROCKET_ERR = 3;
    private static final int HIDE = 4;

    private static final int REQUEST_VIP = 1;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.iv_left_title_bar)
    ImageView ivLeftTitleBar;
    @Bind(R.id.tv_title)
    TextView tvTitle;
    @Bind(R.id.ll_ivs)
    LinearLayout llIvs;
    @Bind(R.id.refreshlayout)
    MaterialRefreshLayout refreshLayout;
    @Bind(R.id.iv_invisable)
    ImageView ivInvisable;

    private OnLineChooseFragment onLineChooseFragment;
    private OnLineSelectBean onLineSelectBean;
    private boolean isHide; // 默认显示
    private int isVip = -1;  //是否是vip
    private String coin = "0";

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_on_line, null);
    }

    @Override
    protected void initData() {
        ivLeftTitleBar.setVisibility(View.INVISIBLE);
        tvTitle.setText("在线");
        tvRightTitleBar.setText("筛选");

        onLineChooseFragment = new OnLineChooseFragment();

        onLineSelectBean = new OnLineSelectBean();      // 在线筛选
        onLineSelectBean.setOrder(2);

        initRefreshListener();
        replaceFragment(onLineChooseFragment);

        myInfo();
    }

    private void myInfo() {
        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                isHide = !TextUtils.equals("0", infoBean.getData().getIs_hide());
                isVip = infoBean.getData().getIs_vip();
                coin = infoBean.getData().getCoin();
                if(isHide){
                    ivInvisable.setImageResource(R.drawable.on_line_invisable_cancle);
                }else{
                    ivInvisable.setImageResource(R.drawable.on_line_invisable);
                }
            }
        });
    }

    private void initRefreshListener() {
        onLineChooseFragment.isRefreshData = true;
        onLineChooseFragment.closeRefresh(refreshLayout);
        refreshLayout.setMaterialRefreshListener(new MaterialRefreshListener() {
            @Override
            public void onRefresh(MaterialRefreshLayout materialRefreshLayout) {
                onLineChooseFragment.page = 1;
                onLineChooseFragment.isRefreshData = true;
                onLineChooseFragment.closeRefresh(refreshLayout);
                onLineChooseFragment.sendDataRequest();
            }

            @Override
            public void onRefreshLoadMore(MaterialRefreshLayout materialRefreshLayout) {
                if(onLineChooseFragment.page < onLineChooseFragment.getTotalPage()){
                    onLineChooseFragment.page ++;
                    onLineChooseFragment.isRefreshData = false;
                    onLineChooseFragment.closeRefresh(refreshLayout);
                    onLineChooseFragment.sendDataRequest();
                }else {
                    refreshLayout.finishRefreshLoadMore();
                }
                super.onRefreshLoadMore(materialRefreshLayout);
            }
        });
    }

    @OnClick({R.id.tv_right_title_bar,R.id.iv_select,R.id.iv_up_list,R.id.iv_invisable/*,R.id.rel_left,R.id.rel_right*/})
    public void onClick(View view) {
        switch (view.getId()){
            case  R.id.tv_right_title_bar:
                Intent intent = new Intent(mContext, OnLineChooseActivity.class);
                intent.putExtra("onLineSelectBean",onLineSelectBean);
                intent.putExtra(IConsName.TYPE,currentSelectedPosition);
                startActivityForResult(intent,ON_LINE_CHOOSE);
                break;
            case R.id.iv_select:
                if(llIvs.getVisibility() == View.INVISIBLE){
                    llIvs.setVisibility(View.VISIBLE);
                }else{
                    llIvs.setVisibility(View.INVISIBLE);
                }
                break;
            case R.id.iv_up_list:       //发送火箭
                sendRocket();
                llIvs.setVisibility(View.INVISIBLE);
                break;
            case R.id.iv_invisable: //  只有vip可以隐身
                if(isVip == 0){
                    showIsJoinVip();
                    llIvs.setVisibility(View.INVISIBLE);
                }else if(isVip == 1){
                    setSelfHide();
                    llIvs.setVisibility(View.INVISIBLE);
                }else{
                    ToastUtils.makeToast("网络开小差了,请稍后。");
                }
                break;
        }
    }

    private void showIsJoinVip() {
        DialogUtils.showDialog(getActivity(), "是否成为vip", "隐身功能只有vip可以使用，随时随地想消失就消失，是否成为vip?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                Intent intent = new Intent(mContext, InfoVipActivity.class);
                intent.putExtra("coin",coin);
                startActivityForResult(intent,REQUEST_VIP);
            }
        });
    }

    /**
     * 自己是否可见
     */
    private void setSelfHide() {
        OkHttpUtils.sendPostRequest(IConstant.USER_INFO, getHideMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                myHandler.sendEmptyMessage(HIDE);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getHideMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("is_hide",isHide?"0":"1");
        return map;
    }

    /**
     * 发送火箭
     */
    private void sendRocket() {

        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                if(infoBean != null && infoBean.getData() != null && !WddHelper.isUploadAvatar(infoBean.getData().getAvatar())){
                    new com.wanduoduo.utils.AlertDialog(getActivity()).builder()
                            .setMsg("亲，完善头像才能使用火箭置顶哦~快去上传真人头像吧！")
                            .setPositiveButton("知道了", new View.OnClickListener() {
                                @Override
                                public void onClick(View v) {

                                }
                            }).show();
                }else{
                    OkHttpUtils.sendPostRequest(IConstant.USER_ROCKET, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
                        @Override
                        public void onSuccess(String result) {
                            myHandler.sendEmptyMessage(ROCKET_SUCCESS);
                        }

                        @Override
                        public void onFailure(int errCode, String errMsg) {
                            Message obtain = Message.obtain();
                            obtain.what = ROCKET_ERR;
                            obtain.obj = errMsg;
                            myHandler.sendMessage(obtain);
                        }
                    });
                }
            }
        });
    }

    MyHandler myHandler = new MyHandler(getActivity()){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == ROCKET_SUCCESS){
                ToastUtils.makeToast("已成功置顶");
                onLineChooseFragment.rocketTop();
                llIvs.setVisibility(View.INVISIBLE);
            }else if(msg.what == ROCKET_ERR){
                String errMsg = (String) msg.obj;
                ToastUtils.makeToast(errMsg);
                llIvs.setVisibility(View.INVISIBLE);
            }else if(msg.what == HIDE){
                isHide = !isHide;
                if(isHide){
                    ivInvisable.setImageResource(R.drawable.on_line_invisable_cancle);
                    onLineChooseFragment.setSelfHide();
                }else{
                    ivInvisable.setImageResource(R.drawable.on_line_invisable);
                    onLineChooseFragment.isRefreshData = true;
                    onLineChooseFragment.sendDataRequest();
                }
                llIvs.setVisibility(View.INVISIBLE);
            }
        }
    };

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == ON_LINE_CHOOSE && data != null){
            if(currentSelectedPosition == 0){
                onLineSelectBean = data.getParcelableExtra("onLineSelectBean");
                onLineChooseFragment.setSort(onLineSelectBean);
            }
        }else if(requestCode == REQUEST_VIP){
            myInfo();
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        llIvs.setVisibility(View.INVISIBLE);
        super.onHiddenChanged(hidden);
    }
}
