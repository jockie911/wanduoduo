package com.wanduoduo.fragment.personability;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.widget.MyListView;

import butterknife.Bind;

/**
 * Created by jockie on 2016/7/26.
 */
public class OtherSkillsFragment extends BaseFragment{

    @Bind(R.id.mlvOtherSkill)
    MyListView myListView;
    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_other_skill,null);
    }

    @Override
    protected void initData() {
        OtherSkillAdapter adapter = new OtherSkillAdapter();
        myListView.setAdapter(adapter);
        adapter.notifyDataSetChanged();
    }

    private class OtherSkillAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return 3;
        }

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            if(null == view){
                view = View.inflate(viewGroup.getContext(),R.layout.item_other_skill,null);
            }
            return view;
        }
    }
}
