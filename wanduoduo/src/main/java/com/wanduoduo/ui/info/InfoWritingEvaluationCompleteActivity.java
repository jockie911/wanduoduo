package com.wanduoduo.ui.info;

import android.content.Intent;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.widget.CircleImageView;

import butterknife.Bind;

public class InfoWritingEvaluationCompleteActivity extends BaseActivity {

    @Bind(R.id.civ_avatar)
    CircleImageView civAvatar;
    @Bind(R.id.tv_nickname)
    TextView tvNickname;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_writing_evaluation_complete;
    }

    @Override
    protected void initData() {
        tvTitle.setText("评价成功");
        Intent intent = getIntent();
        String nickname = intent.getStringExtra("nickname");
        tvNickname.setText(nickname);
        String avatar = getIntent().getStringExtra("avatar");
        Glide.with(this).load(avatar).centerCrop().into(civAvatar);
    }
}
