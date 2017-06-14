package com.wanduoduo.fragment.info;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.jph.takephoto.model.TImage;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PhotoPicAdapter;
import com.wanduoduo.adapter.info.InfoGiftShowAdapter;
import com.wanduoduo.adapter.info.QuestionAnswerAdapter;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.authentication.AuthenticationBeginActivity;
import com.wanduoduo.ui.authentication.AuthenticationEditVideoActivity;
import com.wanduoduo.ui.authentication.AuthenticationSkillOrCarActivity;
import com.wanduoduo.ui.index.VideoPlayActivity;
import com.wanduoduo.ui.info.InfoEditContentActivity;
import com.wanduoduo.ui.info.InfoEditTagActivity;
import com.wanduoduo.ui.info.InfoQuestionActivity;
import com.wanduoduo.ui.info.InfoQuestionItemActivity;
import com.wanduoduo.ui.info.SettingMobileNumFirstActivity;
import com.wanduoduo.ui.info.SettingRealNameActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PhotoDialogHelper;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;
import com.wanduoduo.widget.MyListView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/8/18.
 */
@SuppressLint("ValidFragment")
public class InfoEditPersonCenterFragment extends BaseFragment implements AdapterView.OnItemClickListener {

    private static final int ID_CARD = 10;
    private static final int QAREQUEST = 15;
    private MyHandler myHandler;
    private String user_id;
    @Bind(R.id.mgv_info)
    MyGridView mgvInfo;
    @Bind(R.id.tv_edit_info)
    TextView tvEditInfo;

    @Bind(R.id.lv_add_question)
    MyListView lvAddQuestion;
    @Bind(R.id.rel_add_question)
    RelativeLayout relAddQuestion;
    @Bind(R.id.gv_pic_wall)
    MyGridView mgvPicWall;
    @Bind(R.id.tv_pic_num)
    TextView tvPicNum;
    @Bind(R.id.tv_my_tag)
    TextView tvMyTag;

    @Bind(R.id.rel_my_tag)
    RelativeLayout relMyTag;
    @Bind(R.id.rel_sport)
    RelativeLayout relSport;
    @Bind(R.id.rel_food)
    RelativeLayout relFood;
    @Bind(R.id.rel_travel)
    RelativeLayout relTravel;
    @Bind(R.id.rel_singer)
    RelativeLayout relSinger;
    @Bind(R.id.tv_title_my_tag)
    TextView tvTitleMyTag;
    @Bind(R.id.tv_sport)
    TextView tvSport;
    @Bind(R.id.tv_food)
    TextView tvFood;
    @Bind(R.id.tv_travel)
    TextView tvTravel;
    @Bind(R.id.tv_singer)
    TextView tvSinger;
    @Bind(R.id.tv_my_intrest)
    TextView tvMyIntrest;
    @Bind(R.id.tv_phone)
    TextView tvPhone;
    @Bind(R.id.tv_video)
    TextView tvVideo;
    @Bind(R.id.tv_id_card)
    TextView tvIdCard;
    @Bind(R.id.tv_skill)
    TextView tvSkill;
    @Bind(R.id.tv_id)
    TextView tvID;

    @Bind(R.id.mgv_gift)
    MyGridView mgvGift;
    @Bind(R.id.tv_title_my_gift)
    TextView tvTitleMyGift;
    @Bind(R.id.tv_wen_da)
    TextView tvWenDa;
    @Bind(R.id.tv_auth_gender)
    TextView tvAuthGender;

    private boolean isCanEdit;      //是否可以修改，默认只能看，只有user_id是自己的时候时候才能修改
    private PhotoPicAdapter picWallAdapter;
    private InfoEditPersonAdapter infoEditPersonAdapter;
    ArrayList<String> myTagLists = new ArrayList<>();
    ArrayList<String> mySportLists = new ArrayList<>();
    ArrayList<String> myFoodLists = new ArrayList<>();
    ArrayList<String> mySingerLists = new ArrayList<>();
    ArrayList<String> myTravelLists = new ArrayList<>();
    private int gender;
    private QuestionAnswerAdapter questionAnswerAdapter;
    private InfoBean.DataBean dataBean;
    private InfoGiftShowAdapter infoGiftShowAdapter;
    private String myNickname;
    private List<String> alreadyPicLists = new ArrayList<>();
    private ArrayList<String> mResultPicPaths = new ArrayList<>();
    private PhotoDialogHelper photoDialogHelper;
    private static final int PIC_WALL_COUNT = 12;

