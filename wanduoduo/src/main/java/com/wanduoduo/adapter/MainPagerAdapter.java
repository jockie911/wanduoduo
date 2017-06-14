package com.wanduoduo.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

import com.wanduoduo.base.BaseFragment;

import java.util.List;

/**
 * Created by jockie on 2016/7/19.
 */
public class MainPagerAdapter extends FragmentStatePagerAdapter{

    private final List<BaseFragment> mBaseFragmentList;

    public MainPagerAdapter(FragmentManager fm, List<BaseFragment> mBaseFragmentList) {
        super(fm);
        this.mBaseFragmentList = mBaseFragmentList;
    }

    @Override
    public Fragment getItem(int position) {
        return mBaseFragmentList.get(position);
    }

    @Override
    public int getCount() {
        return mBaseFragmentList.size();
    }
}
