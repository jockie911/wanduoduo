package com.wanduoduo.fragment.managecenter;

import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;

import com.wanduoduo.R;
import com.wanduoduo.adapter.VpTableAdapter;
import com.wanduoduo.base.BaseFragment;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;

/**
 * Created by jockie on 2016/8/10.
 */
public class ManageMySkillFragment extends BaseFragment {

    @Bind(R.id.tablayout_love)
    protected TabLayout tableLayout;
    @Bind(R.id.vp_love)
    protected ViewPager vpLove;
    protected List<String> tabTitleLists;
    protected List<Fragment> fmLists;
    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_manage_my_skil,null);
    }

    @Override
    protected void initData() {
        tabTitleLists = new ArrayList<>();
        tabTitleLists.add("已通过");
        tabTitleLists.add("未通过/审核中");

        fmLists = new ArrayList<>();
        fmLists.add(new ManageMySkillYesFragment());
        fmLists.add(new ManageMySkillNoFragment());

        tableLayout.setTabMode(TabLayout.MODE_FIXED);
        VpTableAdapter vpTableAdapter = new VpTableAdapter(getChildFragmentManager(),fmLists,tabTitleLists,tableLayout);
        vpLove.setAdapter(vpTableAdapter);
        tableLayout.setupWithViewPager(vpLove);
    }
}
