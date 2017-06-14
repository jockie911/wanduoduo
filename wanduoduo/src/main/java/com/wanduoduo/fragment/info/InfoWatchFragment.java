package com.wanduoduo.fragment.info;

import android.support.design.widget.TabLayout;
import android.view.View;

import com.wanduoduo.R;
import com.wanduoduo.adapter.VpTableAdapter;

import java.util.ArrayList;

import butterknife.OnClick;

/**
 * Created by jockie on 2016/8/15.
 */
public class InfoWatchFragment extends InfoLikeFragment {

    @Override
    protected void initData() {
        tabTitleLists = new ArrayList<>();
        tabTitleLists.add("来访者");
        tabTitleLists.add("我看过的人");

        fmLists = new ArrayList<>();
        fmLists.add(new InfoWatchMeFrafment());
        fmLists.add(new InfoWatchTheyFragment());

        tableLayout.setTabMode(TabLayout.MODE_FIXED);
        VpTableAdapter vpTableAdapter = new VpTableAdapter(getChildFragmentManager(),fmLists,tabTitleLists,tableLayout);
        vpLove.setAdapter(vpTableAdapter);
        tableLayout.setupWithViewPager(vpLove);

        mFragment.add(new InfoWatchMeFrafment());
        mFragment.add(new InfoWatchTheyFragment());
    }

    @OnClick({R.id.iv_left_title_bar})
    public void onClick(View view){
        if(view.getId() == R.id.iv_left_title_bar){
            getActivity().finish();
        }
    }
}
