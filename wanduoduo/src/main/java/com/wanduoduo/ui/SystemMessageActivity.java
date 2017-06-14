package com.wanduoduo.ui;

import android.view.View;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.info.SystemMessageFragment;

import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.Conversation;

/**
 * Created by jockie on 2016/9/9.
 */
public class SystemMessageActivity extends BaseActivity {

//    @Bind(R.id.tv_right_title_bar)
//    TextView tvRightTitleBar;
    @Override
    protected int getLayoutRes() {
        return R.layout.activity_system_message;
    }

    @Override
    protected void initData() {
        tvTitle.setText("系统消息");

//        tvRightTitleBar.setText("提醒设置");
        RongIM.getInstance().clearMessagesUnreadStatus(Conversation.ConversationType.SYSTEM,"1");
        getSupportFragmentManager().beginTransaction().replace(R.id.content_container,new SystemMessageFragment()).commit();
    }

    @OnClick({R.id.tv_right_title_bar})
    public void onClick(View view){
//        Intent intent = new Intent(this,NotifiSettingActivity.class);
//        intent.putExtra("sendid","1");
//        intent.putExtra("isSystem",true);
//        startActivity(intent);
    }
}
