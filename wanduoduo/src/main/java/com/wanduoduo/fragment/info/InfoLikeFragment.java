package com.wanduoduo.fragment.info;

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
import butterknife.OnClick;

/**
 * Created by jockie on 2016/8/15.
 */
public class InfoLikeFragment extends BaseFragment {
    @Bind(R.id.tablayout_love)
    protected TabLayout tableLayout;
    @Bind(R.id.vp_love)
    protected ViewPager vpLove;
    protected List<String> tabTitleLists;
    protected List<Fragment> fmLists;


    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_info_like, null);
    }

    @Override
    protected void initData() {
        tabTitleLists = new ArrayList<>();
        tabTitleLists.add("喜欢我");
        tabTitleLists.add("我喜欢");
        tabTitleLists.add("互相喜欢");

        fmLists = new ArrayList<>();
        fmLists.add(new InfoLikeTheyFragment("2"));
        fmLists.add(new InfoLikeTheyFragment("1"));
        fmLists.add(new InfoLikeBothFragment());

        tableLayout.setTabMode(TabLayout.MODE_SCROLLABLE);
        VpTableAdapter vpTableAdapter = new VpTableAdapter(getChildFragmentManager(),fmLists,tabTitleLists,tableLayout);
        vpLove.setAdapter(vpTableAdapter);
        tableLayout.setupWithViewPager(vpLove);
    }

    @OnClick({R.id.iv_left_title_bar})
    public void onClick(View view){
        if(view.getId() == R.id.iv_left_title_bar){
            getActivity().finish();
        }
    }
}
