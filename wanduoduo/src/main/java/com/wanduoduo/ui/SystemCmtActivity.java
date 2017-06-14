package com.wanduoduo.ui;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.CmtBean;
import com.wanduoduo.bean.SysOrderBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.rongCloud.CmtMessage;
import com.wanduoduo.rongCloud.OrderMessage;
import com.wanduoduo.ui.activi.ActiviItemContentActivity;
import com.wanduoduo.ui.info.InfoDifferentActivity;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.ui.skill.PlayerSkillManageItemActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.widget.CircleImageView;

import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.RongIMClient;
import io.rong.imlib.model.Conversation;
import io.rong.imlib.model.Message;

public class SystemCmtActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    @Bind(R.id.lv_msg)
    ListView lvMsg;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.tv_empty)
    TextView tvEmpty;
    private String sendId;
    private CmtAdapter cmtAdapter;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_system_cmt;
    }

    @Override
    protected void initData() {
        tvRightTitleBar.setText("提醒设置");
        sendId = getIntent().getStringExtra("sendID");
        tvTitle.setText(getIntent().getStringExtra("title"));
        RongIM.getInstance().clearMessagesUnreadStatus(Conversation.ConversationType.SYSTEM,sendId);
        getData();
    }

    private void getData() {
        if(TextUtils.equals("2",sendId) || TextUtils.equals("7",sendId)){
            cmtAdapter = new CmtAdapter();
        }else if(TextUtils.equals("4",sendId)){
            cmtAdapter = new OrderAdapter();
            lvMsg.setOnItemClickListener(this);
        }
        lvMsg.setAdapter(cmtAdapter);
        RongIM.getInstance().getRongIMClient().getHistoryMessages(Conversation.ConversationType.SYSTEM, sendId,
                -1, Integer.MAX_VALUE, new RongIMClient.ResultCallback<List<Message>>() {
            @Override
            public void onSuccess(List<Message> messages) {
                if (messages == null) {
                    tvEmpty.setVisibility(View.VISIBLE);
                } else {
                    cmtAdapter.addData(messages);
                }
            }

            @Override
            public void onError(RongIMClient.ErrorCode errorCode) {
            }
        });
    }

    @OnClick({R.id.tv_right_title_bar})
    public void onClick(View view){
        Intent intent = new Intent(this,NotifiSettingActivity.class);
        intent.putExtra("sendid",sendId);
        intent.putExtra("isSystem",true);
        startActivity(intent);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        SysOrderBean orderBean = ((OrderAdapter) cmtAdapter).getOrderBean(i);
        if(TextUtils.equals("1",orderBean.getSystem_user_type())){
            Intent intent = new Intent(this, InfoDifferentActivity.class);
            intent.putExtra("type", IConsName.INFO_ALREADY_BUY_SERVICE);
            startActivity(intent);
        }else if(TextUtils.equals("2",orderBean.getSystem_user_type())){
            Intent intent = new Intent(this, PlayerSkillManageItemActivity.class);
            intent.putExtra("type",IConsName.MANAGE_ORDER_CENTER);
            startActivity(intent);

        }
    }

    private class CmtAdapter extends BaseAdapter {
        protected List<Message> mData;

        public void addData(List<Message> messages) {
            if (messages != null) {
                mData = messages;
                notifyDataSetChanged();
            }
        }

        @Override
        public int getCount() {
            return mData == null ? 0 : mData.size();
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
        public View getView(int i, View view, final ViewGroup viewGroup) {
            if (view == null)
                view = View.inflate(viewGroup.getContext(), R.layout.item_sys_cmt, null);
            ViewHolder holder = ViewHolder.getHolder(view);
            CmtMessage cmt = (CmtMessage) mData.get(i).getContent();
            holder.relPersonInfo.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor));
            final CmtBean cmtBean = GsonTools.changeGsonToBean(cmt.getcontent(), CmtBean.class);
            Glide.with(viewGroup.getContext())
                    .load(cmtBean.getComment_user().getAvatar())
                    .centerCrop()
                    .into(holder.ivAvctor);
            holder.tvName.setText(cmtBean.getComment_user().getNickname());
            holder.ivJianTou.setVisibility(View.INVISIBLE);
            holder.tvContent.setText(cmtBean.getComment_content());
            holder.tvMsgTime.setText(TimeShowUtils.getStandardDate(cmtBean.getComment_create_time()));
            if(TextUtils.isEmpty(cmtBean.getComment_target().getHead_image())){
                holder.ivHeadPic.setVisibility(View.GONE);
            }else{
                holder.ivHeadPic.setVisibility(View.VISIBLE);
                Glide.with(viewGroup.getContext())
                        .load(cmtBean.getComment_target().getHead_image())
                        .centerCrop()
                        .into(holder.ivHeadPic);
            }
            holder.tvSelfContent.setText(cmtBean.getComment_target().getTitle());
            holder.ivAvctor.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(viewGroup.getContext(), InfoEditorPersonActivity.class);
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    intent.putExtra(IConsName.USER_ID,cmtBean.getComment_user().getId());
                    intent.putExtra(IConsName.ISCANEDIT,false);
                    viewGroup.getContext().startActivity(intent);
                }
            });
            holder.ivRep.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(viewGroup.getContext(), ActiviItemContentActivity.class);
                    intent.putExtra("position",0);
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    intent.putExtra("news_id",cmtBean.getComment_target().getId());
                    intent.putExtra("nickname",cmtBean.getComment_user().getNickname());
                    intent.putExtra("commentid",cmtBean.getComment_id());
                    startActivity(intent);
                }
            });
            holder.llContainer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(viewGroup.getContext(), ActiviItemContentActivity.class);
                    intent.putExtra("position",0);
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    intent.putExtra("news_id",cmtBean.getComment_target().getId());
                    startActivity(intent);
                }
            });
            return view;
        }
    }

    static class ViewHolder {
        @Bind(R.id.iv_avctor)
        CircleImageView ivAvctor;
        @Bind(R.id.tv_name)
        TextView tvName;
        @Bind(R.id.iv_jian_tou)
        ImageView ivJianTou;
        @Bind(R.id.tv_content)
        TextView tvContent;
        @Bind(R.id.tv_self_content)
        TextView tvSelfContent;
        @Bind(R.id.iv_head_pic)
        ImageView ivHeadPic;
        @Bind(R.id.rel_person_info)
        RelativeLayout relPersonInfo;
        @Bind(R.id.iv_rep)
        ImageView ivRep;
        @Bind(R.id.ll_container)
        LinearLayout llContainer;
        @Bind(R.id.tv_msg_time)
        TextView tvMsgTime;

        ViewHolder(View view) {
            ButterKnife.bind(this, view);
        }

        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
    }

    class OrderAdapter extends CmtAdapter {

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            if(view == null)
                view = View.inflate(viewGroup.getContext(), R.layout.item_system_message,null);
            ViewHolder1 holder = ViewHolder1.getHolder(view);

            SysOrderBean sysOrderBean = getOrderBean(i);
            holder.tvContent.setText(sysOrderBean.getSystem_content());
            holder.tvTime.setText(TimeShowUtils.getStandardDate(sysOrderBean.getSystem_create_time()));

            holder.ivUnreadDot.setVisibility(View.INVISIBLE);
            return view;
        }

        public SysOrderBean getOrderBean(int position){
            OrderMessage orderMessage = (OrderMessage) mData.get(position).getContent();
            SysOrderBean sysOrderBean = GsonTools.changeGsonToBean(orderMessage.getcontent(), SysOrderBean.class);
            return sysOrderBean;
        }
    }

    static class ViewHolder1 {
        @Bind(R.id.tv_content)
        TextView tvContent;
        @Bind(R.id.tv_time)
        TextView tvTime;
        @Bind(R.id.iv_unread_dot)
        ImageView ivUnreadDot;
        public static ViewHolder1 getHolder(View convertView) {
            ViewHolder1 holder = (ViewHolder1) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder1(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }

        ViewHolder1(View convertView) {
            ButterKnife.bind(this, convertView);
        }
    }
}
