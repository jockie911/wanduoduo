package com.wanduoduo.fragment.personability;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.IndexGiftListBean;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.skill.PersonAbilityActivity;
import com.wanduoduo.utils.AreaNameUtils;

import java.util.List;

import butterknife.Bind;

/**
 * Created by jockie on 2016/7/26.
 */
public class ServiceInstoduceFragment extends BaseFragment{

    @Bind(R.id.tv_intro)
    TextView tvIntro;
    @Bind(R.id.tv_place)
    TextView tvPlace;
    @Bind(R.id.tv_drink)
    TextView tvDrink;
    @Bind(R.id.rel_place)
    RelativeLayout relPlace;
    private boolean isOnline;

    public ServiceInstoduceFragment(){}

    @SuppressLint("ValidFragment")
    public ServiceInstoduceFragment(boolean isOnline) {
        this.isOnline = isOnline;
    }

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_service_introduce,null);
    }

    @Override
    protected void initData() {
        IndexGiftListBean.DataBean.DataListBean itemDatas = ((PersonAbilityActivity) getActivity()).itemDatas;
        tvIntro.setText(itemDatas.getIntro());


        String is_drink = itemDatas.getIs_drink();
        if(TextUtils.equals(IConstant.DRINK_NO,is_drink)){
            tvDrink.setText("不接受饮酒");
        }else if(TextUtils.equals(IConstant.DRINK_YES,is_drink)){
            tvDrink.setText("可少量饮酒");
        }

        if(isOnline){
            relPlace.setVisibility(View.GONE);
        }else{
            String area_id = itemDatas.getArea_id();
            AreaNameUtils.getAreaNameLists(area_id, new AreaNameUtils.AreaSuccessListener() {
                @Override
                public void onAreaSuccess(String place) {
                    tvPlace.setText(place);
                }
            });
        }
    }
}
