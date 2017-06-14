package com.wanduoduo.view;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.order.SubmitOrderActivity;
import com.wanduoduo.utils.String2ListUtlis;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.ToastUtils;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/29.
 */
public class SelectServerTimeView implements View.OnClickListener {

    private String fee;
    ImageView ivClose;
    TextView tvWeek1;
    TextView tvWeek2;
    TextView tvWeek3;
    TextView tvWeek4;
    TextView tvWeek5;
    TextView tvWeek6;
    TextView tvWeek7;
    TextView tvTime1;
    TextView tvTime2;
    TextView tvTime3;
    TextView tvTime4;
    TextView tvTime5;
    TextView tvTime6;
    TextView tvTime7;
    GridView gvTime;
    private String serverTime;  //服务者提供的时间
    private String selectedTime;    //自己选择的时间
    private boolean isOnline;   //是否是线上
    private GvAdapter gvAdapter;
    private List<TextView> timeLists = new ArrayList<>();
    private List<TextView> weekLists = new ArrayList<>();
    private List<List<String>> listList;
    private List<String> serverTimeLists = new ArrayList<>();          //选择的服务时间集合
    private TextView tvShowTime;
    private TextView tvShowTimeSelect;
    private PlayerInfoBean playerInfoBean;
    private LinearLayout llShowTime;

    public SelectServerTimeView(String serverTime, String selectedTime, String fee, boolean isOnline){
        this.serverTime = serverTime;
        this.selectedTime = selectedTime;
        this.fee = fee;
        this.isOnline = isOnline;
    }

    public View getRootView(){
        View view = View.inflate(BaseApp.getContext(), R.layout.pop_server_time, null);
        initData(view);
        return view;
    }

    private void initData(View v) {
        listList = String2ListUtlis.String2Lists(serverTime);
        fbc(v);
        initData();
    }

    private void fbc(View v) {
        tvWeek1 = (TextView) v.findViewById(R.id.tv_week1);
        tvWeek2 = (TextView) v.findViewById(R.id.tv_week2);
        tvWeek3 = (TextView) v.findViewById(R.id.tv_week3);
        tvWeek4 = (TextView) v.findViewById(R.id.tv_week4);
        tvWeek5 = (TextView) v.findViewById(R.id.tv_week5);
        tvWeek6 = (TextView) v.findViewById(R.id.tv_week6);
        tvWeek7 = (TextView) v.findViewById(R.id.tv_week7);
        addToWeekList();
        tvTime1 = (TextView) v.findViewById(R.id.tv_time_1);
        tvTime2 = (TextView) v.findViewById(R.id.tv_time_2);
        tvTime3 = (TextView) v.findViewById(R.id.tv_time_3);
        tvTime4 = (TextView) v.findViewById(R.id.tv_time_4);
        tvTime5 = (TextView) v.findViewById(R.id.tv_time_5);
        tvTime6 = (TextView) v.findViewById(R.id.tv_time_6);
        tvTime7 = (TextView) v.findViewById(R.id.tv_time_7);
        addToTimeList();
        RelativeLayout relCB = (RelativeLayout) v.findViewById(R.id.rel_cb);
        relCB.setVisibility(View.GONE);
        tvShowTime = (TextView) v.findViewById(R.id.tv_show_time);
        tvShowTimeSelect = (TextView) v.findViewById(R.id.tv_show_time_select);
        llShowTime = (LinearLayout) v.findViewById(R.id.ll_show_time);


        TextView tvMakeSureOrder = (TextView) v.findViewById(R.id.tv_make_sure_order);
        tvMakeSureOrder.setOnClickListener(this);

        gvTime = (GridView) v.findViewById(R.id.gv_time);
        ivClose = (ImageView) v.findViewById(R.id.close);
        ivClose.setOnClickListener(this);
        tvTime1.setOnClickListener(this);
        tvTime2.setOnClickListener(this);
        tvTime3.setOnClickListener(this);
        tvTime4.setOnClickListener(this);
        tvTime5.setOnClickListener(this);
        tvTime6.setOnClickListener(this);
        tvTime7.setOnClickListener(this);

        tvShowTime.setText(fee);
    }

    private void addToWeekList() {
        weekLists.add(tvWeek1);
        weekLists.add(tvWeek2);
        weekLists.add(tvWeek3);
        weekLists.add(tvWeek4);
        weekLists.add(tvWeek5);
        weekLists.add(tvWeek6);
        weekLists.add(tvWeek7);
    }

    private void addToTimeList() {
        setDefault(tvTime1);
        setDefault(tvTime2);
        setDefault(tvTime3);
        setDefault(tvTime4);
        setDefault(tvTime5);
        setDefault(tvTime6);
        setDefault(tvTime7);
    }

    private void setDefault(TextView tvTime) {
        timeLists.add(tvTime);
        tvTime.setVisibility(View.INVISIBLE);
    }

