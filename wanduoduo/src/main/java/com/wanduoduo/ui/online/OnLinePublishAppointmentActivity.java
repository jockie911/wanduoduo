package com.wanduoduo.ui.online;

import android.content.Intent;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.baidu.location.BDLocation;
import com.bigkoo.pickerview.OptionsPickerView;
import com.jph.takephoto.model.TImage;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PhotoPicAdapter;
import com.wanduoduo.adapter.online.OnLineAppointPubTagAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.appoint.AppointMoiveActivity;
import com.wanduoduo.ui.info.InfoEditContentItemActivity;
import com.wanduoduo.utils.BDLocationUtils;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PhotoDialogHelper;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class OnLinePublishAppointmentActivity extends BaseActivity implements AdapterView.OnItemClickListener, TextWatcher {

    private static final int PIC_NUM_COUNT = 3;
    private static final int PIC_UPLOADER = 1;      //图片上传
    private static final int PUB_APPOINT = 2;      //发送随心约
    private static final int REQUEST_MOIVE = 4;

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.et_content)
    EditText etContent;
    @Bind(R.id.mgv_photo)
    MyGridView mgvPhoto;
    @Bind(R.id.tv_content_size)
    TextView tvContentSize;
    @Bind(R.id.mgv_tag)
    MyGridView mgvTag;
    @Bind(R.id.tv_sex_all)
    TextView tvSexAll;
    @Bind(R.id.rel_female)
    RelativeLayout relFemale;
    @Bind(R.id.rel_male)
    RelativeLayout relMale;
    @Bind(R.id.tv_buy_aa)
    TextView tvBuyAA;
    @Bind(R.id.tv_buy_me)
    TextView tvBuyMe;
    @Bind(R.id.tv_buy_they)
    TextView tvBuyThey;

    @Bind(R.id.rel_title)
    RelativeLayout relTitle;
    @Bind(R.id.ll_title_traval)
    LinearLayout llTitleTraval;

    @Bind(R.id.tv_sub_title)
    TextView tvSubTitle;
    @Bind(R.id.tv_right_jt)
    TextView tvRightJt;
    @Bind(R.id.et_title)
    EditText etTitle;
    @Bind(R.id.et_start_place)
    EditText etStartPlace;
    @Bind(R.id.et_end_place)
    EditText etEndPlace;
    @Bind(R.id.tv_movie_name)
    TextView tvMoiveName;

    @Bind(R.id.iv_num_reduce)
    ImageView ivNumReduce;
    @Bind(R.id.iv_num_add)
    ImageView ivNumAdd;
    @Bind(R.id.tv_num_day)
    TextView tvNumDay;
    @Bind(R.id.rel_days)
    RelativeLayout relDays;
    @Bind(R.id.rel_place)
    RelativeLayout relPlace;
    @Bind(R.id.tv_time)
    TextView tvTime;

    @Bind(R.id.et_place)
    EditText etPlace;
    @Bind(R.id.tv_item_select_time)
    TextView tvItemSelectTime;
    private PhotoPicAdapter adapter;
    private ArrayList<String> mResultPicPaths = new ArrayList<>();
    private List<String> picUrlLists = new ArrayList<>();
    private OnLineAppointPubTagAdapter onLineAppointPubTagAdapter;
    private int[] resArrsys = {R.array.appoint_traval,R.array.appoint_eat,R.array.appoint_movie,
            R.array.appoint_sing,R.array.appoint_run,R.array.appoint_other};
    private int type;
    private String[] mTitles = {"吃饭","电影名字","唱歌","运动","其他"};
    private int[] mTitleIcons = {R.drawable.appoint_pub__eat,R.drawable.appoint_pub__movie,R.drawable.appoint_pub_sing,
    R.drawable.appoint_pub_run,R.drawable.appoint_pub_other};
    private int gender; //选择性别
    private int payOder = 1; //买单 AA - 我买单
    private String runTitle = "";
    private List<String> picLists = new ArrayList<>();
    private double lat;
    private double lng;
    private String starttime; //时间戳
    private PhotoDialogHelper photoDialogHelper;
    private OptionsPickerView pickerView;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_on_line_publish_appointment;
    }


    @Override
    protected void initData() {
        tvTitle.setText("发布随心约");
        tvRightTitleBar.setText("发布");
        tvRightTitleBar.setTextColor(getResources().getColor(R.color.c_129_143_255));

        type = getIntent().getIntExtra(IConsName.TYPE,-1);

        etContent.addTextChangedListener(this);

        initHeadTile();
        sex(0);
        sort(1);
        initPhoto();
        initTag();
        BDLocationUtils.start(new BDLocationUtils.LocationSuccessListener() {
            @Override
            public void onLocationSuccess(BDLocation location) {
                lat = location.getLatitude();
                lng = location.getLongitude();
            }
        });

        if(type == 1|| type == 3 || type == 5)
            tvMoiveName.setVisibility(View.INVISIBLE);
    }

    /**
     * 不同类型的发布活动  进入的主题不一样
     */
    private void initHeadTile() {
        if(type == 0){
            relTitle.setVisibility(View.GONE);
            llTitleTraval.setVisibility(View.VISIBLE);
            relPlace.setVisibility(View.GONE);
            tvTime.setText("出发时间");
            relDays.setVisibility(View.VISIBLE);
        }else{
            tvSubTitle.setText(mTitles[type - 1]);
            TvDrawableUtils.setTvDrawableLeft(tvSubTitle,R.color.c_208_210_211,mTitleIcons[type - 1]);

            if(type ==  4){
                tvRightJt.setVisibility(View.VISIBLE);
            }

            if (/*type == 2 || */type == 5){
                etTitle.setVisibility(View.VISIBLE);
                etTitle.setHint(type == 2?"请输入电影名称":"请出入邀约主题");
            }
        }
    }

    private String[] getResource(int position){
        return getResources().getStringArray(resArrsys[position]);
    }

    private void initTag() {
        onLineAppointPubTagAdapter = new OnLineAppointPubTagAdapter(getResource(type));
        mgvTag.setAdapter(onLineAppointPubTagAdapter);
    }

    private void initPhoto() {
        mgvPhoto.setNumColumns(3);
        adapter = new PhotoPicAdapter(null, PIC_NUM_COUNT, 3, new PhotoPicAdapter.OnDeleteListen() {
            @Override
            public void onDelete(int deletePosition, boolean... isDeleteFromNet) {
                mResultPicPaths.remove(deletePosition);
            }
        });
        mgvPhoto.setAdapter(adapter);
        mgvPhoto.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        if (mResultPicPaths.size() < adapter.getCount() && i == adapter.getCount() - 1) {
            if(photoDialogHelper == null)
                photoDialogHelper = new PhotoDialogHelper(OnLinePublishAppointmentActivity.this);
            photoDialogHelper.setMaxPicCount(PIC_NUM_COUNT - mResultPicPaths.size()).show();
        }else{
            Intent intent = new Intent(OnLinePublishAppointmentActivity.this, ShowPicActivity.class);
            intent.putStringArrayListExtra("bimp",mResultPicPaths);
            intent.putExtra("kind",1);
            intent.putExtra("position",i);
            OnLinePublishAppointmentActivity.this.startActivity(intent);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (data != null) {
            switch (requestCode) {
                case IConstant.PHOTO_PIC_REQUEST_CODE:
                    if(data != null && data.getBooleanExtra(IConsName.SUCCESS,false)){
                        ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
                        for (TImage image : images) {
                            mResultPicPaths.add(image.getPath());
                        }
                        adapter.addLocalPics(mResultPicPaths);
                    }
                    break;
                case IConsName.REL_CAREER:
                    runTitle = data.getStringExtra("career");
                    tvRightJt.setText(runTitle);
                    break;
                case REQUEST_MOIVE:
                    String moive = data.getStringExtra("moive");
                    tvMoiveName.setText(TextUtils.isEmpty(moive)?"":moive);
                    break;
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        if(charSequence != null)
            tvContentSize.setText(charSequence.length() + "/200");
    }

    @Override
    public void afterTextChanged(Editable editable) {

    }

    @OnClick({R.id.rel_title, R.id.tv_sex_all, R.id.rel_male, R.id.rel_female, R.id.tv_buy_me, R.id.tv_buy_they,R.id.tv_buy_aa, R.id.tv_right_title_bar,
    R.id.iv_num_reduce,R.id.iv_num_add,R.id.rel_time})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_title:
                if (type == 4) {
                    Intent intent = new Intent(this, InfoEditContentItemActivity.class);
                    intent.putExtra(IConsName.TYPE, IConsName.REL_CAREER);
                    if (!TextUtils.isEmpty(runTitle))
                        intent.putExtra("content", runTitle);
                    intent.putExtra("isFromRun", true);
                    startActivityForResult(intent, IConsName.REL_CAREER);
                }else if(type == 2){
                    Intent intent = new Intent(this, AppointMoiveActivity.class);
                    startActivityForResult(intent,REQUEST_MOIVE);
                }
                break;
            case R.id.tv_sex_all:
                sex(0);
                break;
            case R.id.rel_male:
                sex(1);
                break;
            case R.id.rel_female:
                sex(2);
                break;
            case R.id.tv_buy_me:
                sort(1);
                break;
            case R.id.tv_buy_they:
                sort(2);
                break;
            case R.id.tv_buy_aa:
                sort(3);
                break;
            case R.id.tv_right_title_bar:
                if (isReady()){
                    DialogUtils.loading(this,"正在发布随心约");
                    if(mResultPicPaths.size() == 0){
                        myHandler.sendEmptyMessage(PIC_UPLOADER);
                    }else{
                        OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD, mResultPicPaths, new MyOnResultListener(PIC_UPLOADER));
                    }
                }
                break;
            case R.id.iv_num_reduce:
                setCount(false);
                break;
            case R.id.iv_num_add:
                setCount(true);
                break;
            case R.id.rel_time:
                setPicker();
                break;
        }
    }

    private void setIvRes(ImageView iv,int resID){
        iv.setImageResource(resID);
    }

    private int getCount(){
        return Integer.parseInt(tvNumDay.getText().toString());
    }

    private void setCount(boolean isAdd){
        int i = getCount();
        if(i > 1 || isAdd)
            tvNumDay.setText(isAdd?(i + 1) + "":(i - 1) + "");
        if(getCount() == 1){
            setIvRes(ivNumReduce,R.drawable.appoint_pub_reduce_normal);
        }else{
            setIvRes(ivNumReduce,R.drawable.appoint_pub_reduce_selected);
        }
    }

    private void sex(int position) {
        tvSexAll.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        relMale.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        relFemale.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        if (position == 0) {
            tvSexAll.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        } else if (position == 1) {
            relMale.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        } else if (position == 2) {
            relFemale.setBackgroundResource(R.drawable.shape_red_red_red);
        }
        gender = position;
    }

    private void sort(int position) {
        tvBuyMe.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        tvBuyThey.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        tvBuyAA.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        if (position == 1) {
            tvBuyMe.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        } else if(position == 2){
            tvBuyThey.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        }else if(position == 3){
            tvBuyAA.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        }
        payOder = position;
    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put("date_tag_id",(type + 1) + "");
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("intro",etContent.getText().toString().trim());
        map.put("pay_type",payOder + "");  //1 我付 2他付 3AA
        map.put("title",getSubTitle());
        map.put("sex_invite",gender + "");

        String selectTag = onLineAppointPubTagAdapter.getSelectTag();
        if(!TextUtils.isEmpty(selectTag))
            map.put("sign",selectTag);
        map.put("lat",lat + "");
        map.put("lng",lng + "");
//        map.put("start_time",getSdfTime());
        map.put("start_time",starttime);

        try {
            JSONObject obj = new JSONObject();
            if(type == 0){
                map.put("detail","行程预计" + getCount()+ "天");
                obj.put("name",etEndPlace.getText().toString());
            }else{
                obj.put("name",etPlace.getText().toString());
            }
            map.put("address",obj.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
//        map.put("id","")  //如果传则是修该
        return map;
    }

    private String getSdfTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(starttime);
    }

    private String getSubTitle(){
        String title = "";
        switch (type){
            case 0:
                title = etStartPlace.getText().toString() + "-" + etEndPlace.getText().toString();
                break;
            case 1:
                title = "约人吃饭";
                break;
            case 2:
                title = "约人看" +  tvMoiveName.getText().toString() + "电影";
                break;
            case 3:
                title = "约人唱歌";
                break;
            case 4:
                title = "约人" + runTitle;
                break;
            case 5:
                title = etTitle.getText().toString();
                break;
        }
        return title;
    }

    public boolean isReady() {
        if(type == 0){
            if(isEmpty(etStartPlace.getText().toString())) return toast("出发地不能为空");
            if(isEmpty(etEndPlace.getText().toString())) return toast("目的地不能为空");
            if(isEmpty(etPlace.getText().toString()) && type != 0) return toast("随心约地点不能为空");
        }else if(/*type == 2 || */type == 5){
            if(isEmpty(etTitle.getText().toString())) return toast(type == 2?"请输入电影名称":"请输入邀约主题");
        }else if(type == 4){
            if(isEmpty(runTitle)) return toast("请输入运动类型");
        }else if(type == 2){
            if(TextUtils.isEmpty(tvMoiveName.getText().toString())) return toast("请选择一部电影");
        }
        if(TextUtils.isEmpty(starttime)) return toast("请选择时间");
        if(isEmpty(etContent.getText().toString())) return toast("请写一点心得");
        return true;
    }

    private boolean isEmpty(String txt){
        return TextUtils.isEmpty(txt);
    }

    private boolean toast(String toastMsg){
        ToastUtils.makeToast(toastMsg);
        return false;
    }

    /**
     * MyOnResultListener
     */
    private class MyOnResultListener implements OkHttpUtils.OnResultListener {

        private int position;
        public MyOnResultListener(int position) {
            this.position = position;
        }

        @Override
        public void onSuccess(String result) {
            if(position == PIC_UPLOADER){
                try {
                    String pics = new JSONObject(result).getJSONObject("data").getString("path");
                    JSONArray jsonArray = new JSONArray(pics);
                    for (int i = 0;i < jsonArray.length();i++){
                        picLists.add(jsonArray.getString(i));
                    }
                    myHandler.sendEmptyMessage(PIC_UPLOADER);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }else if(position == PUB_APPOINT){
               myHandler.sendEmptyMessage(PUB_APPOINT);
            }
            JLog.e("onSuccess " + result);
        }

        @Override
        public void onFailure(int errCode, String errMsg) {
        }
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == PIC_UPLOADER){
                sendPubAppoint();
            }else if(msg.what == PUB_APPOINT){
                DialogUtils.loadingDismiss();
                toast("发布成功");
                finish();
            }
        }
    };

    /**
     * 发布随心约
     */
    private void sendPubAppoint() {
        OkHttpUtils.sendPostRequest(IConstant.DATE_PUB, getMap(),picLists,"date_pic", new MyOnResultListener(PUB_APPOINT));
    }

    /**
     * 选择时间
     */
    private void setPicker(){
        if(pickerDataLists.isEmpty())
            setPickerData();
        pickerView = new OptionsPickerView(OnLinePublishAppointmentActivity.this);

//        pickerView.setCyclic(false);
        pickerView.setCancelable(true);
        pickerView.setPicker(pickerDataLists);
        pickerView.setOnoptionsSelectListener(new OptionsPickerView.OnOptionsSelectListener() {
            @Override
            public void onOptionsSelect(int options1, int option2, int options3) {
                starttime = pickerDataLists.get(options1);
                tvItemSelectTime.setText("已设置");
            }
        });
        pickerView.show();
    }

    private ArrayList<String> pickerDataLists = new ArrayList<>();
    private void setPickerData(){
        pickerDataLists.add("不限时间");
        pickerDataLists.add("仅限周末");

        getFollowData();
    }

    private void getFollowData(){
        for (int i = 0; i < 30; i++) {
            Date date=new Date();//取时间
            Calendar calendar = new GregorianCalendar();
            calendar.setTime(date);
            calendar.add(Calendar.DATE,i);
            date=calendar.getTime();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            pickerDataLists.add(sdf.format(date));
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && pickerView!= null && pickerView.isShowing()){
            pickerView.dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
