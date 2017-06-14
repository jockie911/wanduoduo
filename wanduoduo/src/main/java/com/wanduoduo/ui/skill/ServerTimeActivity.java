package com.wanduoduo.ui.skill;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.wanduoduo.R;
import com.wanduoduo.adapter.ServerTimeAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.eventclass.ServerTimeEventClass;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class ServerTimeActivity extends BaseActivity {
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.root_ll_time)
    LinearLayout rootLlTime;
    @Bind(R.id.tv_week2)
    TextView tvWeek2;
    @Bind(R.id.tv_week3)
    TextView tvWeek3;
    @Bind(R.id.tv_week4)
    TextView tvWeek4;
    @Bind(R.id.tv_week5)
    TextView tvWeek5;
    @Bind(R.id.tv_week6)
    TextView tvWeek6;
    @Bind(R.id.tv_week7)
    TextView tvWeek7;
    @Bind(R.id.tv_time_1)
    TextView tvTime1;
    @Bind(R.id.tv_time_2)
    TextView tvTime2;
    @Bind(R.id.tv_time_3)
    TextView tvTime3;
    @Bind(R.id.tv_time_4)
    TextView tvTime4;
    @Bind(R.id.tv_time_5)
    TextView tvTime5;
    @Bind(R.id.tv_time_6)
    TextView tvTime6;
    @Bind(R.id.tv_time_7)
    TextView tvTime7;
    @Bind(R.id.gv_time)
    GridView gvTime;
    @Bind(R.id.cb_all)
    CheckBox cbAll;
    @Bind(R.id.cb_isrepeat)
    CheckBox cbIsrepeat;
    private int currentCBPosition;
    private ServerTimeAdapter serverTimeAdapter;
    List<Boolean> cbIsCheckedLists = new ArrayList<>();
    List<TextView> mTvTimeLists = new ArrayList<>();
    /** 所有选中的时间都保存在map集合里*/
    public Map<Integer,List<String>> mMapSelected ;
    String[] mTimes = {"08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00",
            "17:00","18:00","19:00","20:00","21:00","22:00","23:00"};
    final String dayNames[] = {"周一","周二","周三","周四","周五","周六","周日"};
    private String server_end_time;
    private boolean isOnline;

    @Override
    protected int getLayoutRes() {
        if(!EventBus.getDefault().isRegistered(this))
            EventBus.getDefault().register(this);
        return R.layout.activity_server_time;
    }

    @Override
    protected void initData() {
        tvTitle.setText("选择时间");
        tvRightTitleBar.setText("确定");

        isOnline = getIntent().getBooleanExtra("isOnline", false);
        if(isOnline){
            mTimes = new String[]{"04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00",
                    "17:00","18:00","19:00"};
        }
        initWeek();     //初始化周几
        initDate();     //初始化日期
        cbIsrepeat.setChecked(true);
        doWithServerTime();

        cbIsrepeat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                cbIsrepeat.setChecked(isChecked);
            }
        });
    }

    /**
     * 设置日期
     */
    private void initDate() {
        addDateToList();
        for (int i = 0; i < mTvTimeLists.size(); i++) {
            mTvTimeLists.get(i).setText(getDataTime(i).substring(6,8));
        }
//        tvTime2.setText(getDataTime(1).substring(6,8));
//        tvTime3.setText(getDataTime(2).substring(6,8));
//        tvTime4.setText(getDataTime(3).substring(6,8));
//        tvTime5.setText(getDataTime(4).substring(6,8));
//        tvTime6.setText(getDataTime(5).substring(6,8));
//        tvTime7.setText(getDataTime(6).substring(6,8));
    }

    private void addDateToList() {
        mTvTimeLists.add(tvTime1);
        mTvTimeLists.add(tvTime2);
        mTvTimeLists.add(tvTime3);
        mTvTimeLists.add(tvTime4);
        mTvTimeLists.add(tvTime5);
        mTvTimeLists.add(tvTime6);
        mTvTimeLists.add(tvTime7);
    }

    /**
     * 设置周几
     */
    private void initWeek() {
        int weekOfIndex = getWeekOfIndex();
        tvWeek2.setText(dayNames[weekOfIndex % dayNames.length]);
        tvWeek3.setText(dayNames[(weekOfIndex + 1) % dayNames.length]);
        tvWeek4.setText(dayNames[(weekOfIndex + 2)% dayNames.length]);
        tvWeek5.setText(dayNames[(weekOfIndex + 3)% dayNames.length]);
        tvWeek6.setText(dayNames[(weekOfIndex + 4)% dayNames.length]);
        tvWeek7.setText(dayNames[(weekOfIndex + 5)% dayNames.length]);
    }

    private String getDataTime(int laterDate){
        Date date = new Date();//取时间
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DATE,laterDate);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        return formatter.format(calendar.getTime());
    }

    public int getWeekOfIndex() {
        Calendar calendar = Calendar.getInstance();
        Date date = new Date();
        calendar.setTime(date);
        int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
        return dayOfWeek - 1;
    }

    /**
     * 选择服务时间
     */
    private void doWithServerTime() {
        serverTimeAdapter = new ServerTimeAdapter(this,isOnline);
        gvTime.setAdapter(serverTimeAdapter);

        mMapSelected = new HashMap<>();
        for (int i = 0;i < 7;i++) {
            mMapSelected.put(i, new ArrayList<String>());
            cbIsCheckedLists.add(false);
        }

        currentCBPosition = 0;
        initCBStatus();
        initTvTimeStatus(tvTime1);
        serverTimeAdapter.addData( 0, mMapSelected.get(0));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void helloEventBus(ServerTimeEventClass message){
        ArrayList<String> objects = new ArrayList<>();
        objects.addAll(serverTimeAdapter.mTimeSlectedLists);
        mMapSelected.put(serverTimeAdapter.witchClickPostiton,objects);
    }

    @OnClick({R.id.iv_left_title_bar, R.id.tv_right_title_bar,R.id.cb_all,R.id.tv_time_1,R.id.tv_time_2,R.id.tv_time_3,R.id.tv_time_4,
            R.id.tv_time_5,R.id.tv_time_6,R.id.tv_time_7,R.id.cb_isrepeat})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_left_title_bar:
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage("是否保存");
                builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        makeSureBack();
                    }
                }).setNegativeButton("取消", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        finish();
                    }
                }).create().show();
                break;
            case R.id.tv_right_title_bar:
                makeSureBack();
                break;
            /**服务者提供时间全选 */
            case R.id.cb_all:
                if(cbAll.isChecked()){
                    cbIsCheckedLists.set(currentCBPosition,true);
                    if(currentCBPosition == 0){
                        mMapSelected.put(currentCBPosition,getFirstPassListSelected());
                    }else{
                        mMapSelected.put(currentCBPosition,getFullDataSelected());
                    }
                }else{
                    cbIsCheckedLists.set(currentCBPosition,false);
                    mMapSelected.put(currentCBPosition,new ArrayList<String>());
                }
                serverTimeAdapter.addData( currentCBPosition, mMapSelected.get(currentCBPosition) );
                break;
            case R.id.tv_time_1:
                tvTimeClick(0, tvTime1);
                break;
            case R.id.tv_time_2:
                tvTimeClick(1, tvTime2);
                break;
            case R.id.tv_time_3:
                tvTimeClick(2, tvTime3);
                break;
            case R.id.tv_time_4:
                tvTimeClick(3, tvTime4);
                break;
            case R.id.tv_time_5:
                tvTimeClick(4, tvTime5);
                break;
            case R.id.tv_time_6:
                tvTimeClick(5, tvTime6);
                break;
            case R.id.tv_time_7:
                tvTimeClick(6, tvTime7);
                break;
            case R.id.cb_isrepeat:
//                cbIsrepeat.setChecked(!cbIsrepeat.isChecked());
                break;
        }
    }

    /**
     * 确认返回结果
     */
    private String server_time = "";
    private void makeSureBack() {
        List<Map.Entry<Integer, List<String>>> sortMap = new ArrayList<>(mMapSelected.entrySet());
        Collections.sort(sortMap, new Comparator<Map.Entry<Integer, List<String>>>() {
            @Override
            public int compare(Map.Entry<Integer, List<String>> t1, Map.Entry<Integer, List<String>> t2) {
               return t1.getKey().toString().compareTo(t2.getKey().toString());
            }
        });

        JsonObject jsonObject = new JsonObject();
        for(Map.Entry<Integer, List<String>> mp : mMapSelected.entrySet()){
            JsonArray jArray = new JsonArray();
            if(mp.getValue().size() != 0){
                for(String s : mp.getValue()){
                    jArray.add(Integer.parseInt(s.substring(0,2)));
                }
            }
            if(jArray.size() != 0)
                jsonObject.add(getDataTime(mp.getKey()),jArray);
        }
        server_time = jsonObject.toString();
        Intent intent = new Intent();

        for(int i = 6 ; i >= 0 ; i -- ){
            List<String> list = mMapSelected.get(i);
            if( list.size() != 0){
                Collections.sort(list, new Comparator<String>() {
                    @Override
                    public int compare(String s, String t1) {
                        return s.compareTo(t1);
                    }
                });
                String substring = list.get(list.size() - 1).substring(0,2);

                SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddhh");
                SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date = null;//提取格式中的日期
                try {
                    date = sdf1.parse(getDataTime(i) + substring);
                    server_end_time = sdf2.format(date);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                break;
            }
        }
        if(server_time.length() > 3){
            intent.putExtra("server_time",server_time);
            intent.putExtra("server_end_time",server_end_time);
        }else{
            intent.putExtra("server_time","");
        }
        intent.putExtra("isrepeat",cbIsrepeat.isChecked());
        intent.putExtra("isrepeat",true);
        setResult(RESULT_OK,intent);
        finish();
    }

    /**
     * 点击切换日期
     * @param position
     */
    private void tvTimeClick(int position, TextView tv) {
        currentCBPosition = position;
        initCBStatus();
        initTvTimeStatus(tv);
        serverTimeAdapter.addData(currentCBPosition, mMapSelected.get(currentCBPosition));
    }

    /**
     * 当天的已过期的时间过滤
     * @return
     */
    private List<String> getFirstPassListSelected() {
        int hourTime = Integer.parseInt(getCurrentHour());
        if(hourTime < getMinTime()){
            return getFullDataSelected();
        }else if(hourTime >= getMinTime() && hourTime < (getMinTime() + 15)){
            List<String> list = new ArrayList<>();
            for(int i = hourTime - (getMinTime()-1); i < mTimes.length ; i ++ ){
                list.add(mTimes[i]);
            }
            return list;
        }else{
            return new ArrayList<String>();
        }
    }

    private int getMinTime(){
        return isOnline?4:8;
    }

    private String getCurrentHour(){
        SimpleDateFormat df = new SimpleDateFormat("HH");
        return df.format(new Date());
    }

    /**
     * 点击切换日期初始化背景
     */
    private void initTvTimeStatus(TextView tv){
        for (int i = 0; i < mTvTimeLists.size(); i++) {
            mTvTimeLists.get(i).setBackgroundColor(getResources().getColor(R.color.bgcolor_deep));
            if(mMapSelected.get(i).size() == 0){
                mTvTimeLists.get(i).setTextColor(getResources().getColor(R.color.c_34_48_61));
            }else{
                mTvTimeLists.get(i).setTextColor(getResources().getColor(R.color.c_129_143_255));
            }
        }
        tv.setTextColor(getResources().getColor(R.color.white));
        tv.setBackgroundResource(R.drawable.shape_server_time_item_bg_oval);
    }

    /**
     * checkbox 根据不同的位置保存信息点击切换重新初始化状态
     */
    private void initCBStatus(){
        if(cbIsCheckedLists.get(currentCBPosition) && mMapSelected.get(currentCBPosition).size() == 16){
            cbAll.setChecked(true);
        }else{
            cbAll.setChecked(false);
        }
    }

    private List<String> getFullDataSelected(){
        List<String> fullLists = new ArrayList<>();
        for(int i = 0 ; i < mTimes.length ; i++ ){
            fullLists.add(mTimes[i]);
        }
        return fullLists;
    }

    /**
     * 点击过程中的时候随时的判断是否已经点击满了
     * @param currentCBPosition
     */
    public void setCheckFullOrNot(int currentCBPosition,boolean isFull){
        if(isFull) {
            cbIsCheckedLists.set(currentCBPosition, true);
            cbAll.setChecked(true);
        }else{
            cbIsCheckedLists.set(currentCBPosition, false);
            cbAll.setChecked(false);
        }
    }

    @Override
    protected void onDestroy() {
        if(EventBus.getDefault().isRegistered(this))
            EventBus.getDefault().unregister(this);
        super.onDestroy();
    }
}