    private void initData() {
        tvTime1.setText("");
        tvWeek1.setText("");

        for (int i = 0; i < listList.size(); i++) {
            List<String> itemList = listList.get(i);
            timeLists.get(i).setVisibility(View.VISIBLE);
            String s = itemList.get(0);
            timeLists.get(i).setText(s.substring(7,9));
            itemList.remove(0);
        }

        gvAdapter = new GvAdapter(isOnline);
        gvTime.setAdapter(gvAdapter);
        setGvData(0);
    }

    private int switchPosition = 0;
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_time_1:
                setGvData(0);
                break;
            case R.id.tv_time_2:
                setGvData(1);
                break;
            case R.id.tv_time_3:
                setGvData(2);
                break;
            case R.id.tv_time_4:
                setGvData(3);
                break;
            case R.id.tv_time_5:
                setGvData(4);
                break;
            case R.id.tv_time_6:
                setGvData(5);
                break;
            case R.id.tv_time_7:
                setGvData(6);
                break;
            case R.id.cb_all:
                break;
            case R.id.close:
//                if(popupWindow != null && popupWindow.isShowing())
//                    popupWindow.dismiss();
                break;
            case R.id.tv_make_sure_order:
                if(serverTimeLists.size() == 0){
                    ToastUtils.makeToast("请选择预约时间");
                    return;
                }
                Collections.sort(serverTimeLists, new Comparator<String>() {
                    @Override
                    public int compare(String s, String t1) {
                        if(Integer.parseInt(s) - Integer.parseInt(t1) > 0){
                            return 1;
                        }else if(Integer.parseInt(s) - Integer.parseInt(t1) < 0){
                            return -1;
                        }else {
                            return 0;
                        }
                    }
                });

