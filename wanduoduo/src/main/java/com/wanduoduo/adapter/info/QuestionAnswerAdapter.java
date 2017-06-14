package com.wanduoduo.adapter.info;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/8/23.
 */
public class QuestionAnswerAdapter extends MyBaseAdapter{

    List<String> questionLists = new ArrayList<>();
    List<String> answerLists = new ArrayList<>();
    public void addData(List<String> questionLists, List<String> answerLists) {
        this.questionLists.clear();
        this.answerLists.clear();
        this.questionLists.addAll(questionLists);
        this.answerLists.addAll(answerLists);
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return questionLists.size();
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
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_info_edit_question_answer,null);
        TextView tvQuestion = (TextView) view.findViewById(R.id.tv_question);
        TextView tvAnswer = (TextView) view.findViewById(R.id.tv_answer);

        tvQuestion.setText("Q:  "+questionLists.get(i));
        tvAnswer.setText("A:  "+answerLists.get(i));
        return view;
    }
}
