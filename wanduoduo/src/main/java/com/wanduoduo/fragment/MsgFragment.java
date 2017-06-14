package com.wanduoduo.fragment;

import android.net.Uri;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.SPUtils;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.fragment.ConversationListFragment;
import io.rong.imlib.model.Conversation;

public class MsgFragment extends BaseFragment {

    @Bind(R.id.tv_title)
    TextView tvTitle;
    @Bind(R.id.iv_left_title_bar)
    ImageView ivLeftTitleBar;

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_msg,null);
    }

    @Override
    protected void initData() {

        tvTitle.setText("消息");
//        ivLeftTitleBar.setVisibility(View.INVISIBLE);
        JLog.e(SPUtils.getStringData("token",""));

        ConversationListFragment fragment = new ConversationListFragment();
        Uri uri = Uri.parse("rong://" + getActivity().getApplicationInfo().packageName).buildUpon()
                .appendPath("conversationlist")
                .appendQueryParameter(Conversation.ConversationType.PRIVATE.getName(), "false") //设置私聊会话非聚合显示
//                .appendQueryParameter(Conversation.ConversationType.GROUP.getName(), "false")//设置群组会话聚合显示
//                .appendQueryParameter(Conversation.ConversationType.DISCUSSION.getName(), "false")//设置讨论组会话非聚合显示
                .appendQueryParameter(Conversation.ConversationType.SYSTEM.getName(), "false")
                .appendQueryParameter(Conversation.ConversationType.CUSTOMER_SERVICE.getName(), "false")
                .build();
        fragment.setUri(uri);

        FragmentTransaction transaction = getActivity().getSupportFragmentManager().beginTransaction();
        transaction.replace(R.id.rong_content, fragment);
        transaction.commit();
    }

    @OnClick({R.id.iv_left_title_bar})
    public void onClick(View v){
        getActivity().finish();
    }
}
