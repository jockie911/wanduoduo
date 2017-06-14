package com.wanduoduo.fragment.info;

import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;

import com.wanduoduo.R;
import com.wanduoduo.adapter.VpTableAdapter;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.eventclass.OrderTabEventClass;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;

/**
 * Created by jockie on 2016/8/9.
 */
public class AlreadyBuyServiceFragment extends BaseFragment {

    @Bind(R.id.tablayout_love)
    protected TabLayout tableLayout;
    @Bind(R.id.vp_love)
    protected ViewPager vpOrderCenter;
    protected List<String> tabTitleLists;
    protected List<Fragment> fmLists;
    protected boolean isOrgnazer = false;

    @Override
    protected View inflater(LayoutInflater inflater) {
        if(!EventBus.getDefault().isRegistered(this))
            EventBus.getDefault().register(this);
        return inflater.inflate(R.layout.fragment_manage_my_skil,null);
    }
    public AlreadyBuyServiceFragment(){}

    @Override
    protected void initData() {
        tabTitleLists = new ArrayList<>();
        tabTitleLists.add("待付款(0)");
        tabTitleLists.add("待确认(0)");
        tabTitleLists.add("进行中(0)");
        tabTitleLists.add("结束(0)");

        fmLists = new ArrayList<>();
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"4"));
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"1"));
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"2"));
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"3"));

        tableLayout.setTabMode(TabLayout.MODE_SCROLLABLE);
        VpTableAdapter vpTableAdapter = new VpTableAdapter(getChildFragmentManager(),fmLists,tabTitleLists,tableLayout);
        vpOrderCenter.setAdapter(vpTableAdapter);
        tableLayout.setupWithViewPager(vpOrderCenter);
    }

    protected void setTabCount() {
        OkHttpUtils.sendGetRequest(IConstant.ORDERLIST_TWO, MapUtils.clear().addParams("token", SPUtils.getStringData(IConsName.TOKEN, "")).addParams(IConsName.TYPE, "4").getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                try {
                    final JSONObject data = new JSONObject(result).getJSONObject("data");
                    final String order_type_4 = data.getString("order_type_4");
                    final String order_type_1 = data.getString("order_type_1");
                    final String order_type_2 = data.getString("order_type_2");
                    final String order_type_3 = data.getString("order_type_3");
                    if(getActivity() != null){
                        getActivity().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if(tableLayout != null){
                                    tableLayout.getTabAt(0).setText("待付款(" + order_type_4 +")");
                                    tableLayout.getTabAt(1).setText("待确认(" + order_type_1 +")");
                                    tableLayout.getTabAt(2).setText("进行中(" + order_type_2 +")");
                                    tableLayout.getTabAt(3).setText("结束(" + order_type_3 +")");
                                }
                            }
                        });
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void reSetTab(OrderTabEventClass eventClass){
        if(!eventClass.isOrgnazer())
            setTabCount();
    }

    @Override
    public void onDestroy() {
        if(EventBus.getDefault().isRegistered(this))
            EventBus.getDefault().unregister(this);
        super.onDestroy();
    }
}
