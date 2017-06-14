package com.wanduoduo;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.wanduoduo.adapter.VpTableAdapter;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.fragment.info.AlreadyBuyServiceAllFragment;

import java.util.ArrayList;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/12/19.
 */

public class TestActivity extends AppCompatActivity {

    @Bind(R.id.lv)
    ViewPager lv;
    private ArrayList<Fragment> fmLists;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.aaaaaaaaaaaaa);

        ButterKnife.bind(this);
        initData();
    }

    protected void initData() {

        fmLists = new ArrayList<>();

        boolean isOrgnazer = false;
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"4"));
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"1"));
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"2"));
        fmLists.add(new AlreadyBuyServiceAllFragment(isOrgnazer,"3"));

        VpTableAdapter vpTableAdapter = new VpTableAdapter(getSupportFragmentManager(),fmLists,new ArrayList<String>(),null);
        lv.setAdapter(vpTableAdapter);


//        TestAdapter testAdapter = new TestAdapter();
//        lv.setAdapter(testAdapter);
//        ArrayList<String> arrayList = new ArrayList<>();
//        for (int i = 0; i < 100; i++) {
//            arrayList.add(i + " -- this is line");
//        }
//        testAdapter.addData(arrayList,true);
    }

    private class TestAdapter extends MyBaseAdapter<String>{

        @Override
        public View getView(int position, View contentView, ViewGroup parent) {
            TextView textView = new TextView(parent.getContext());
            textView.setText(mData.get(position));
            return textView;
        }
    }
}
