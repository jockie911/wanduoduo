package com.wanduoduo.ui.info;

import android.content.Intent;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoQuestionItemActivity extends BaseActivity implements TextWatcher {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.tv_question)
    TextView tvQuestion;
    @Bind(R.id.et_answer)
    EditText etAnswer;
    @Bind(R.id.tv_text_count)
    TextView tvTextCount;
    @Bind(R.id.tv_submit_answer)
    TextView tvSubmitAnswer;
    private String answer;
    private int type;
    private ArrayList<String> questifonfLists = new ArrayList<>();
    private ArrayList<String> answerLists = new ArrayList<>();
    private String question;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_question_item;
    }

    @Override
    protected void initData() {
        tvTitle.setText("我的回答");
        question = getIntent().getStringExtra("question");

        questifonfLists = getIntent().getStringArrayListExtra("questionLists");
        answerLists = getIntent().getStringArrayListExtra("answerLists");

        type = getIntent().getIntExtra(IConsName.TYPE, -1);
        if (1 == type){
            answer = getIntent().getStringExtra("answer");
            tvRightTitleBar.setText("删除");
        }else if(2 == type){
            answer = "";
        }

        etAnswer.addTextChangedListener(this);
        tvQuestion.setText(question);
        if(!TextUtils.isEmpty(answer)){
            etAnswer.setText(answer);
            etAnswer.setSelection(answer.length());
            tvTextCount.setText(answer.length() +  "/20");
        }
    }


    @OnClick({R.id.tv_right_title_bar, R.id.tv_submit_answer})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_right_title_bar:
                OkHttpUtils.sendPostRequest(IConstant.USER_INFO,getMap(false),new MyOnRefreshListen());
                break;
            case R.id.tv_submit_answer:
                OkHttpUtils.sendPostRequest(IConstant.USER_INFO,getMap(true),new MyOnRefreshListen());
                break;
        }
    }

    private Map<String, String> getMap(boolean isUpdate) {     //是更新还是删除
        if(isContain()){
            int index = questifonfLists.indexOf(question);
            questifonfLists.remove(question);
            answerLists.remove(index);
        }
        if(isUpdate){
            questifonfLists.add(question);
            answerLists.add(etAnswer.getText().toString());
        }
        String qa_list = "";
        try {
            JSONArray jsonArray = new JSONArray();
            for (int i = 0; i < questifonfLists.size(); i++) {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("q",questifonfLists.get(i));
                jsonObject.put("a",answerLists.get(i));
                jsonArray.put(jsonObject);
            }
            if(jsonArray.length() != 0){
                qa_list = jsonArray.toString();
            }else{
                qa_list = "";
            }
            JLog.e(qa_list);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConstant.QA_LIST,qa_list);
        return map;
    }

    private boolean isContain(){
        for (int i = 0; i < questifonfLists.size(); i++) {
            if(question.equals(questifonfLists.get(i)))
                return true;
        }
        return false;
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        tvTextCount.setText(charSequence.length() + "/20");
        if(!TextUtils.isEmpty(charSequence)){
            tvSubmitAnswer.setClickable(true);
            tvSubmitAnswer.setTextColor(Color.WHITE);
            tvSubmitAnswer.setBackgroundResource(R.drawable.shape_moblie_tv_bg_blue);
        }else{
            tvSubmitAnswer.setClickable(false);
            tvSubmitAnswer.setTextColor(Color.parseColor("#394471"));
            tvSubmitAnswer.setBackgroundResource(R.drawable.shape_manage_tixian_bg_normal);
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {

    }

    private class MyOnRefreshListen implements OkHttpUtils.OnResultListener{

        @Override
        public void onSuccess(String result) {
//            EventBus.getDefault().post(new ActiviEventClass());
            Intent intent = new Intent();
            intent.putStringArrayListExtra("questionLists",questifonfLists);
            intent.putStringArrayListExtra("answerLists",answerLists);
            setResult(RESULT_OK,intent);
            finish();
        }

        @Override
        public void onFailure(int errCode, String errMsg) {

        }
    }
}
