package com.wanduoduo.ui.info;

import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.wanduoduo.R;
import com.wanduoduo.adapter.info.InfoQuestionAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.widget.MyHandler;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;

public class InfoQuestionActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    private static final int QAREQUEST = 15;
    @Bind(R.id.lv_question)
    ListView lvQuestion;
    private ArrayList<String> questifonfLists;
    ArrayList<String> dataLists = new ArrayList<>();
    private String[] stringArray;
    private ArrayList<String> answerLists;
    private boolean isCanEdit; // true添加问题  false 邀请问题
    private String nickname = "***";

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_question;
    }

    @Override
    protected void initData() {
        isCanEdit = getIntent().getBooleanExtra("isCanEdit", false);
        if(isCanEdit){
            tvTitle.setText("选择问题");
        }else{
            tvTitle.setText("邀请回答问题");
            UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
                @Override
                public void onSuccess(InfoBean infoBean) {
                    if(nickname != null)
                        nickname = infoBean.getData().getNickname();
                }
            });

        }
        questifonfLists = getIntent().getStringArrayListExtra("questionLists");
        answerLists = getIntent().getStringArrayListExtra("answerLists");

        stringArray = getResources().getStringArray(R.array.question);
        for (int i = 0; i < stringArray.length; i++) {
            dataLists.add(stringArray[i]);
        }

        dataLists.removeAll(questifonfLists);
        InfoQuestionAdapter infoQuestionAdapter = new InfoQuestionAdapter(dataLists);
        lvQuestion.setAdapter(infoQuestionAdapter);

        lvQuestion.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long l) {
        if(isCanEdit){
            Intent intent = new Intent(this,InfoQuestionItemActivity.class);
            intent.putExtra(IConsName.TYPE,2);
            intent.putExtra("question",dataLists.get(i));
            intent.putStringArrayListExtra("questionLists",questifonfLists);
            intent.putStringArrayListExtra("answerLists",answerLists);
            startActivityForResult(intent,QAREQUEST);
        }else{
            DialogUtils.showDialog(this, "邀请回答", "确当邀请Ta回答" + dataLists.get(i), new DialogUtils.DialogIF() {
                @Override
                public void positiviButtom() {
                    invateUpLoadPic("邀请您回答" + dataLists.get(i));
                }
            });
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == QAREQUEST && data != null){
            ArrayList<String> questionLists = data.getStringArrayListExtra("questionLists");
            ArrayList<String> answerLists = data.getStringArrayListExtra("answerLists");
            Intent intent = new Intent();
            intent.putStringArrayListExtra("questionLists",questionLists);
            intent.putStringArrayListExtra("answerLists",answerLists);
            setResult(RESULT_OK,intent);
            finish();
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void invateUpLoadPic(final String invateContentn) {
        OkHttpUtils.sendPostRequest(IConstant.SEND_MESSAGE, getInvatePicMap(invateContentn), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                handler.sendEmptyMessage(0);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    MyHandler handler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ToastUtils.makeToast("邀请成功");
            finish();
        }
    };

    private Map<String, String> getInvatePicMap(String invateContentn) {
        Map<String, String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, ""));
        map.put("message", nickname + invateContentn);
        map.put(IConsName.USER_ID, getIntent().getStringExtra(IConsName.USER_ID));
        map.put("system_create_time", getSdfTime());
        return map;
    }

    private String getSdfTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH;mm:ss");
        long l = System.currentTimeMillis();
        return sdf.format(new Date(l));
    }

    @Override
    protected void onDestroy() {
        handler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
