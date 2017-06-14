package com.wanduoduo.fragment.online;

import android.app.Dialog;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.adapter.online.OnLineAppointmentHZLVAdapter;
import com.wanduoduo.adapter.online.OnLinePopPubAppointAdapter;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.bean.OnLineSelectBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.ui.online.OnLineChooseActivity;
import com.wanduoduo.ui.online.OnLinePublishAppointmentActivity;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.utils.WddHelper;
import com.wanduoduo.widget.HorizontalListView;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/10/10.
 */
public class AppointmentFragment extends BaseFragment implements AdapterView.OnItemClickListener {
    @Bind(R.id.iv_publish_appointment)
    ImageView iv;
    @Bind(R.id.hzlv)
    HorizontalListView hzlv;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.tv_title)
    TextView tvTitle;
    @Bind(R.id.iv_left_title_bar)
    ImageView ivLeftTitleBar;
//    @Bind(R.id.vp)
//    ViewPager vp;
    private static final int PUBLISH_APPOINTMENT = 1;
    private OnLinePopPubAppointAdapter onLinePopPubAppointAdapter;
    private static final int ON_LINE_CHOOSE = 1;
    private List<OnLineSelectBean> selectedBeanLists;
    private Dialog dialog;
    private GridView gvPuv;

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_online_appointment,null);
    }

    @Override
    protected void initData() {
        ivLeftTitleBar.setVisibility(View.INVISIBLE);
        tvTitle.setText("随心约");
        tvRightTitleBar.setText("筛选");

//         随心约筛选
        dealWithFragment();
        getSelectedBeanLists();
        setHzlv();


//        VpTableAdapter vpTableAdapter = new VpTableAdapter(getChildFragmentManager(),mFragment,null,null);
//        vp.setAdapter(vpTableAdapter);
    }

    private void getSelectedBeanLists(){
        selectedBeanLists = new ArrayList<>();
        for(int i = 0;i < mFragment.size();i++){
            OnLineSelectBean ob = new OnLineSelectBean();
            ob.setOrder(2);
            selectedBeanLists.add(ob);
        }
    }

    private void setHzlv() {
        final OnLineAppointmentHZLVAdapter onLineAppointmentHZLVAdapter = new OnLineAppointmentHZLVAdapter();
        hzlv.setAdapter(onLineAppointmentHZLVAdapter);
        hzlv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                onLineAppointmentHZLVAdapter.setSelectedPostion(i);
                //TODO here refresh the data
                beforeSelectedPosition = currentSelectedPosition;
                currentSelectedPosition = i;
                dealWithFragment();
            }
        });
    }

    @OnClick({R.id.tv_right_title_bar,R.id.iv_publish_appointment})
    public void onClick(View view){
        if(view.getId() == R.id.tv_right_title_bar){
            Intent intent = new Intent(mContext, OnLineChooseActivity.class);
            intent.putExtra("onLineSelectBean",selectedBeanLists.get(currentSelectedPosition));
            intent.putExtra(IConsName.TYPE,1);
            startActivityForResult(intent,ON_LINE_CHOOSE);
        }else if(view.getId() == R.id.iv_publish_appointment){
            dialog = new Dialog(getActivity(), R.style.AlertDialogStyle);
            View v = View.inflate(getActivity(), R.layout.pop_online_appointment, null);
            dialog.setCancelable(true);
            dialog.setContentView(v);
            gvPuv = (GridView) v.findViewById(R.id.gv_pub_appoint);
            if(onLinePopPubAppointAdapter == null)
                onLinePopPubAppointAdapter = new OnLinePopPubAppointAdapter();
            gvPuv.setAdapter(onLinePopPubAppointAdapter);
            gvPuv.setOnItemClickListener(this);
            dialog.show();
        }
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long l) {
        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                if(WddHelper.isUploadAvatar(infoBean.getData().getAvatar())){
                    Intent intent = new Intent(mContext,OnLinePublishAppointmentActivity.class);
                    intent.putExtra(IConsName.TYPE,i);
                    startActivityForResult(intent,PUBLISH_APPOINTMENT);
                }else{
                    new com.wanduoduo.utils.AlertDialog(getActivity()).builder()
                            .setMsg("亲，完善头像才能发布随心约哦~快去上传真人头像吧！")
                            .setPositiveButton("知道了", new View.OnClickListener() {
                                @Override
                                public void onClick(View v) {

                                }
                            }).show();
                }
            }
        });
        if(dialog != null && dialog.isShowing())
            dialog.dismiss();
    }

    @Override
    protected List<Fragment> getFragment() {
        mFragment.add(new AppointmentItemFragment(0));
        mFragment.add(new AppointmentItemFragment(1));
        mFragment.add(new AppointmentItemFragment(2));
        mFragment.add(new AppointmentItemFragment(3));
        mFragment.add(new AppointmentItemFragment(4));
        mFragment.add(new AppointmentItemFragment(5));
        mFragment.add(new AppointmentItemFragment(6));
        return super.getFragment();
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == ON_LINE_CHOOSE && data != null){
            selectedBeanLists.set(currentSelectedPosition,(OnLineSelectBean) data.getParcelableExtra("onLineSelectBean"));
            AppointmentItemFragment fragment = (AppointmentItemFragment) mFragment.get(currentSelectedPosition);
//            fragment.setSortResult(selectedBeanLists.get(currentSelectedPosition));
            JLog.e(data.getParcelableExtra("onLineSelectBean").toString());
            fragment.setSortResult((OnLineSelectBean) data.getParcelableExtra("onLineSelectBean"));
        }
        super.onActivityResult(requestCode, resultCode, data);
    }
}
