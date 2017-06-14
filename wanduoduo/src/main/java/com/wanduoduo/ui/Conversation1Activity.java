package com.wanduoduo.ui;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;

import butterknife.Bind;
import butterknife.OnClick;

public class Conversation1Activity extends BaseActivity {

    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;
    private String userNickName = "";
    private String user_id;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_conversation;
    }

    @Override
    protected void initData() {
        if(getIntent().getData() != null){
            user_id = getIntent().getData().getQueryParameter("targetId");
            userNickName = getIntent().getData().getQueryParameter("title");
        }
        tvTitle.setText(userNickName);

        ivRightTitleBar.setImageResource(R.drawable.share);
    }

    @OnClick({R.id.iv_right_title_bar})
    public void onClick(View view){
        Intent intent = new Intent(this,NotifiSettingActivity.class);
        intent.putExtra("sendid",user_id);
        intent.putExtra("isSystem",false);
        startActivity(intent);
    }
}