                Intent intent = new Intent(BaseApp.getContext(), SubmitOrderActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putExtra("playerinfobean",playerInfoBean);

                JSONArray jsonArray = new JSONArray();
                for(String s : serverTimeLists)
                    jsonArray.put((Integer.parseInt(s) + (isOnline?4:8)));
                JSONObject jsonObject = new JSONObject();
                try {
                    jsonObject.put(String2ListUtlis.String2Lists(serverTime).get(switchPosition).get(0).replace("\"",""),jsonArray);
                    intent.putExtra("time",jsonObject.toString());
                } catch (JSONException e) {
                    e.printStackTrace();
                }

                intent.putExtra("server_start_time",getStartEndTime(false));
                intent.putExtra("server_end_time",getStartEndTime(true));

                intent.putExtra("count",serverTimeLists.size() +"");
                intent.putExtra("isOnline",isOnline);
                intent.putExtra(IConsName.TYPE, IConstant.COMMUNICATE_FIRST);
                BaseApp.getContext().startActivity(intent);
                break;
        }
    }

    private String getStartEndTime(boolean max){
        String t = "";
        if(max){
            t = (Integer.parseInt(serverTimeLists.get(serverTimeLists.size() - 1)) + (isOnline?4:8)) + "";
        }else{
            t = (Integer.parseInt(serverTimeLists.get(0)) + (isOnline?4:8)) + "";
        }
        if(t.length() == 1)
            t = "0" + t;
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddhh");
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;//提取格式中的日期
        try {
            date = sdf1.parse(String2ListUtlis.String2Lists(serverTime).get(switchPosition).get(0).replace("\"","") + t);
            return sdf2.format(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return "";
    }


    private void initTvTimeStatus(TextView tv){
        for (int i = 0; i < 7; i++) {
            setTextViewBgColor(timeLists.get(i));
            setTextViewTvColor(timeLists.get(i));
        }
        tv.setTextColor(BaseApp.getContext().getResources().getColor(R.color.white));
        tv.setBackgroundResource(R.drawable.shape_server_time_item_bg_oval);
    }

    private void setTextViewTvColor(TextView tvTime) {
        tvTime.setTextColor(BaseApp.getContext().getResources().getColor(R.color.c_34_48_61));
    }

    private void setTextViewBgColor(TextView tvTime) {
        tvTime.setBackgroundColor(BaseApp.getContext().getResources().getColor(R.color.bgcolor_deep));
    }

    private void setGvData(int position) {
        initTvTimeStatus(timeLists.get(position));
        switchPosition = position;
        serverTimeLists.clear();
        gvAdapter.addData(listList.get(position));
    }

    public void setData(PlayerInfoBean playerInfoBean) {
        this.playerInfoBean = playerInfoBean;
    }


    /** -----------------------------------------------------------------------------------------------*/

    private class GvAdapter extends BaseAdapter {

        String[] mTimes = {"08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00",
                "17:00","18:00","19:00","20:00","21:00","22:00","23:00"};
        String[] mTime = {"08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
        List<String> mListSected = new ArrayList<>();

        public GvAdapter(boolean isOnline){
            initShowTime(isOnline);
        }

        private void initShowTime(boolean isOnline) {
            if(isOnline){
                mTimes = new String[]{"04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00",
                        "17:00","18:00","19:00"};
                mTime = new String[]{"04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19"};
            }
        }

        public void addData(List<String> strings) {
            initShowTime(isOnline);
            mListSected.clear();
            mListSected.addAll(strings);
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

            if(System.currentTimeMillis() - getTimeSdf(mTimes[i]) > 0){
                holder.itemServerTime.setClickable(false);
                holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.c_65_75_85));
                holder.itemServerTime.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor_deep));
            }else{
                if(!isSelectedExist(mTime[i])){
                    holder.itemServerTime.setClickable(false);
                    holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.c_65_75_85));
                    holder.itemServerTime.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor_deep));
                }else{
                    holder.itemServerTime.setClickable(true);
                    holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.c_127_130_134));
                    holder.itemServerTime.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor_deep));

                    holder.itemServerTime.setTag(0);
                    for(String s : serverTimeLists){
                        if(i == Integer.parseInt(s)){
                            holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.white));
                            holder.itemServerTime.setTag(1);
                            holder.itemServerTime.setBackgroundResource(R.drawable.shape_server_time_item_bg);
                        }else{
                            holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.c_127_130_134));
                            holder.itemServerTime.setTag(0);
                            holder.itemServerTime.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor_deep));
                        }
                    }

                    holder.itemServerTime.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            if(holder.itemServerTime.getTag() != null && (int)holder.itemServerTime.getTag() == 0){
                                holder.itemServerTime.setTag(1);
                                holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.white));
                                holder.itemServerTime.setBackgroundResource(R.drawable.shape_server_time_item_bg);
                                if(!isExist(i)){
                                    ToastUtils.makeToast("请选择连续时间");
                                    serverTimeLists.clear();
                                    serverTimeLists.add(i+"");
                                    notifyDataSetChanged();
                                }else{
                                    serverTimeLists.add(i+"");
                                }
                            }else{
                                if(isBound(i)){
                                    holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.c_127_130_134));
                                    holder.itemServerTime.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor_deep));
                                    holder.itemServerTime.setTag(0);
                                    serverTimeLists.remove(i+"");
                                }else{
                                    serverTimeLists.clear();
                                    serverTimeLists.add(i + "");
                                    holder.itemServerTime.setTag(1);
                                    holder.itemServerTime.setTextColor(viewGroup.getContext().getResources().getColor(R.color.white));
                                    holder.itemServerTime.setBackgroundResource(R.drawable.shape_server_time_item_bg);
                                    notifyDataSetChanged();
                                }
                            }
                            setSelectTime();
                        }
                    });
                }
           }
            return view;
        }

        /**
         * 判断卖家当前时间是否是卖家提供的时间
         * @param itemTime
         * @return
         */
        private boolean isSelectedExist(String itemTime){
            boolean isSelected = false;
            for (String s : mListSected) {
                if(TextUtils.equals(s.length() == 1? ("0" + s) : s,itemTime)){
                    isSelected = true;
                    break;
                }
            }
            return isSelected;
        }

        private boolean isExist(int position){
            if(serverTimeLists.size() == 0)
                return true;
            for(String s : serverTimeLists){
                if(Math.abs(Integer.parseInt(s) - position) == 1)
                    return true;
            }
            return false;
        }

        /**
         * 取消时候是否是边界，最大或者最小
         * @return
         */
        private boolean isBound(int position){
            Collections.sort(serverTimeLists, new Comparator<String>() {
                @Override
                public int compare(String t1, String t2) {
                    return Integer.parseInt(t1) - Integer.parseInt(t2);
                }
            });
            return TextUtils.equals(serverTimeLists.get(0), position + "") || TextUtils.equals(serverTimeLists.get(serverTimeLists.size() - 1), position + "");
        }
    }

    /**
     * 显示具体时间
     */
    private void setSelectTime() {
        if(serverTimeLists.size() == 0){
            llShowTime.setVisibility(View.VISIBLE);
            tvShowTimeSelect.setVisibility(View.INVISIBLE);
            tvShowTime.setText(fee);
        }else{
            llShowTime.setVisibility(View.INVISIBLE);
            tvShowTimeSelect.setVisibility(View.VISIBLE);
            JSONArray jsonArray = new JSONArray();
            for(String s : serverTimeLists)
                jsonArray.put((Integer.parseInt(s) + (isOnline?4:8)));
            JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put(String2ListUtlis.String2Lists(serverTime).get(switchPosition).get(0).replace("\"",""),jsonArray);
                tvShowTimeSelect.setText(TimeShowUtils.getTime(jsonObject.toString()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private long getTimeSdf(String hh) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd HH:mm");
        try {
            return sdf.parse(String2ListUtlis.String2Lists(serverTime).get(switchPosition).get(0).replace("\"","")+ " " + hh).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return 0;
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
}
