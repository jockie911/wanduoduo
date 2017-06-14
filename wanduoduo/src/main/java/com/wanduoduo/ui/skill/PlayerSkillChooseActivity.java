package com.wanduoduo.ui.skill;

import android.content.Intent;
import android.os.Message;
import android.view.View;
import android.widget.ListView;

import com.wanduoduo.R;
import com.wanduoduo.adapter.index.PlayerSkillChooseAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.IndexTagListBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.widget.MyHandler;

import butterknife.Bind;
import butterknife.OnClick;

public class PlayerSkillChooseActivity extends BaseActivity {

    @Bind(R.id.lv_player_skill)
    ListView lvPlayerSkill;
    private static PlayerSkillChooseAdapter adapter;
    private static IndexTagListBean indexTagListBean;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_player_skill_choose;
    }

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.wan_jia_ji_neng_xuan_ze));
        adapter = new PlayerSkillChooseAdapter(this);
        lvPlayerSkill.setAdapter(adapter);
        OkHttpUtils.sendGetRequest(IConstant.TAG_LIST, null, new MyOnRefreshListen());
    }

    public boolean isStartByOthers(){
        return getIntent() != null && (getIntent().getIntExtra("type", -1) == 1);
    }

    MyHandler myHandler = new MyHandler(this) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            adapter.addData(indexTagListBean.getData().getData_list(), false);
        }
    };


    @OnClick(R.id.rel_add_other_skill)
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.rel_add_other_skill:
                Intent intent = new Intent(this, PlayerSkillPerfectionActivity.class);
                intent.putExtra("name","其他");
                intent.putExtra("tag_id",IConstant.OTHER_TAG_ID);
                intent.putExtra("tag_type","0");
                intent.putExtra("type", IConsName.SKILL_PUB);
                startActivity(intent);
                break;
        }
    }

    class MyOnRefreshListen implements OkHttpUtils.OnResultListener {

        @Override
        public void onSuccess(String result) {
            indexTagListBean = GsonTools.changeGsonToBean(result, IndexTagListBean.class);
            myHandler.sendEmptyMessage(0);
        }

        @Override
        public void onFailure(int errCode,String errMsg) {

        }
    }
}
