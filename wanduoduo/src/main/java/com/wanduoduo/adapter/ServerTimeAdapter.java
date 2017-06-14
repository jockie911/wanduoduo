package com.wanduoduo.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.eventclass.ServerTimeEventClass;
import com.wanduoduo.ui.skill.ServerTimeActivity;
import org.greenrobot.eventbus.EventBus;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/1.
 */
public class ServerTimeAdapter extends BaseAdapter{

    private ServerTimeActivity serverTimeActivity;
    private boolean isOnline;
    public List<String> mTimeSlectedLists = new ArrayList<>();
    public int witchClickPostiton;
    String[] mTimes = {"08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00",
            "17:00","18:00","19:00","20:00","21:00","22:00","23:00"};

    public ServerTimeAdapter(ServerTimeActivity serverTimeActivity,boolean isOnline) {
        this.serverTimeActivity = serverTimeActivity;
        this.isOnline = isOnline;
        if(isOnline)
            mTimes = new String[]{"04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00",
                    "17:00","18:00","19:00"};
    }

    public void addData(int witchClickPostiton, List<String> strings) {
        this.witchClickPostiton = witchClickPostiton;
        mTimeSlectedLists.clear();
        if(strings != null)
            mTimeSlectedLists.addAll(strings);
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return 16;
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
    public View getView(final int i, View view, final ViewGroup viewGroup) {
        if(null == view)
            view = View.inflate(viewGroup.getContext(), R.layout.item_gv_server_time,null);
        final ViewHolder holder = ViewHolder.getHolder(view);
        holder.itemServerTime.setText(mTimes[i]);

        int hourTime = Integer.parseInt(getCurrentHousr());
        if(witchClickPostiton == 0){    // 排除过期的时间
            if(hourTime >= getMinTime() && hourTime < (getMinTime() + 15)){
                if(i <= hourTime - getMinTime()){
                    holder.itemServerTime.setTextColor(viewGroup.getResources().getColor(R.color.c_65_75_85));
                }else{
                    holder.itemServerTime.setTextColor(viewGroup.getResources().getColor(R.color.c_127_130_134));
                }
            }
        }else{
            holder.itemServerTime.setTextColor(viewGroup.getResources().getColor(R.color.c_127_130_134));
        }

        if(mTimeSlectedLists.contains(mTimes[i])){
            holder.itemServerTime.setTag(2);
            holder.itemServerTime.setBackgroundResource(R.drawable.shape_server_time_item_bg);
            holder.itemServerTime.setTextColor(viewGroup.getResources().getColor(R.color.white));
        }else{
            holder.itemServerTime.setTag(1);
//            holder.itemServerTime.setTextColor(viewGroup.getResources().getColor(R.color.c_127_130_134));
            holder.itemServerTime.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor_deep));
        }

        holder.itemServerTime.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(witchClickPostiton == 0 && i <= (Integer.parseInt(getCurrentHousr()) - getMinTime())){
                    return;
                }
                if((int)holder.itemServerTime.getTag() == 1){
                    holder.itemServerTime.setBackgroundResource(R.drawable.shape_server_time_item_bg);
                    holder.itemServerTime.setTextColor(viewGroup.getResources().getColor(R.color.white));
                    holder.itemServerTime.setTag(2);
                    mTimeSlectedLists.add(mTimes[i]);
                }else{
                    holder.itemServerTime.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor_deep));
                    holder.itemServerTime.setTextColor(viewGroup.getResources().getColor(R.color.c_127_130_134));
                    holder.itemServerTime.setTag(1);
                    mTimeSlectedLists.remove(mTimes[i]);
                }
                if(witchClickPostiton == 0){
                    int hourTime = Integer.parseInt(getCurrentHousr());
                    if(hourTime >= getMinTime() && hourTime < (getMinTime() + 15)){
                        setCleckWeatherFull(23 - hourTime);
                    }
                }else {
                    setCleckWeatherFull(16);
                }
                EventBus.getDefault().post(new ServerTimeEventClass());
            }
        });
        return view;
    }

    private int getMinTime(){
        return isOnline?4:8;
    }

    private void setCleckWeatherFull(int fullSize) {
        if(mTimeSlectedLists.size() == fullSize){
            serverTimeActivity.setCheckFullOrNot(witchClickPostiton,true);
        }else{
            serverTimeActivity.setCheckFullOrNot(witchClickPostiton,false);
        }
    }

    static class ViewHolder {
        @Bind(R.id.item_server_time)
        TextView itemServerTime;
        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
        ViewHolder(View convertView) {
            ButterKnife.bind(this, convertView);
        }
    }

    private String getCurrentHousr(){
        SimpleDateFormat df = new SimpleDateFormat("HH");
        return df.format(new Date());
    }
}
