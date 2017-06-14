package com.wanduoduo.ui.skill;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Message;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bigkoo.pickerview.OptionsPickerView;
import com.jph.takephoto.model.TImage;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PhotoPicAdapter;
import com.wanduoduo.adapter.info.SkillVideoAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.ManageServerSkillBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.MainActivity;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GiftNameUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PhotoDialogHelper;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;
import mabeijianxi.camera.MediaRecorderActivity;
import mabeijianxi.camera.model.MediaRecorderConfig;

public class PlayerSkillPerfectionActivity extends BaseActivity implements AdapterView.OnItemClickListener, OptionsPickerView.OnOptionsSelectListener {

    private static final int PIC_NUM_COUNT = 6;
    private static final int CODE_PIC = 1;
    private static final int CODE_PUB = 2;
    private static final int CODE_ERR = 3;

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.mgv_photo)
    MyGridView mgvPhoto;
    @Bind(R.id.mgv_video)
    MyGridView mgvVideo;
    @Bind(R.id.tv_kind)
    TextView tvKind;
    @Bind(R.id.tv_sub_title)
    TextView tvSubTitle;
    @Bind(R.id.tv_price)
    TextView tvPrice;
    @Bind(R.id.tv_time)
    TextView tvTime;
    @Bind(R.id.tv_place)
    TextView tvPlace;
    @Bind(R.id.tv_desc)
    TextView tvDesc;
    @Bind(R.id.tv_certificate)
    TextView tvCertificate;
    @Bind(R.id.tv_drink)
    TextView tvDrink;
    @Bind(R.id.tv_communicate)
    TextView tvCommunicate;
    @Bind(R.id.rel_time)
    RelativeLayout relTime;
    @Bind(R.id.rel_place)
    RelativeLayout relPlace;

    private PhotoPicAdapter picAdapter;
    private String tag_id;   //技能类型id
    private String title;   //标题
    private String price;   //价格
    private String desc;    //说明
    private String parentCode;  //父节点id
    private String areaId;      //区域ID
    private String server_time;     //服务时间
    private String whichWayCommunicate = IConstant.COMMUNICATE_FIRST;     //哪种沟通方式
    private OptionsPickerView drinkPicker;
    private String isCanDrink;
    private String picData;     //图片序列化
    private int type;       //判断是否是编辑技能 或者是修改技能
    private ManageServerSkillBean.DataBean.DataListBean dataListBean;
    private List<String> alreadyPicLists = new ArrayList<>();
    private ArrayList<String> mResultPicPaths = new ArrayList<>();
    private String server_end_time;
    private SkillVideoAdapter skillVideoAdapter;
    private boolean isrepeat = true;
    private PhotoDialogHelper photoDialogHelper;
    private String tag_type;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_player_skill_perfection;
    }

    @Override
    protected void initData() {
        type = getIntent().getIntExtra(IConsName.TYPE, -1);

//        tvRightTitleBar.setText(getResources().getString(R.string.shi_li));
        tvRightTitleBar.setTextColor(getResources().getColor(R.color.c_127_130_134));
//        tag_id = getIntent().getStringExtra("tag_id");

        tag_type = getIntent().getStringExtra("tag_type");
        if(type == IConsName.SKILL_PUB){        //发布新技能
            tvTitle.setText(getResources().getString(R.string.wan_shan_ji_neng_xin_xi));
            tvKind.setText(getIntent().getStringExtra("name"));

        }else if(type == IConsName.SKILL_EDIT){     //编辑修改技能
            tvTitle.setText("修改技能信息");
            dataListBean = getIntent().getParcelableExtra("datalistbean");

            GiftNameUtils.getTagName(dataListBean.getGift_tag_id(), new GiftNameUtils.OnNameCompeleListener() {
                @Override
                public void onCompelte(String name) {
                    tvKind.setText(name);
                }
            });

//            title = dataListBean.getTitle();
//            price = dataListBean.getFee();
//            whichWayCommunicate = dataListBean.getServer_time_type();
            if(dataListBean.getServer_time_type() == IConstant.COMMUNICATE_FIRST){
                relTime.setVisibility(View.VISIBLE);
                tvTime.setText("已填写");
                tvCommunicate.setText(getResources().getString(R.string.zhi_neng_an_zhao_wo_she_ding));
            }else{
                tvCommunicate.setText(getResources().getString(R.string.yu_yue_qian_xiang_wo));
            }
            tvSubTitle.setText(dataListBean.getTitle());
            tvPrice.setText(dataListBean.getFee());
            tvPlace.setText("已填写");
            tvDesc.setText("已填写");

            if("2".equals(dataListBean.getIs_drink())){
                tvDrink.setText("不接受");
            }else if("1".equals(dataListBean.getIs_drink())){
                tvDrink.setText("可少量饮酒");
            }

//            parentCode = dataListBean.getCity_code();
//            picData = dataListBean.getGift_pic();
            JSONArray jsonArray = null;
            if(!TextUtils.isEmpty(dataListBean.getGift_pic())){
                try {
                    jsonArray = new JSONArray(dataListBean.getGift_pic());
                    for (int i = 0 ; i < jsonArray.length() ; i++) {
                        alreadyPicLists.add(jsonArray.getString(i));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            String gift_video = dataListBean.getGift_video();
            if(!TextUtils.isEmpty(gift_video)){
                try {
                    JSONArray jsonArray1 = new JSONArray(gift_video);
                    for(int i = 0 ; i < jsonArray1.length();i++){
                        videoUrlLists.add(jsonArray1.getString(i));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        initPhoto();
        drinkPicker();

        initVideo();

        setWitchGiftType();
    }

    /**
     * 通过 tag_type 判断是线上还是线下
     */
    private void setWitchGiftType() {
        if(TextUtils.equals("1",tag_type)){
            relPlace.setVisibility(View.GONE);
        }else{
            relPlace.setVisibility(View.VISIBLE);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        String path = intent.getStringExtra(MediaRecorderActivity.VIDEO_URI);
        if(!TextUtils.isEmpty(path)){
            if(skillVideoAdapter != null)
                skillVideoAdapter.addData(path);
            OkHttpUtils.sendPostVideo(IConstant.VIDEO_UPLOAD, path, new OkHttpUtils.OnResultListener() {
                @Override
                public void onSuccess(String result) {
                    try {
                        JSONObject jsonObject = new JSONObject(result);
                        String videoUrl = jsonObject.getJSONObject("data").getString("path");
                        videoUrlLists.add(videoUrl);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }

                @Override
                public void onFailure(int errCode,String errMsg) {

                }
            });
        }
    }

    /**
     * 视频
     */
    List<String> videoUrlLists = new ArrayList<>();
    private void initVideo() {
        skillVideoAdapter = new SkillVideoAdapter(new SkillVideoAdapter.OnDeleteListen() {
            @Override
            public void onDelete(int position) {
                videoUrlLists.remove(position);
            }
        });

        mgvVideo.setAdapter(skillVideoAdapter);

        skillVideoAdapter.addData(videoUrlLists);

       /* mgvVideo.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                if( i == (skillVideoAdapter.getCount() - 1) && videoUrlLists.size() < 3){
                    MediaRecorderConfig config = new MediaRecorderConfig.Buidler()
                            .doH264Compress(true)
                            .smallVideoWidth(480)
                            .smallVideoHeight(480)
                            .recordTimeMax(60 * 1000)
                            .maxFrameRate(20)
                            .minFrameRate(8)
                            .captureThumbnailsTime(1)
                            .recordTimeMin((10 * 1000))
                            .build();
                    MediaRecorderActivity.goSmallVideoRecorder(PlayerSkillPerfectionActivity.this, PlayerSkillPerfectionActivity.class.getName(), config);
                }
            }
        });*/

        mgvVideo.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                if( videoUrlLists.size() == 0){
                    MediaRecorderConfig config = new MediaRecorderConfig.Buidler()
                            .doH264Compress(true)
                            .smallVideoWidth(480)
                            .smallVideoHeight(480)
                            .recordTimeMax(60 * 1000)
                            .maxFrameRate(20)
                            .minFrameRate(8)
                            .captureThumbnailsTime(1)
                            .recordTimeMin((10 * 1000))
                            .build();
                    MediaRecorderActivity.goSmallVideoRecorder(PlayerSkillPerfectionActivity.this, PlayerSkillPerfectionActivity.class.getName(), config);
                }
            }
        });
    }

    /**
     * 处理照片
     */
    private void initPhoto() {
        picAdapter = new PhotoPicAdapter(alreadyPicLists, PIC_NUM_COUNT, 2, new PhotoPicAdapter.OnDeleteListen() {
            @Override
            public void onDelete(int deletePosition, boolean... isDeleteFromNet) {
                if(isDeleteFromNet[0]){
                    alreadyPicLists.remove(deletePosition);
                }else{
                    mResultPicPaths.remove(deletePosition);
                }
            }
        });
        mgvPhoto.setAdapter(picAdapter);
        mgvPhoto.setOnItemClickListener(this);
    }

    @OnClick({R.id.tv_right_title_bar, R.id.rel_kind, R.id.rel_title, R.id.rel_price,R.id.rel_communicate,
            R.id.rel_time, R.id.rel_place, R.id.rel_desc, R.id.rel_certificate/*, R.id.rel_drink*/, R.id.tv_preview,
            R.id.tv_publish,R.id.iv_left_title_bar})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_left_title_bar:
                showDialogExit();
                break;
            case R.id.tv_right_title_bar:

                break;
            case R.id.rel_kind:     //种类
                Intent intent = new Intent(this, PlayerSkillChooseActivity.class);
                intent.putExtra("type",1);
                startActivityForResult(intent,IConstant.PERFECTION_KIND);
                break;
            case R.id.rel_title:       //标题
                setContentForResult(IConstant.PERFECTION_TITLE,title);
                break;
            case R.id.rel_price:    //价格
                setContentForResult(IConstant.PERFECTION_PRICE,price);
                break;
            case R.id.rel_communicate:      //沟通方式
                setContentForResult(IConstant.PERFECTION_COMMUNICATE,whichWayCommunicate);
                break;
            case R.id.rel_time:     //时间
                Intent intent1 = new Intent(this, ServerTimeActivity.class);
                intent1.putExtra("isOnline",TextUtils.equals("1",tag_type));    //是否是线上,选择时间区分
                startActivityForResult(intent1,IConstant.PERFECTION_TIME);
                break;
            case R.id.rel_place:       //选择的地点
                setContentForResult(IConstant.PERFECTION_PLACE,null);
                break;
            case R.id.rel_desc:     //服务说明
                setContentForResult(IConstant.PERFECTION_DESC,desc);
                break;
            case R.id.rel_certificate:      //证书
                setContentForResult(IConstant.PERFECTION_CERT,null);
                break;
           /* case R.id.rel_drink:       //是否饮酒
                if(!TextUtils.isEmpty(isCanDrink)){
                    if(IConstant.DRINK_NO.equals(isCanDrink)){
                        drinkPicker.setSelectOptions(0);
                    }else if(IConstant.DRINK_YES.equals(isCanDrink)){
                        drinkPicker.setSelectOptions(1);
                    }
                }
                drinkPicker.show();
                break;*/
            case R.id.tv_preview:       //预览

                break;
            case R.id.tv_publish:       //提交
                if(!judgeReadyPublish())
                    return;
                DialogUtils.loading(this,"正在发布技能中...");
                if(mResultPicPaths.size() != 0){
                    OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD,mResultPicPaths, new MyOnResultListener(CODE_PIC));
                }else{
                    myHandler.sendEmptyMessage(CODE_PIC);
                }
            break;
        }
    }

    /**
     * 检测数据是否填充完毕
     */
    private boolean judgeReadyPublish() {
        if(type == IConsName.SKILL_EDIT){
            if(alreadyPicLists.size() == 0 && mResultPicPaths.isEmpty())
                return toast("请上传照片");
            if(IConstant.COMMUNICATE_FIRST.equals(whichWayCommunicate)  && TextUtils.isEmpty(server_time))
                return toast("请输入时间");
            return true;
        }
        if(mResultPicPaths.size() == 0)
            return toast("请上传照片");
        if(TextUtils.isEmpty(title))
            return toast("请输入服务标题");
        if(TextUtils.isEmpty(price))
            return toast("请输入价格");
        if(TextUtils.isEmpty(whichWayCommunicate))
            return toast("请输入沟通方式");
        if(IConstant.COMMUNICATE_FIRST.equals(whichWayCommunicate)  && TextUtils.isEmpty(server_time))
            return toast("请输入时间");
        if(!TextUtils.equals("1",tag_type) && TextUtils.isEmpty(areaId))
            return toast("请填写服务区域");
        if(TextUtils.isEmpty(desc))
            return toast("请填写服务说明");
//        if(TextUtils.isEmpty(isCanDrink))
//            return toast("请输入是否饮酒");
        return true;
    }

    private boolean toast(String content){
        ToastUtils.makeToast(content);
        return false;
    }

    private Map<String,String> getMap(){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        if(type == IConsName.SKILL_EDIT)
            map.put("id",dataListBean.getId());
        if(!TextUtils.isEmpty(title))
            map.put("title",title);
        if(!TextUtils.isEmpty(tag_id))
            map.put("category_id", tag_id);
        if(!TextUtils.isEmpty(price))
            map.put("fee",price);
        if(!TextUtils.isEmpty(desc))
            map.put("intro", desc);
        if(!TextUtils.equals("1",tag_type) && !TextUtils.isEmpty(areaId))
            map.put("area_id",areaId);
        if(!TextUtils.isEmpty(parentCode))
            map.put("city_code",parentCode);
        if(!TextUtils.isEmpty(picData))
            map.put("gift_pic", picData);
        if(type == IConsName.SKILL_PUB)
            map.put("server_time_type",whichWayCommunicate);
//        if(IConstant.COMMUNICATE_FIRST.equals(whichWayCommunicate)){}

        map.put("server_time", server_time);
        map.put("server_end_time", server_end_time);
        map.put("is_repeat",isrepeat?"1":"0");
//        map.put("is_repeat","1");
        if(videoUrlLists.size() != 0){
            JSONArray jsonArray = new JSONArray();
            for (String url : videoUrlLists) {
                jsonArray.put(url);
            }
            map.put("gift_video", jsonArray.toString());
        }
//        if(!TextUtils.isEmpty(isCanDrink))
//            map.put("is_drink",isCanDrink);
        return map;
    }

    private void setContentForResult(int type,String content){
        Intent intent = new Intent(this,PlayerPerfectionItemActivity.class);
        intent.putExtra("type",type);
        if(!TextUtils.isEmpty(content))
            intent.putExtra("content",content);
        startActivityForResult(intent,type);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(data != null){
            switch (requestCode){
                case IConstant.PERFECTION_KIND:
                    tvKind.setText(data.getStringExtra("name"));
                    tag_id = data.getStringExtra("tag_id");
                    tag_type = data.getStringExtra("tag_type");
                    server_time = null;
                    setWitchGiftType();
                    break;
                case IConstant.PERFECTION_TITLE:
                    title = data.getStringExtra("title");
                    if(!TextUtils.isEmpty(title)){
                        tvSubTitle.setText(title);
                    }else{
                        tvSubTitle.setText("");
                    }
                    break;
                case IConstant.PERFECTION_PRICE:
                    price = data.getStringExtra("price");
                    if(!TextUtils.isEmpty(price)){
                        tvPrice.setText(price);
                    }else{
                        tvPlace.setText("");
                    }
                    break;
                case IConstant.PERFECTION_DESC:
                    desc = data.getStringExtra("desc");
                    if(!TextUtils.isEmpty(desc)){
                        tvDesc.setText("已填写");
                    }else{
                        tvDesc.setText("");
                    }
                    break;
                case IConstant.PERFECTION_PLACE:
                    areaId = data.getStringExtra("area_id");
                    if(!TextUtils.isEmpty(areaId)){
                        parentCode = data.getStringExtra("parent_code");
                        tvPlace.setText("已设置");
                    }else{
                        parentCode = "";
                        tvPlace.setText("");
                    }
                    break;
                case IConstant.PERFECTION_COMMUNICATE:
                    whichWayCommunicate = data.getStringExtra("communicate_way");
                    if(IConstant.COMMUNICATE_FIRST.equals(whichWayCommunicate)){
                        tvCommunicate.setText(getResources().getString(R.string.zhi_neng_an_zhao_wo_she_ding));
                        relTime.setVisibility(View.VISIBLE);
                    }else if(IConstant.COMMUNICATE_SECOND.equals(whichWayCommunicate)){
                        tvCommunicate.setText(getResources().getString(R.string.yu_yue_qian_xiang_wo));
                        relTime.setVisibility(View.GONE);
                    }
                    break;
                case IConstant.PERFECTION_TIME:
                    server_time = data.getStringExtra("server_time");
                    server_end_time = data.getStringExtra("server_end_time");
                    isrepeat = data.getBooleanExtra("isrepeat", true);
                    if(!TextUtils.isEmpty(server_time)){
                        tvTime.setText("已填写");
                    }else{
                        tvTime.setText("");
                    }
                    break;
                case IConstant.PHOTO_PIC_REQUEST_CODE:
                    if(data != null && data.getBooleanExtra(IConsName.SUCCESS,false)){
                        ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
                        for (TImage image : images) {
                            mResultPicPaths.add(image.getPath());
                        }
                        picAdapter.addLocalPics(mResultPicPaths);
                    }
                    break;
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    /**
     * gvPhoto的item点击
     * @param adapterView
     * @param view
     * @param i
     * @param l
     */
    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        if((alreadyPicLists.size() + mResultPicPaths.size()) < picAdapter.getCount() &&  i == picAdapter.getCount() - 1){
            if(photoDialogHelper == null)
                photoDialogHelper = new PhotoDialogHelper(PlayerSkillPerfectionActivity.this);
            photoDialogHelper.setMaxPicCount(PIC_NUM_COUNT - mResultPicPaths.size() - alreadyPicLists.size()).show();
        }else{
            Intent intent = new Intent(BaseApp.getContext(), ShowPicActivity.class);
            intent.putExtra("kind",2);
            intent.putStringArrayListExtra("piclist", (ArrayList<String>) alreadyPicLists);
            intent.putStringArrayListExtra("bimp", mResultPicPaths);
            intent.putExtra("position",i);
            startActivity(intent);
        }
    }

    /**----------------------- 是否接受饮酒 ----------------------------*/
    private void drinkPicker(){
        drinkPicker = new OptionsPickerView(this);
        ArrayList<String> drinkItemLists = new ArrayList<>();
        drinkItemLists.add("不接受");
        drinkItemLists.add("可少量饮酒");
        drinkPicker.setPicker(drinkItemLists);
        drinkPicker.setCyclic(false);
        drinkPicker.setOnoptionsSelectListener(this);
    }

    @Override
    public void onOptionsSelect(int i, int i1, int i2) {
        if(i == 0){
            isCanDrink = IConstant.DRINK_NO;
            tvDrink.setText("不接受");
        }else if(i == 1){
            isCanDrink = IConstant.DRINK_YES;
            tvDrink.setText("可少量饮酒");
        }
    }


    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK){
            if(drinkPicker != null && drinkPicker.isShowing()){
                drinkPicker.dismiss();
            }else{
                showDialogExit();
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    private class MyOnResultListener implements OkHttpUtils.OnResultListener {
        private int sendCode;

        public MyOnResultListener(int sendCode){
            this.sendCode = sendCode;
        }
        @Override
        public void onSuccess(String result) {
            if(sendCode == CODE_PIC){
                try {
                    JSONObject jsonObject = new JSONObject(result);
                    JSONArray jArray = jsonObject.getJSONObject("data").getJSONArray("path");

                    JSONArray jsonArray = new JSONArray();
                    for (String s : alreadyPicLists) {
                        jsonArray.put(s);
                    }
                    for (int i = 0;i < jArray.length();i++){
                        jsonArray.put(jArray.getString(i));
                    }
                    picData = jsonArray.toString();
                    myHandler.sendEmptyMessage(CODE_PIC);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }else if(sendCode == CODE_PUB){
                myHandler.sendEmptyMessage(4);
            }
        }

        @Override
        public void onFailure(int errCode,String errMsg) {
            if(sendCode == CODE_PUB){
                Message obtain = Message.obtain();
                obtain.what = CODE_ERR;
                obtain.obj = errMsg;
                myHandler.sendMessage(obtain);
            }
        }
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == CODE_ERR){
                String errMsg = (String) msg.obj;
                ToastUtils.makeToast(errMsg);
            }else if(msg.what == CODE_PIC){
                OkHttpUtils.sendPostRequest(IConstant.GIFT_PUB, getMap(), new MyOnResultListener(CODE_PUB));
            }else if(msg.what == 4){
                DialogUtils.loadingDismiss();
                com.wanduoduo.utils.AlertDialog builder = new com.wanduoduo.utils.AlertDialog(PlayerSkillPerfectionActivity.this).builder();
                builder.setTitle(type == IConsName.SKILL_PUB?"发布成功":"修改成功")
                        .setMsg(type == IConsName.SKILL_PUB?"您的技能已成功发布，我们将在24小时之内审核，审核成功后会显示在技能列表中，请耐心等待":"您的技能修改成功，请在技能管理中心查看，已通过的技能修改只时间不需要再次审核")
                        .setCancelable(false)
                        .setPositiveButton("确定", new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                startActivity(new Intent(PlayerSkillPerfectionActivity.this, MainActivity.class));
                            }
                        }).show();


            }
        }
    };


    private void showDialogExit(){
        DialogUtils.showDialog(PlayerSkillPerfectionActivity.this, type == IConsName.SKILL_PUB?"返回后将清除填写的信息，确定返回?":
                "确定退出编辑吗?退出后您可以在技能管理中重新进行编辑。", new DialogUtils.DialogIF() {
                @Override
                public void positiviButtom() {
                    finish();
                }
            });
    }
}
