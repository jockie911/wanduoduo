package com.wanduoduo.adapter.info;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;

import java.util.ArrayList;

/**
 * Created by jockie on 2016/8/23.
 */
public class InfoQuestionAdapter extends MyBaseAdapter<String>{

    public InfoQuestionAdapter(ArrayList<String> stringArray) {
        if(stringArray != null){
            mData.addAll(stringArray);
        }
        notifyDataSetChanged();
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if(view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_question,null);
        TextView tvQuestion = (TextView) view.findViewById(R.id.tv_question);
        tvQuestion.setText(mData.get(i));
        return view;
    }
}