    @SuppressLint("ValidFragment")
    public InfoEditPersonCenterFragment(boolean isCanEdit, String user_id, MyHandler myHandler) {
        this.isCanEdit = isCanEdit;
        this.user_id = user_id;
        this.myHandler = myHandler;
    }

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_info_edit_person_center,null);
    }

    @Override
    protected void initData() {
        infoEditPersonAdapter = new InfoEditPersonAdapter();
        mgvInfo.setAdapter(infoEditPersonAdapter);
        setInitCanEidt();

        setPicWall();
        tvID.setText("ID:" + user_id);

        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                myNickname = infoBean.getData().getNickname();
            }
        });
    }

    /**
     * 设置照片墙
     */
    private void setPicWall() {
        tvPicNum.setText("("+alreadyPicLists.size() +"//"+ PIC_WALL_COUNT + ")");
        picWallAdapter = new PhotoPicAdapter(alreadyPicLists, PIC_WALL_COUNT, 1, new PhotoPicAdapter.OnDeleteListen() {
            @Override
            public void onDelete(int deletePosition, boolean... isDeleteFromNet) {
                if(isDeleteFromNet[0]){
                    alreadyPicLists.remove(deletePosition);
                }else{
                    mResultPicPaths.remove(deletePosition);
                }
            }
        }, isCanEdit);
        mgvPicWall.setAdapter(picWallAdapter);
        mgvPicWall.setOnItemClickListener(this);
    }

    public void remove(int i) {
        alreadyPicLists.remove(i);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        if(isCanEdit){
            if((alreadyPicLists.size() + mResultPicPaths.size()) < adapterView.getCount() && i == (adapterView.getCount() - 1)){
                if(photoDialogHelper == null)
                    photoDialogHelper = new PhotoDialogHelper(getActivity());
                photoDialogHelper.setFragment(InfoEditPersonCenterFragment.this).setRequestCode(PIC_WALL_COUNT).setMaxPicCount(PIC_WALL_COUNT - mResultPicPaths.size() - alreadyPicLists.size()).show();
            }else{
                Intent intent = new Intent(BaseApp.getContext(), ShowPicActivity.class);
                intent.putExtra("kind",2);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putStringArrayListExtra("piclist", (ArrayList<String>) alreadyPicLists);
                intent.putStringArrayListExtra("bimp", mResultPicPaths);
                intent.putExtra("position",i);
                BaseApp.getContext().startActivity(intent);
            }
        }else{
            if(alreadyPicLists.size() < adapterView.getCount() && i == (adapterView.getCount() - 1)){
                invateUpLoadPic();
            }else{
                Intent intent = new Intent(BaseApp.getContext(), ShowPicActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putStringArrayListExtra("piclist", (ArrayList<String>) alreadyPicLists);
                intent.putExtra("position",i);
                BaseApp.getContext().startActivity(intent);
            }
        }
    }

    /**
     * 邀请上传照片
     */
    private void invateUpLoadPic() {
        DialogUtils.showDialog(getActivity(), "邀请上传", "是否邀请他(她)上传照片?对方将会收到您的通知!", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                OkHttpUtils.sendPostRequest(IConstant.SEND_MESSAGE, getInvatePicMap(), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        myHandler.sendEmptyMessage(102);
                    }

                    @Override
                    public void onFailure(int errCode,String errMsg) {

                    }
                });
            }
        });
    }

    private Map<String, String> getInvatePicMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        String s = !TextUtils.isEmpty(myNickname) ? myNickname : "";
        map.put("message", s + "邀请您上传照片");
        map.put(IConsName.USER_ID,user_id);
        map.put("system_create_time",getSdfTime());
        return map;
    }

    private String getSdfTime(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH;mm:ss");
        long l = System.currentTimeMillis();
        return sdf.format(new Date(l));
    }

    /**
     * 根据是否能够修改 对不同的情况进行判断
     */
    private void setInitCanEidt() {
        questionAnswerAdapter = new QuestionAnswerAdapter();
        lvAddQuestion.setAdapter(questionAnswerAdapter);
        if(isCanEdit){
            lvAddQuestion.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                    Intent intent = new Intent(mContext,InfoQuestionItemActivity.class);
                    intent.putExtra("question",questionLists.get(i));
                    intent.putExtra("answer",answerLists.get(i));
                    intent.putStringArrayListExtra("questionLists",questionLists);
                    intent.putStringArrayListExtra("answerLists",answerLists);
                    intent.putExtra(IConsName.TYPE,1);
                    startActivityForResult(intent,QAREQUEST);
                }
            });
        }else{
            tvEditInfo.setVisibility(View.INVISIBLE);
            relAddQuestion.setVisibility(View.GONE);
//            if(questionLists.size() == 0)
//                tvWenDa.setVisibility(View.GONE);
        }
    }

    @OnClick({R.id.tv_edit_info,R.id.rel_my_tag,R.id.rel_sport,R.id.rel_singer,R.id.rel_food,R.id.rel_travel,R.id.rel_add_question,
            R.id.ll_phone,R.id.ll_video,R.id.ll_id_card,R.id.ll_skill})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.tv_edit_info:
                Intent intent1 = new Intent(mContext, InfoEditContentActivity.class);
                intent1.putStringArrayListExtra("mNineLists",mNineLists);
                startActivityForResult(intent1,6);
                break;
            case R.id.rel_my_tag:
                if (isCanEdit){
                    String[] stringArray = {};
                    if(gender == 1){
                        stringArray = mContext.getResources().getStringArray(R.array.tag_boy);
                    }else{
                        stringArray = mContext.getResources().getStringArray(R.array.tag_girl);
                    }
                    jumpToTagActivity(stringArray,myTagLists,1);
                }
                break;
            case R.id.rel_sport:
                if (isCanEdit){
                    String[] sportArray = mContext.getResources().getStringArray(R.array.tag_sport);
                    jumpToTagActivity(sportArray,mySportLists,2);
                }
                break;
            case R.id.rel_singer:
                if (isCanEdit){
                    String[] singertArray = mContext.getResources().getStringArray(R.array.tag_singer);
                    jumpToTagActivity(singertArray,mySingerLists,3);
                }
                break;
            case R.id.rel_food:
                if (isCanEdit){
                    String[] foodArray = mContext.getResources().getStringArray(R.array.tag_food);
                    jumpToTagActivity(foodArray,myFoodLists,4);
                }
                break;
            case R.id.rel_travel:
                if (isCanEdit){
                    String[] travelArray = mContext.getResources().getStringArray(R.array.tag_travel);
                    jumpToTagActivity(travelArray,myTravelLists,5);
                }
                break;
            case R.id.rel_add_question:     /**  问题列表  */
                Intent intent = new Intent(mContext,InfoQuestionActivity.class);
                intent.putStringArrayListExtra("questionLists",questionLists);
                intent.putStringArrayListExtra("answerLists",answerLists);
                startActivityForResult(intent,QAREQUEST);
                break;
            case R.id.ll_phone:
                if(isCanEdit && dataBean !=null){
                    Intent intentPhone = new Intent(mContext, SettingMobileNumFirstActivity.class);
                    if(TextUtils.isEmpty(dataBean.getMobile())){      //绑定手机号码
                        startActivity(intentPhone);
                    }else{      //解除绑定
                        intentPhone.putExtra("phone",dataBean.getMobile());
                        intentPhone.putExtra(IConsName.TYPE,1);
                        startActivity(intentPhone);
                    }
                }
                break;
            case R.id.ll_video:
                if(dataBean != null){
                    if(TextUtils.isEmpty(dataBean.getVideo())){     //未认证视频
                        if(isCanEdit)
                            startActivity(new Intent(mContext, AuthenticationBeginActivity.class));
                    }else{
                        String video_url = "";
                        try {
                            video_url = new JSONObject(dataBean.getVideo()).getString("video_url");
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        if(isCanEdit){
                            Intent intent2 = new Intent(mContext, AuthenticationEditVideoActivity.class);
                            intent2.putExtra(IConsName.ISCANEDIT,isCanEdit);
                            intent2.putExtra("path",video_url);
                            startActivity(intent2);
                        }else{
                            Intent intent2 = new Intent(mContext, VideoPlayActivity.class);
                            intent2.putExtra("video",video_url);
                            startActivity(intent2);
                        }
                    }
                }
                break;
            case R.id.ll_id_card:
                if(isCanEdit && dataBean != null){
                    Intent intentCard = new Intent(mContext, SettingRealNameActivity.class);
                    if(TextUtils.isEmpty(dataBean.getIdcard_pic())){
                        startActivityForResult(intentCard,ID_CARD);
                    }else{
                        if("0".equals(dataBean.getIdcard_ok())){        //身份没有验证
                            alertDialog();
                        }else{                                          //已经身份验证
                            intentCard.putExtra("ishava",true);
                            startActivityForResult(intentCard,ID_CARD);
                        }
                    }
                }
                break;
            case R.id.ll_skill:
                if(isCanEdit && dataBean != null){
                    Intent intentSkill = new Intent(mContext,AuthenticationSkillOrCarActivity.class);
                    intentSkill.putExtra("type",dataBean.getGender());
                    startActivity(intentSkill);
                }
                break;
        }
    }

    /**
     *  身份信息带审核
     */
    private void alertDialog() {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        builder.setTitle("您的身份验证正在等待后台审核，我们将尽快完成你的审核");
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    private void jumpToTagActivity(String[] allTag,ArrayList<String> selectedTags ,int requestCode){
        Intent intent = new Intent(mContext, InfoEditTagActivity.class);
        intent.putExtra(IConsName.TYPE,requestCode);
        intent.putExtra("allTag",allTag);
        intent.putStringArrayListExtra("selectedTags", selectedTags);
        startActivityForResult(intent,requestCode);
    }

    /**
     * 获取数据
     * @param infoBean
     */
    public void setData(InfoBean.DataBean infoBean) {
        /**  设置照片墙 */
        dataBean = infoBean;
        String pic_wall = infoBean.getPic_wall();
        if(!TextUtils.isEmpty(pic_wall)){
            JSONArray jsonArray = null;
            try {
                jsonArray = new JSONArray(pic_wall);
                for (int i = 0 ; i < jsonArray.length();i++){
                    alreadyPicLists.add((String)jsonArray.get(i));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            tvPicNum.setText("("+(alreadyPicLists.size() + mResultPicPaths.size()) +"/12)");
            picWallAdapter.addAlreadyPic(alreadyPicLists);
        }
        gender = infoBean.getGender();
        relMyTag.setClickable(true);
        relSport.setClickable(true);
        relSinger.setClickable(true);
        relFood.setClickable(true);
        relTravel.setClickable(true);
        /**  设置九宫格数据  */
        setNineData(infoBean);
        setAnswerQuestionListView(infoBean);

        initTags(infoBean);
        initSport(infoBean);
        initSinger(infoBean);
        initFood(infoBean);
        initTravel(infoBean);

        if(!isCanEdit && TextUtils.isEmpty(infoBean.getCharacter_interest()) && TextUtils.isEmpty(infoBean.getFood_interest()) &&
                TextUtils.isEmpty(infoBean.getPlace_interest()) && TextUtils.isEmpty(infoBean.getSports_interest()) && TextUtils.isEmpty(infoBean.getStar_interest()))
            tvMyIntrest.setVisibility(View.GONE);

        setTvRenZheng(tvPhone,infoBean.getUsername());

        setTvRenZhengVideo(tvVideo,infoBean.getVideo(),infoBean.getVideo_back());

        setTvRenZhengIdCard(tvIdCard,infoBean.getIdcard_ok(),infoBean.getIdcard_pic());

        setTvRenZheng(tvSkill,infoBean.getIdentify_ok(),infoBean.getGender());

        /**
         * 展示礼物的照片
         */
        setGiftWall(infoBean);

        if(TextUtils.isEmpty(infoBean.getQa_list()) && !isCanEdit)
            tvWenDa.setVisibility(View.GONE);
    }

    private void setTvRenZhengIdCard(TextView tv, String idcard_ok, String idcard_pic) {
        if(isCanEdit){
            if(!TextUtils.isEmpty(idcard_pic) && TextUtils.equals("0",idcard_ok)){
                tv.setText("*待审核");
                tv.setTextColor(getResources().getColor(R.color.c_mei_hong));
            }else if(TextUtils.equals("1",idcard_ok)){
                tv.setText("已认证");
                tv.setTextColor(getResources().getColor(R.color.c_65_75_85));
            }else{
                tv.setText("未认证");
                tv.setTextColor(getResources().getColor(R.color.c_129_143_255));
            }
        }else{
            if(TextUtils.equals("1",idcard_ok)){
                tv.setText("已认证");
                tv.setTextColor(getResources().getColor(R.color.c_65_75_85));
            }else{
                tv.setText("未认证");
                tv.setTextColor(getResources().getColor(R.color.c_129_143_255));
            }
        }
    }

    private void setTvRenZhengVideo(TextView tv, String video, String video_back) {
        if(isCanEdit){
            if(!TextUtils.isEmpty(video_back) && TextUtils.isEmpty(video)){
                tv.setText("*待审核");
                tv.setTextColor(getResources().getColor(R.color.c_mei_hong));
            }else  if(!TextUtils.isEmpty(video)){
                tv.setText("已认证");
                tv.setTextColor(getResources().getColor(R.color.c_65_75_85));
            }else{
                tv.setText("未认证");
                tv.setTextColor(getResources().getColor(R.color.c_129_143_255));
            }
        }else{
            if(!TextUtils.isEmpty(video)){
                tv.setText("已认证");
                tv.setTextColor(getResources().getColor(R.color.c_65_75_85));
            }else{
                tv.setText("未认证");
                tv.setTextColor(getResources().getColor(R.color.c_129_143_255));
            }
        }
    }

    /**
     * 展示别人送过的礼物
     * @param infoBean
     */
    private void setGiftWall(InfoBean.DataBean infoBean) {
        if(infoBean.getUser_item() != null && infoBean.getUser_item().size() != 0){
            tvTitleMyGift.setVisibility(View.VISIBLE);
            mgvGift.setVisibility(View.VISIBLE);

            infoGiftShowAdapter = new InfoGiftShowAdapter();
            mgvGift.setAdapter(infoGiftShowAdapter);
//            infoGiftShowAdapter.setData(infoBean.getUser_item());
        }
    }

    /**
     * 初始化认证数据
     * @param tv
     * @param s
     */
    private void setTvRenZheng(TextView tv,String s,int ...gender) {
        if(gender.length > 0){
            if(gender[0] == 1){
                tvAuthGender.setText("车辆认证");
            }else{
                tvAuthGender.setText("技能认证");
            }
        }
        if(TextUtils.isEmpty(s) || "0".equals(s)){
            tv.setText("未认证");
            tv.setTextColor(getResources().getColor(R.color.c_129_143_255));
        }else{
            if(isCanEdit){
                tv.setText("点击修改");
            }else{
                tv.setText("已认证");
            }
        }
    }

    private void initTravel(InfoBean.DataBean infoBean) {
        String place_interest = infoBean.getPlace_interest();
        if(!TextUtils.isEmpty(place_interest)){
            String s = selectedTag(myTravelLists, place_interest);
            tvTravel.setText(s);
        }else{
            if (!isCanEdit){
                relTravel.setVisibility(View.GONE);
            }
        }
    }

    private void initFood(InfoBean.DataBean infoBean) {
        String food_interest = infoBean.getFood_interest();
        if(!TextUtils.isEmpty(food_interest)){
            String s = selectedTag(myFoodLists, food_interest);
            tvFood.setText(s);
        }else{
            if (!isCanEdit){
                relFood.setVisibility(View.GONE);
            }
        }
    }

    private void initSinger(InfoBean.DataBean infoBean) {
        String singer_interest = infoBean.getStar_interest();
        if(!TextUtils.isEmpty(singer_interest)){
            String s = selectedTag(mySingerLists, singer_interest);
            tvSinger.setText(s);
        }else{
            if (!isCanEdit){
                relSinger.setVisibility(View.GONE);
            }
        }
    }

    /**
     *设置问题回答的列表
     * @param infoBean
     */
    ArrayList<String> questionLists = new ArrayList<>();
    ArrayList<String> answerLists = new ArrayList<>();
    private void setAnswerQuestionListView(InfoBean.DataBean infoBean) {
        String qa_list = infoBean.getQa_list();
        if(!TextUtils.isEmpty(qa_list)){
            try {
                JSONArray jsonArray = new JSONArray(qa_list);
                for(int i = 0;i < jsonArray.length() ; i++){
                    questionLists.add(jsonArray.getJSONObject(i).getString("q"));
                    answerLists.add(jsonArray.getJSONObject(i).getString("a"));
                }
                questionAnswerAdapter.addData(questionLists,answerLists);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 设置运动
     * @param infoBean
     */
    private void initSport(InfoBean.DataBean infoBean) {
        String sports_interest = infoBean.getSports_interest();
        if(!TextUtils.isEmpty(sports_interest)){
            String s = selectedTag(mySportLists, sports_interest);
            tvSport.setText(s);
        }else{
            if (!isCanEdit){
                relSport.setVisibility(View.GONE);
            }
        }
    }

    /**
     * 设置标签
     * @param infoBean
     */
    private void initTags(InfoBean.DataBean infoBean) {
        String character_interest = infoBean.getCharacter_interest();
        if(!TextUtils.isEmpty(character_interest)){
            String s = selectedTag(myTagLists, character_interest);
            tvMyTag.setText(s);
        }else{
            if (!isCanEdit){
                relMyTag.setVisibility(View.GONE);
                tvTitleMyTag.setVisibility(View.GONE);
            }
        }
    }

    private String selectedTag(ArrayList<String> arrayList, String character_interest) {
        try {
            StringBuffer sb = new StringBuffer();
            JSONArray jsonArray = new JSONArray(character_interest);
            for(int i = 0 ; i < jsonArray.length() ;i++){
                arrayList.add(jsonArray.getString(i));
                sb.append(jsonArray.get(i)).append(",");
            }
            return sb.toString().substring(0,sb.toString().length() - 1);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return "";
    }


    ArrayList<String> mNineLists = new ArrayList<>();
    private void setNineData(InfoBean.DataBean infoBean) {
//        "昵称","性别","年龄","星座","身高","情感状况","所在地","职业","收入"};
        mNineLists.clear();
        mNineLists.add(infoBean.getNickname());
        mNineLists.add((infoBean.getGender() == 1) ?"男" : "女");
        mNineLists.add(infoBean.getAge());
        mNineLists.add(TextUtils.isDigitsOnly(infoBean.getConstellation())?"未知":infoBean.getConstellation());
        mNineLists.add(infoBean.getHeight() + "cm");
        if("1".equals(infoBean.getLoveinfo())){
            mNineLists.add("单身");
        }else if("2".equals(infoBean.getLoveinfo())){
            mNineLists.add("已婚");
        }else if("3".equals(infoBean.getLoveinfo())){
            mNineLists.add("保密");
        }else{
            mNineLists.add("未知");
        }
        mNineLists.add(TextUtils.isEmpty(infoBean.getCity())?"未知":infoBean.getCity());
        mNineLists.add(TextUtils.isDigitsOnly(infoBean.getProfession())?"未知":infoBean.getProfession());
        mNineLists.add(TextUtils.isEmpty(infoBean.getSalary())?"未知":infoBean.getSalary());
        infoEditPersonAdapter.rePlaceData(mNineLists);
    }

    public void upLoadPic(){
        final ArrayList<String> objects = new ArrayList<>();
        objects.addAll(alreadyPicLists);
        OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD, mResultPicPaths, new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                Message msg = Message.obtain();
                msg.what = 1;
                try {
                    String path = new JSONObject(result).getJSONObject("data").getString("path");
                    if(mResultPicPaths.size() != 0){
                        JSONArray jsonArray = new JSONArray(path);
                        for (int i = 0;i < jsonArray.length();i++){
                            objects.add(jsonArray.getString(i));
                        }
                    }
                    JSONArray json = new JSONArray();
                    for (String s : objects) {
                        json.put(s);
                    }
                    msg.obj = json.toString();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                myHandler.sendMessage(msg);
            }

            @Override
            public void onFailure(int errCode,String errMsg) {

            }
        });
    }

    /**
     * 赠送礼物
     * @param id
     * @param name
     * @param pic
     */
    public void addGift(String id, String name, String pic) {
        if(infoGiftShowAdapter == null){
            tvTitleMyGift.setVisibility(View.VISIBLE);
            mgvGift.setVisibility(View.VISIBLE);
            infoGiftShowAdapter = new InfoGiftShowAdapter();
            mgvGift.setAdapter(infoGiftShowAdapter);
        }
        infoGiftShowAdapter.addNewGift(id,name,pic);
    }


    /**   -------------------------------------------------------------------------------------   */
    private class InfoEditPersonAdapter extends BaseAdapter{

        String[] itemData = {"昵称","性别","年龄","星座","身高","情感状况","所在地","职业","收入"};
        List<String> mNineLists;

        public void rePlaceData(List<String> mNineLists) {
            this.mNineLists = mNineLists;
            notifyDataSetChanged();
        }

        @Override
        public int getCount() {
            return 9;
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
        public View getView(int i, View view, ViewGroup viewGroup) {
            if(view == null)
                view = View.inflate(viewGroup.getContext(),R.layout.item_info_edit_person,null);
            View vTop = view.findViewById(R.id.v_top);
            if(i == 0 || i == 1 || i == 2 ){
                vTop.setVisibility(View.INVISIBLE);
            }else{
                vTop.setVisibility(View.VISIBLE);
            }
            TextView tvKey = (TextView) view.findViewById(R.id.tv_key);
            TextView tvValue = (TextView) view.findViewById(R.id.tv_value);
            if(mNineLists != null)
                tvValue.setText(mNineLists.get(i));
            tvKey.setText(itemData[i]);
            return view;
        }
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
       switch (requestCode){
           case PIC_WALL_COUNT:
               if(data != null && data.getBooleanExtra(IConsName.SUCCESS,false)){
                   ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
                   for (TImage image : images) {
                       mResultPicPaths.add(image.getPath());
                   }
                  tvPicNum.setText("("+(alreadyPicLists.size() + mResultPicPaths.size()) +"//" + PIC_WALL_COUNT + ")");
                   picWallAdapter.addLocalPics(mResultPicPaths);
               }
               break;
           case 1:
               setTvResult(data,tvMyTag,R.string.wo_de_ge_xing_biao_qian,myTagLists);
               break;
           case 2:
               setTvResult(data,tvSport,R.string.wo_xi_huan_de_yun_dong,mySportLists);
               break;
           case 3:
               setTvResult(data,tvSinger,R.string.wo_xi_huan_de_ge_shou,mySingerLists);
               break;
           case 4:
               setTvResult(data,tvFood,R.string.wo_xi_huan_de_mei_shi,myFoodLists);
               break;
           case 5:
               setTvResult(data,tvTravel,R.string.wo_xi_huan_de_lv_xing,myTravelLists);
               break;
           case 6:
               ArrayList<String> mNineLists = data.getStringArrayListExtra("mNineLists");
               if(mNineLists != null ){
                   this.mNineLists.clear();
                   this.mNineLists.addAll(mNineLists);
                   infoEditPersonAdapter.rePlaceData(this.mNineLists);

                   if(dataBean != null){
                        dataBean.setGender("男".equals(mNineLists.get(1))?1:2);
                       if("男".equals(mNineLists.get(1))){
                           tvAuthGender.setText("车辆认证");
                       }else{
                           tvAuthGender.setText("技能认证");
                       }
                   }
               }
               break;
           case ID_CARD:
               if(data != null){
                   String pic = data.getStringExtra("pic");
                   if(dataBean != null){
                       dataBean.setIdcard_pic(pic +"");
                   }
               }
               break;
           case QAREQUEST:
               if(data != null){
                   questionLists.clear();
                   answerLists.clear();
                   questionLists.addAll(data.getStringArrayListExtra("questionLists"));
                   answerLists.addAll(data.getStringArrayListExtra("answerLists"));
                   if(questionAnswerAdapter != null)
                    questionAnswerAdapter.addData(questionLists,answerLists);
               }
               break;
       }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void setTvResult(Intent data,TextView tv,int stringResID,ArrayList<String> list) {
        if(data != null){
            ArrayList<String> selectedTagLists = data.getStringArrayListExtra("selectedTagLists");
            list.clear();
            if (selectedTagLists != null && selectedTagLists.size() != 0){
                list.addAll(selectedTagLists);
                tv.setText(selectedTagLists.toString().substring(1,selectedTagLists.toString().length()-1));
            }else{
                tv.setText(getResources().getString(stringResID));
            }
        }
    }
}
