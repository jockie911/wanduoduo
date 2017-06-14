package com.wanduoduo.fragment;

import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.baidu.location.BDLocation;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.fragment.activi.ActiviContentFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.ui.activi.ActiviPublishActivity;
import com.wanduoduo.utils.AreaNameUtils;
import com.wanduoduo.utils.BDLocationUtils;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TvDrawableUtils;

import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/9/19.
 */
public class ActiviFragment extends BaseFragment implements View.OnClickListener {

    @Bind(R.id.tv_left)
    TextView tvLeft;
    @Bind(R.id.tv_right)
    TextView tvRight;
    @Bind(R.id.v_left)
    View vLeft;
    @Bind(R.id.v_right)
    View vRight;
    @Bind(R.id.rel_left)
    RelativeLayout relLeft;

    private ActiviContentFragment allContentActviFragment;
    private ActiviContentFragment followContentActiviFragment;
    private PopupWindow popWindow;
    private String city_code = "0";

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_activi,null);
    }

    @Override
    protected void initData() {
        if(!TextUtils.isEmpty(SPUtils.getStringData(IConsName.CITY_ID,"")) && !TextUtils.equals("0",SPUtils.getStringData(IConsName.CITY_ID,""))){
            city_code = SPUtils.getStringData(IConsName.CITY_ID,"");
            allContentActviFragment.setCity_code(city_code);
            dealWithFragment();
        }else{
            BDLocationUtils.start(new BDLocationUtils.LocationSuccessListener() {
                @Override
                public void onLocationSuccess(BDLocation location) {
                    city_code = AreaNameUtils.getCityCode(location.getCity());
                    allContentActviFragment.setCity_code(city_code);
                    dealWithFragment();
                }
            });
        }
    }

    @Override
    protected List<Fragment> getFragment() {
        allContentActviFragment = new ActiviContentFragment(1);
        followContentActiviFragment = new ActiviContentFragment(2);
        mFragment.add(allContentActviFragment);
        mFragment.add(followContentActiviFragment);
        return super.getFragment();
    }

    @OnClick({R.id.iv_publish_activi,R.id.rel_left,R.id.rel_right})
    public void onClick(View view){
        if(view.getId() == R.id.iv_publish_activi){
            startActivity(new Intent(mContext,ActiviPublishActivity.class));
        }else if(view.getId() == R.id.rel_left){
            beforeSelectedPosition = currentSelectedPosition;
            if(currentSelectedPosition == 0){
                showPopWindow();
            }
            setTvColor(tvLeft);
            vLeft.setVisibility(View.VISIBLE);
            TvDrawableUtils.setTvDrawableRight(tvLeft,R.color.c_mei_hong,R.drawable.index_triangle_selected);
            currentSelectedPosition = 0;
            dealWithFragment();
        }else if(view.getId() == R.id.rel_right){
            beforeSelectedPosition = currentSelectedPosition;
            setTvColor(tvRight);
            TvDrawableUtils.setTvDrawableRight(tvLeft,R.color.c_208_208_208,R.drawable.index_triangle_normal);
            vRight.setVisibility(View.VISIBLE);
            currentSelectedPosition = 1;
            dealWithFragment();
        }else if(view.getId() == R.id.tv_my_city){
            if(TextUtils.equals("0",city_code)){
                BDLocationUtils.start(new BDLocationUtils.LocationSuccessListener() {
                    @Override
                    public void onLocationSuccess(BDLocation location) {
                        city_code = AreaNameUtils.getCityCode(location.getCity());
                        allContentActviFragment.setCity_code(city_code);
                        allContentActviFragment.setType(1);
                    }
                });
            }else{
                allContentActviFragment.setCity_code(city_code);
                allContentActviFragment.setType(1);
            }
            if(popWindow != null){
                popWindow.dismiss();
            }
            tvLeft.setText("同城");
        }else if(view.getId() == R.id.tv_all_city){
            allContentActviFragment.setType(0);
            if(popWindow != null)
                popWindow.dismiss();
            tvLeft.setText("全国");
        }
    }

    private void showPopWindow() {
        popWindow = new PopupWindow(mContext);
        setWindowAphla(0.7f);
        View view = LayoutInflater.from(mContext).inflate(R.layout.pop_activi, null);
        popWindow.setBackgroundDrawable(new BitmapDrawable());
        popWindow.setContentView(view);
        popWindow.setWidth(DensityUtil.dip2px(mContext,100));
        popWindow.setHeight(DensityUtil.dip2px(mContext,100));
        popWindow.setFocusable(true);
        TextView tvMyCity = (TextView) view.findViewById(R.id.tv_my_city);
        TextView tvAllCity = (TextView) view.findViewById(R.id.tv_all_city);
        tvMyCity.setOnClickListener(this);
        tvAllCity.setOnClickListener(this);
        popWindow.showAsDropDown(vLeft,DensityUtil.dip2px(mContext,-25),DensityUtil.dip2px(mContext,10));
        popWindow.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                setWindowAphla(1.0f);
            }
        });
    }

    private void setWindowAphla(float aphla) {
        WindowManager.LayoutParams params = getActivity().getWindow().getAttributes();
        params.alpha = aphla;
        getActivity().getWindow().setAttributes(params);
    }

    private void setTvColor(TextView tv){
        tvLeft.setTextColor(getResources().getColor(R.color.c_208_210_211));
        tvRight.setTextColor(getResources().getColor(R.color.c_208_210_211));
        vLeft.setVisibility(View.INVISIBLE);
        vRight.setVisibility(View.INVISIBLE);
        tv.setTextColor(getResources().getColor(R.color.c_mei_hong));
    }
}
