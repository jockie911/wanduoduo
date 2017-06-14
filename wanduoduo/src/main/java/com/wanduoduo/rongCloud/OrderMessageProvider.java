package com.wanduoduo.rongCloud;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.ToastUtils;

import io.rong.imkit.model.ProviderTag;
import io.rong.imkit.model.UIMessage;
import io.rong.imkit.widget.provider.IContainerItemProvider;

/**
 * Created by jockie on 2016/9/9.
 */
@ProviderTag(messageContent = OrderMessage.class,showSummaryWithName = false,showPortrait = false,showProgress = false)
public class OrderMessageProvider extends IContainerItemProvider.MessageProvider <OrderMessage>{

    class ViewHolder {
        TextView textView;
    }

    @Override
    public View newView(Context context, ViewGroup group) {
        ViewHolder holder = new ViewHolder();
        TextView textView = new TextView(context);
        holder.textView  =textView;
        textView.setTag(holder);
        return textView;
    }


    @Override
    public void bindView(View view, int i, OrderMessage messageContent, UIMessage uiMessage) {
        ViewHolder holder = (ViewHolder) view.getTag();
        holder.textView.setText(messageContent.getcontent());
    }

    @Override
    public Spannable getContentSummary(OrderMessage orderMessage) {
        return new SpannableString(orderMessage.getextra()+"");
    }

    @Override
    public void onItemClick(View view, int i, OrderMessage orderMessage, UIMessage uiMessage) {
        JLog.e("onItemClick");
        ToastUtils.makeToast(" + = + " + uiMessage.getSenderUserId());
    }

    @Override
    public void onItemLongClick(View view, int i, OrderMessage orderMessage, UIMessage uiMessage) {
        JLog.e("onItemLongClick");
    }
}
