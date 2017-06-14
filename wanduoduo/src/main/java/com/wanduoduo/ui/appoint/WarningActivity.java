package com.wanduoduo.ui.appoint;

import android.graphics.Color;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.adapter.appoint.WarningAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class WarningActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    private static final int SUCCESS = 1;
    private static final int FALUIRE = 2;
    @Bind(R.id.lv_warning)
    ListView lvWarning;
    @Bind(R.id.tv_make_sure_chong_zhi)
    TextView makeSureSubmite;

    private WarningAdapter warningAdapter;
    private int selectedPosition = -1;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_warning;
    }

    @Override
    protected void initData() {
        tvTitle.setText("举报");
        warningAdapter = new WarningAdapter();
        lvWarning.setAdapter(warningAdapter);
        warningAdapter.addData(getData(),false);
        lvWarning.setOnItemClickListener(this);
    }

    public List<String> getData() {
        List<String> list = new ArrayList<>();
        list.add("垃圾营销");
        list.add("淫秽色情");
        list.add("诽谤辱骂");
        list.add("血腥暴力");
        list.add("欺诈(酒托、话费托等骗钱行为)");
        list.add("涉毒、暴恐、违禁品等");
        return list;
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        selectedPosition = position;
        warningAdapter.setSelectedPosition(selectedPosition);
        makeSureSubmite.setClickable(true);
        makeSureSubmite.setTextColor(Color.WHITE);
        makeSureSubmite.setBackgroundResource(R.drawable.shape_moblie_tv_bg_blue);
    }

    @OnClick({R.id.tv_make_sure_chong_zhi})
    public void onClick(View view){
        if(selectedPosition < 0 || selectedPosition >= warningAdapter.getCount()) return;
        OkHttpUtils.sendPostRequest(IConstant.WARNING, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                handler.sendEmptyMessage(SUCCESS);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {
                Message obtain = Message.obtain();
                obtain.what = FALUIRE;
                obtain.obj = errMsg;
                handler.sendMessage(obtain);
            }
        });
    }

    MyHandler handler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == SUCCESS){
                ToastUtils.makeToast("举报成功！我们将尽快核实并处理");
                finish();
            }else if(msg.what == FALUIRE){
                ToastUtils.makeToast((String) msg.obj);
            }
        }
    };

//    type:1.活动举报  2.动态举报 3.评论举报 4.用户举报 5.随心约举报
    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("content",warningAdapter.getItem(selectedPosition));
        map.put("id",getIntent().getStringExtra("id"));
        map.put("type",getIntent().getStringExtra(IConsName.TYPE));
        return map;
    }
}
