package com.wanduoduo.ui.info;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.jph.takephoto.model.TImage;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PhotoPicAdapter;
import com.wanduoduo.adapter.activi.ItemPicAdapter;
import com.wanduoduo.adapter.info.AllGiftAdapter;
import com.wanduoduo.adapter.info.InfoGiftShowAdapter;
import com.wanduoduo.adapter.info.ItemInvateDateAdapter;
import com.wanduoduo.adapter.info.QuestionAnswerAdapter;
import com.wanduoduo.adapter.online.OnLinePopPubAppointAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.AllGiftListBean;
import com.wanduoduo.bean.AppointBean;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.activi.ActiviPublishActivity;
import com.wanduoduo.ui.appoint.WarningActivity;
import com.wanduoduo.ui.authentication.AuthenticationBeginActivity;
import com.wanduoduo.ui.authentication.AuthenticationEditVideoActivity;
import com.wanduoduo.ui.authentication.AuthenticationSkillOrCarActivity;
import com.wanduoduo.ui.index.VideoPlayActivity;
import com.wanduoduo.ui.online.OnLinePublishAppointmentActivity;
import com.wanduoduo.ui.skill.PerSonSkillActivity;
import com.wanduoduo.ui.skill.PersonAbilityActivity;
import com.wanduoduo.ui.skill.PlayerSkillChooseActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PhotoDialogHelper;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.utils.WddHelper;
import com.wanduoduo.widget.ActionSheetDialog;
import com.wanduoduo.widget.CircleImageView;
import com.wanduoduo.widget.JMutiFrameLayout;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;
import com.wanduoduo.widget.MyListView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.UserInfo;

public class InfoEditorPersonActivity extends BaseActivity implements AdapterView.OnItemClickListener, View.OnClickListener {
    @Bind(R.id.tv_info_skill_name)
    TextView tvInfoSkillName;
    @Bind(R.id.tv_info_skill_count)
    TextView tvInfoSkillCount;
    @Bind(R.id.tv_info_photo_count)
    TextView tvInfoPhotoCount;
    @Bind(R.id.tv_info_activi_count)
    TextView tvInfoActiviCount;
    @Bind(R.id.tv_info_appoint_count)
    TextView tvInfoAppointCount;
    @Bind(R.id.rel_info_skill)
    RelativeLayout relInfoSkill;
    @Bind(R.id.iv_info_skill_new)
    ImageView ivInfoSkillNew;
    @Bind(R.id.item_iv_photo)
    ImageView itemIvPhoto;
    @Bind(R.id.item_tv_time)
    TextView itemTvTime;
    @Bind(R.id.item_tv_title)
    TextView itemTvTitle;
    @Bind(R.id.item_tv_money)
    TextView itemTvMoney;
    @Bind(R.id.tv_info_skill_pub)
    TextView tvInfoSkillPub;
    @Bind(R.id.tv_info_skill_empty)
    TextView tvInfoSkillEmpty;

    @Bind(R.id.mgv_info_photo)
    MyGridView mgvInfoPhoto;
    @Bind(R.id.ll_info_activi_only_text)
    LinearLayout llINfoActiviOnlyText;
    @Bind(R.id.tv_info_activi_only_text)
    TextView tvInfoActiviONlyText;
    @Bind(R.id.tv_info_activi_pub)
    TextView tvInfoActiviPub;
    @Bind(R.id.gv_activi_pic)
    GridView gvActiviPic;
    @Bind(R.id.rel_info_activi_root)
    RelativeLayout relInfoActiviRoot;
    @Bind(R.id.iv_info_activi_right)
    ImageView ivInfoActiviRight;
    @Bind(R.id.tv_info_appoint)
    TextView tvInfoAppoint;
    @Bind(R.id.tv_info_appoint_empty)
    TextView tvInfoAppointEmpty;
    @Bind(R.id.tv_info_appoint_pub)
    TextView tvInfoAppointPub;
    @Bind(R.id.tv_info_appoint_invate)
    TextView tvInfoAppointInvate;

    @Bind(R.id.tv_info_auth_phone)
    TextView tvInfoAuthPhone;
    @Bind(R.id.tv_info_auth_video)
    TextView tvInfoAuthVideo;
    @Bind(R.id.tv_info_auth_identify)
    TextView tvInfoAuthIdentify;
    @Bind(R.id.tv_info_auth_skill)
    TextView tvInfoAuthSkill;
    @Bind(R.id.tv_info_auth_phone_edit)
    TextView tvInfoAuthPhoneEdit;
    @Bind(R.id.tv_info_auth_video_edit)
    TextView tvInfoAuthVideoEdit;
    @Bind(R.id.tv_info_auth_identify_edit)
    TextView tvInfoAuthIdentifyEdit;
    @Bind(R.id.tv_info_auth_skill_edit)
    TextView tvInfoAuthSkillEdit;

    @Bind(R.id.tv_info_about_id)
    TextView tvInfoAboutId;
    @Bind(R.id.tv_info_about_edit)
    TextView tvInfoAboutEdit;
    @Bind(R.id.tv_info_about_nickname)
    TextView tvInfoAboutNickname;
    @Bind(R.id.tv_info_about_sex)
    TextView tvInfoAboutSex;
    @Bind(R.id.tv_info_about_age)
    TextView tvInfoAboutAge;
    @Bind(R.id.tv_info_about_xingzuo)
    TextView tvInfoAboutXingzuo;
    @Bind(R.id.tv_info_about_heigh)
    TextView tvInfoAboutHeigh;
    @Bind(R.id.tv_info_about_job)
    TextView tvInfoAboutJob;
    @Bind(R.id.tv_info_about_place)
    TextView tvInfoAboutPlace;
    @Bind(R.id.tv_info_about_love)
    TextView tvInfoAboutLove;

    @Bind(R.id.tv_about_tag_my_edit)
    TextView tvAboutTagMyEdit;
    @Bind(R.id.rel_about_tag_my)
    RelativeLayout relAboutTagMy;
    @Bind(R.id.tv_about_tag_food_edit)
    TextView tvAboutTagFoodEdit;
    @Bind(R.id.rel_about_tag_food)
    RelativeLayout relAboutTagFood;
    @Bind(R.id.tv_about_tag_singer_edit)
    TextView tvAboutTagSingerEdit;
    @Bind(R.id.rel_about_tag_singer)
    RelativeLayout relAboutTagSinger;
    @Bind(R.id.tv_about_tag_travel_edit)
    TextView tvAboutTagTravelEdit;
    @Bind(R.id.rel_about_tag_travel)
    RelativeLayout relAboutTagTravel;
    @Bind(R.id.rel_about_tag_run)
    RelativeLayout relAboutTagRun;
    @Bind(R.id.tv_about_tag_run_edit)
    TextView tvAboutTagRunEdit;

    @Bind(R.id.tv_info_gift_count)
    TextView tvInfoGiftCount;
    @Bind(R.id.mgv_info_gift_wall)
    MyGridView mgvInfoGiftWall;
    @Bind(R.id.tv_info_gift_enpty)
    TextView tvInfoGiftEmpty;

    @Bind(R.id.rel_bottom_root)
    RelativeLayout relBottomRoot;

    @Bind(R.id.jmuti_tag_my)
    JMutiFrameLayout jmutiTagMy;
    @Bind(R.id.jmuti_tag_food)
    JMutiFrameLayout jmutiTagFood;
    @Bind(R.id.jmuti_tag_singer)
    JMutiFrameLayout jmutiTagSinger;
    @Bind(R.id.jmuti_tag_run)
    JMutiFrameLayout jmutiTagRun;
    @Bind(R.id.jmuti_tag_travel)
    JMutiFrameLayout jmutiTagTravel;
    @Bind(R.id.iv_toolbar_cover_bg)
    ImageView ivToolbarCoverBg;

    @Bind(R.id.s_bottom)
    Space sBottom;
    @Bind(R.id.iv_bootom_like)
    ImageView ivBottomLike;
    @Bind(R.id.civ_avatar)
    CircleImageView civAvatar;

    @Bind(R.id.iv_change_cover)
    ImageView ivChangeCover;
    @Bind(R.id.tv_info_qa_count)
    TextView tvInfoQaCount;
    @Bind(R.id.tv_qa_empty)
    TextView tvQaEmpty;
    @Bind(R.id.mlv_qa)
    MyListView mlvQa;
    @Bind(R.id.tv_qa_add_invate)
    TextView tvQaAddInvate;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;


    private boolean isCanEdit;
    private String user_id;
    private InfoBean infoBean;
    private List<String> alreadyPicLists = new ArrayList<>();
    private ArrayList<String> mResultPicPaths = new ArrayList<>();
    private PhotoPicAdapter picWallAdapter;
    private PhotoDialogHelper photoDialogHelper;
    private PhotoDialogHelper photoAvatarDialogHelper;

    private static final int SEND_DATA_INFO = 1;
    private static final int REQUEST_SEND_GIFT = 2;
    private static final int TAG_REQUEST_CODE_MY = 3;
    private static final int TAG_REQUEST_CODE_FOOD = 4;
    private static final int TAG_REQUEST_CODE_SINGER = 5;
    private static final int TAG_REQUEST_CODE_RUN = 6;
    private static final int TAG_REQUEST_CODE_TRAVEL = 7;
    private static final int ABOUT_ME_EDIT = 8;
    private static final int REQUEST_LIKE_UNFOLLOW = 9;
    private static final int REQUEST_LIKE_FOLLOW = 10;
    private static final int CHANGE_PIC_COVER = 11;
    private static final int PIC_WALL_COUNT = 12;
    private static final int QA_LIST_REQUEST_CODE = 13;
    private static final int REQUEST_MY_DATE = 14;
    private static final int INVATE_SUCCESS = 15;
    private static final int UPLOAD_PIC = 16;
    private static final int UPLOAD_SUCCESS = 17;
    private static final int REFRESH_INFO_EDIT = 100;

    private List<TextView> aboutMeInfoLists;    //关于我的封装
    private InfoGiftShowAdapter infoGiftShowAdapter;
    private AllGiftListBean allGiftListBean;
    private AllGiftAdapter allGiftAdapter;
    private GridView gvSendGift;
    private int myCoin;
    private String myNickname = "";
    private AllGiftListBean.DataBean.DataListBean itemGiftSendBean;
    private List<String> selectedTagMyLists = new ArrayList<>();
    private List<String> selectedTagFoodLists = new ArrayList<>();
    private List<String> selectedTagSingerLists = new ArrayList<>();
    private List<String> selectedTagRunLists = new ArrayList<>();
    private List<String> selectedTagTravelLists = new ArrayList<>();

    List<String> aboutMeDataLists = new ArrayList<>();  //关于我的数据的封装
    private OnLinePopPubAppointAdapter onLinePopPubAppointAdapter;
    private GridView gvPuv;
    private PhotoDialogHelper photoCoverDialogHelper;
    private Dialog dialog;
    private QuestionAnswerAdapter questionAnswerAdapter;
    private AppointBean appointBean;
    private ItemInvateDateAdapter itemInvateDateAdapter;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_person_info_editor;
    }

    @Override
    protected void initData() {
        Intent intent = getIntent();
        isCanEdit = intent.getBooleanExtra(IConsName.ISCANEDIT, false);
        if (isCanEdit) {
            user_id = SPUtils.getStringData(IConsName.USER_ID, "");
        } else {
            user_id = intent.getStringExtra(IConsName.USER_ID);
        }
        initAboutMe();
        sendDataRequest();
        setDefaultStatus();
    }

    /**
     * 将关于我的封装
     */
    private void initAboutMe() {
        aboutMeInfoLists = new ArrayList<>();
        aboutMeInfoLists.add(tvInfoAboutId);
        aboutMeInfoLists.add(tvInfoAboutNickname);
        aboutMeInfoLists.add(tvInfoAboutSex);
        aboutMeInfoLists.add(tvInfoAboutAge);
        aboutMeInfoLists.add(tvInfoAboutXingzuo);
        aboutMeInfoLists.add(tvInfoAboutHeigh);
        aboutMeInfoLists.add(tvInfoAboutJob);
        aboutMeInfoLists.add(tvInfoAboutPlace);
        aboutMeInfoLists.add(tvInfoAboutLove);
    }

    private void setDefaultStatus() {
        civAvatar.setOnClickListener(this);
        if (isCanEdit) {
            setTextStatus(tvInfoAuthPhoneEdit, R.color.c_129_143_255, "点击修改",false);
            setTextStatus(tvInfoAuthVideoEdit, R.color.c_129_143_255, "点击修改",false);
            setTextStatus(tvInfoAuthIdentifyEdit, R.color.c_129_143_255, "点击修改",false);
            setTextStatus(tvInfoAuthSkillEdit, R.color.c_129_143_255, "点击认证",false);
            ivChangeCover.setVisibility(View.VISIBLE);

            tvRightTitleBar.setVisibility(View.VISIBLE);

        } else {
            tvInfoAboutEdit.setVisibility(View.GONE);
            tvAboutTagMyEdit.setVisibility(View.INVISIBLE);
            tvAboutTagFoodEdit.setVisibility(View.INVISIBLE);
            tvAboutTagSingerEdit.setVisibility(View.INVISIBLE);
            tvAboutTagRunEdit.setVisibility(View.INVISIBLE);
            tvAboutTagTravelEdit.setVisibility(View.INVISIBLE);
        }

        if(isSelf()){
            relBottomRoot.setVisibility(View.GONE);
        }else{
            relBottomRoot.setVisibility(View.VISIBLE);
            sBottom.setVisibility(View.VISIBLE);
            getGiftList();

            UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
                @Override
                public void onSuccess(InfoBean infoBean) {
                    myCoin = Integer.parseInt(infoBean.getData().getCoin());
                    myNickname = infoBean.getData().getNickname();
                }
            });
            ivRightTitleBar.setVisibility(View.VISIBLE);
        }
        questionAnswerAdapter = new QuestionAnswerAdapter();
        mlvQa.setAdapter(questionAnswerAdapter);
        if(isCanEdit){
            mlvQa.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                    Intent intent = new Intent(InfoEditorPersonActivity.this,InfoQuestionItemActivity.class);
                    intent.putExtra("question",questionLists.get(i));
                    intent.putExtra("answer",answerLists.get(i));
                    intent.putStringArrayListExtra("questionLists",questionLists);
                    intent.putStringArrayListExtra("answerLists",answerLists);
                    intent.putExtra(IConsName.TYPE,1);
                    startActivityForResult(intent,QA_LIST_REQUEST_CODE);
                }
            });
        }
    }

    /**
     * @param targetView
     * @param colorResID
     * @param targerText
     * @param isVisiable 查看个人资料，非编辑状态，不可见
     */
    private void setTextStatus(TextView targetView, int colorResID, String targerText, boolean... isVisiable) {
        if (isVisiable.length > 0) {
            targetView.setVisibility(isVisiable[0] ? View.INVISIBLE : View.VISIBLE);
        }
        targetView.setText(targerText);
        targetView.setTextColor(getResources().getColor(colorResID));
    }

    private void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.USER_INFO, getInfoMap(), new MyOnResultListener(SEND_DATA_INFO));
    }

    /**
     * 拉取列表数据
     * @return
     */
    private Map<String, String> getInfoMap() {
        Map<String, String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, ""));
        if (!isSelf())
            map.put(IConsName.USER_ID, user_id);
        return map;
    }

    MyHandler handler = new MyHandler(this) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case SEND_DATA_INFO:
                    if (infoBean != null)
                        requestCompeleteSetData();
                    break;
                case REQUEST_SEND_GIFT:
                    if(infoGiftShowAdapter == null){
                        infoGiftShowAdapter = new InfoGiftShowAdapter();
                        gvSendGift.setAdapter(infoGiftShowAdapter);
                    }
                    tvInfoGiftEmpty.setVisibility(View.INVISIBLE);
                    if(tvInfoGiftCount != null)
                        tvInfoGiftCount.setText((Integer.parseInt((tvInfoGiftCount.getText().toString()))+ 1 )+ "");
                    infoGiftShowAdapter.addNewGift(itemGiftSendBean.getId(),itemGiftSendBean.getName(),itemGiftSendBean.getPic());
                if(dialog != null)
                    dialog.dismiss();
                ToastUtils.makeToast("赠送成功");
                    break;
                case REQUEST_LIKE_UNFOLLOW:
                    ivBottomLike.setBackgroundResource(R.drawable.info_new_attach1);
                    infoBean.getData().setRelation_status(0);
                    break;
                case REQUEST_LIKE_FOLLOW:
                    ivBottomLike.setBackgroundResource(R.drawable.info_new_attach2);
                    infoBean.getData().setRelation_status(1);
                    break;
                case IConstant.PHOTO_PIC_REQUEST_CODE:  //頭銜上傳成功
                    ToastUtils.makeToast("头像上传成功");
                    break;
                case CHANGE_PIC_COVER:
                    ToastUtils.makeToast("背景修改成功");
                    break;
                case REQUEST_MY_DATE:       //我的随心约请求成功
                    if(appointBean == null) return;
                    List<AppointBean.DataBean.DataListBean> data_list = appointBean.getData().getData_list();
                    if(data_list != null && data_list.size() > 0){
                        alertInvateDateDialog();
                    }else{
                        ToastUtils.makeToast("暂时没有随心约");
                    }
                    break;
                case INVATE_SUCCESS:
                    ToastUtils.makeToast("邀请成功");
                    break;
                case UPLOAD_PIC:
                    String pic_wall = (String) msg.obj;
                    OkHttpUtils.sendPostRequest(IConstant.USER_INFO, MapUtils.clear().addParams(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,"")).
                            addParams("pic_wall",pic_wall).getMap(),new MyOnResultListener(UPLOAD_PIC));
                    break;
                case UPLOAD_SUCCESS:
                    ToastUtils.makeToast("保存成功");
                    DialogUtils.loadingDismiss();
                    break;
            }
        }
    };

    private void alertInvateDateDialog() {
        final Dialog dialog = new Dialog(this, R.style.AlertDialogStyle);
        ListView listView = new ListView(this);
        listView.setDividerHeight(DensityUtil.dip2px(this,0.5f));
        listView.setBackgroundResource(R.color.bgcolor);
        listView.setDivider(this.getResources().getDrawable(R.color.divide_line));
        dialog.setCancelable(true);
        dialog.setContentView(listView);
        itemInvateDateAdapter = new ItemInvateDateAdapter();
        listView.setAdapter(itemInvateDateAdapter);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                String title = itemInvateDateAdapter.getItem(position).getTitle();
                invateUpLoadPic("邀请参加","是否邀请Ta参加我的随心约：" + title,title);
                if(dialog != null && dialog.isShowing())
                    dialog.dismiss();
            }
        });
        itemInvateDateAdapter.addData(appointBean.getData().getData_list(),true);
        dialog.show();
    }

    @OnClick({R.id.rel_info_skill, R.id.iv_info_skill_new, R.id.tv_info_skill_pub, R.id.tv_info_activi_pub,
            R.id.rel_info_activi_root, R.id.tv_info_appoint,R.id.tv_info_appoint_pub, R.id.tv_info_appoint_invate,R.id.tv_info_about_edit,
    R.id.tv_about_tag_my_edit,R.id.tv_about_tag_food_edit,R.id.tv_about_tag_singer_edit,R.id.tv_about_tag_run_edit,R.id.tv_about_tag_travel_edit,
    R.id.iv_bootom_chatting,R.id.iv_bootom_gift,R.id.iv_bootom_like,R.id.civ_avatar,
    R.id.tv_info_auth_phone_edit,R.id.tv_info_auth_video_edit,R.id.tv_info_auth_identify_edit,R.id.tv_info_auth_skill_edit,
    R.id.iv_change_cover,R.id.tv_qa_add_invate,R.id.tv_right_title_bar,R.id.iv_right_title_bar})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_info_skill:   //技能详情
                Intent intent = new Intent(this, PerSonSkillActivity.class);
                intent.putExtra("user_id",user_id);
                intent.putExtra(IConsName.TYPE,1);
                startActivity(intent);
                break;
            case R.id.iv_info_skill_new:    //自己新用户发表技能奖励

                break;
            case R.id.tv_info_skill_pub:     //发布技能
                startActivityForResult(new Intent(this, PlayerSkillChooseActivity.class),REFRESH_INFO_EDIT);
                break;
            case R.id.tv_info_activi_pub:   //发布动态
                startActivityForResult(new Intent(this,ActiviPublishActivity.class),REFRESH_INFO_EDIT);
                break;
            case R.id.rel_info_activi_root:    //点击动态详情
                Intent intentActivi = new Intent(this, PerSonSkillActivity.class);
                intentActivi.putExtra("user_id",user_id);
                intentActivi.putExtra(IConsName.TYPE,3);
                startActivityForResult(intentActivi,REFRESH_INFO_EDIT);
                break;
            case R.id.tv_info_appoint:  //随心约
                Intent intentAppoint = new Intent(this, PerSonSkillActivity.class);
                intentAppoint.putExtra("user_id",user_id);
                intentAppoint.putExtra(IConsName.TYPE,2);
                startActivityForResult(intentAppoint,REFRESH_INFO_EDIT);
                break;
            case R.id.tv_info_appoint_pub:      //发布随心约
                pubDate();
                break;
            case R.id.tv_info_appoint_invate:      //邀请别人来我的随心约
                if(infoBean == null) return;
                invateToMyDate();
                break;
            case R.id.tv_info_about_edit:       //我的详细资料编辑
                Intent intent1 = new Intent(this, InfoEditContentActivity.class);
                intent1.putStringArrayListExtra("mNineLists", (ArrayList<String>) aboutMeDataLists);
                startActivityForResult(intent1,ABOUT_ME_EDIT);
                break;
            case R.id.tv_about_tag_my_edit:     //Tag 个性标签
                jumpToTagActivity(R.array.tag_boy,selectedTagMyLists,TAG_REQUEST_CODE_MY);
                break;
            case R.id.tv_about_tag_food_edit:   //Tag 食物
                jumpToTagActivity(R.array.tag_food,selectedTagFoodLists,TAG_REQUEST_CODE_FOOD);
                break;
            case R.id.tv_about_tag_singer_edit:     //Tag 歌手
                jumpToTagActivity(R.array.tag_singer,selectedTagSingerLists,TAG_REQUEST_CODE_SINGER);
                break;
            case R.id.tv_about_tag_run_edit:    //Tag 运动
                jumpToTagActivity(R.array.tag_sport,selectedTagRunLists,TAG_REQUEST_CODE_RUN);
                break;
            case R.id.tv_about_tag_travel_edit:     ////Tag 旅游
                jumpToTagActivity(R.array.tag_travel,selectedTagTravelLists,TAG_REQUEST_CODE_TRAVEL);
                break;
            case R.id.iv_bootom_chatting:   //聊天
                if(RongIM.getInstance() != null && infoBean != null){
                    RongIM.getInstance().setCurrentUserInfo(new UserInfo(infoBean.getData().getId(),infoBean.getData().getNickname(), Uri.parse(infoBean.getData().getAvatar())));
                    RongIM.getInstance().startPrivateChat(this,user_id,infoBean.getData().getNickname());
                }
                break;
            case R.id.iv_bootom_gift:       //赠送礼物
                alertGiftPop();
                break;
            case R.id.iv_bootom_like:   //关注,喜欢
                setRelationShip();
                break;
            case R.id.civ_avatar:
                if(isCanEdit){
                    upLoadPhotoPic();
                }else{
                    if(infoBean == null) return;
                    if(!WddHelper.isUploadAvatar(infoBean.getData().getAvatar())){
                        DialogUtils.showDialog(this, "通知", "您好,玩多多是实名认证的平台,请上传头像!", null);
                        return;
                    }
                    ArrayList<String> list = new ArrayList<>();
                    list.add(infoBean.getData().getAvatar());
                    Intent intentAvatar = new Intent(InfoEditorPersonActivity.this, ShowPicActivity.class);
                    intentAvatar.putStringArrayListExtra("piclist", list);
                    intentAvatar.putExtra("position",0);
                    InfoEditorPersonActivity.this.startActivity(intentAvatar);
                }
                break;
            case R.id.tv_info_auth_phone_edit:
                editPhone();
                break;
            case R.id.tv_info_auth_video_edit:
                editVideo();
                break;
            case R.id.tv_info_auth_identify_edit:
                editIdentify();
                break;
            case R.id.tv_info_auth_skill_edit:
                editSkill();
                break;
            case R.id.iv_change_cover:
                if(photoCoverDialogHelper == null) {
                    photoCoverDialogHelper = new PhotoDialogHelper(InfoEditorPersonActivity.this);
                }
                photoCoverDialogHelper.setRequestCode(CHANGE_PIC_COVER).setCrop(true).show();
                break;
            case R.id.tv_qa_add_invate:
                Intent intentQa = new Intent(this,InfoQuestionActivity.class);
                intentQa.putStringArrayListExtra("questionLists",questionLists);
                intentQa.putStringArrayListExtra("answerLists",answerLists);
                intentQa.putExtra("isCanEdit",isCanEdit);
                intentQa.putExtra(IConsName.USER_ID,user_id);
                startActivityForResult(intentQa,QA_LIST_REQUEST_CODE);
                break;
            case R.id.tv_right_title_bar:
                tvRightTitleBarDialog();
                break;
            case R.id.iv_right_title_bar:
                ivRightTitleBarDialog();
                break;
        }
    }

    private void tvRightTitleBarDialog() {
        DialogUtils.loading(this,"保存中");
        final ArrayList<String> objects = new ArrayList<>();
        objects.addAll(alreadyPicLists);
        OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD, mResultPicPaths, new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                Message msg = Message.obtain();
                msg.what = UPLOAD_PIC;
                try {
                    JSONObject data = new JSONObject(result).getJSONObject("data");
                    if(data.has("path")){
                        String path =data.getString("path");
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
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                handler.sendMessage(msg);
            }

            @Override
            public void onFailure(int errCode,String errMsg) {

            }
        });
    }

    /**
     * 查看别人 弹窗
     */
    private void ivRightTitleBarDialog() {
        new ActionSheetDialog(this).builder()
                .addSheetItem("举报该用户", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        Intent intent2 = new Intent(InfoEditorPersonActivity.this, WarningActivity.class);
                        intent2.putExtra(IConsName.TYPE,"4");
                        intent2.putExtra("id",user_id);
                        startActivity(intent2);
                    }
                }).show();
    }

    /**
     * 邀请别人来我的随心约
     */
    private void invateToMyDate() {
        if(appointBean == null){
            OkHttpUtils.sendGetRequest(IConstant.USER_DATELIST,MapUtils.clear().addParams(IConsName.USER_ID,SPUtils.getStringData(IConsName.USER_ID,"")).getMap(),new MyOnResultListener(REQUEST_MY_DATE));
        }else{
            handler.sendEmptyMessage(REQUEST_MY_DATE);
        }
    }

    /**
     * 发布随心约
     */
    private void pubDate() {
        dialog = new Dialog(this, R.style.AlertDialogStyle);
        View v = View.inflate(this, R.layout.pop_online_appointment, null);
        dialog.setCancelable(true);
        dialog.setContentView(v);
        gvPuv = (GridView) v.findViewById(R.id.gv_pub_appoint);
        if(onLinePopPubAppointAdapter == null)
            onLinePopPubAppointAdapter = new OnLinePopPubAppointAdapter();
        gvPuv.setAdapter(onLinePopPubAppointAdapter);
        gvPuv.setOnItemClickListener(this);
        dialog.show();
    }

    private void editSkill() {
        if(infoBean == null) return;

        if(isCanEdit){
            Intent intentSkill = new Intent(this,AuthenticationSkillOrCarActivity.class);
            intentSkill.putExtra("type",infoBean.getData().getGender()== 1?1:2);
            startActivity(intentSkill);
        }else{     //邀请
            invateUpLoadPic("是否邀请他(她)上传技能认证?对方将会收到您的通知!","邀请您上传技能认证");
        }
    }

    private void editIdentify() {
        if(infoBean == null) return;

        if(isCanEdit){
            Intent intentCard = new Intent(this, SettingRealNameActivity.class);
            startActivity(intentCard);
        }else{      //邀请上传
            invateUpLoadPic("是否邀请他(她)上传身份证?对方将会收到您的通知!","邀请您上传身份证认证");
        }
    }

    private void editVideo() {
        if(infoBean == null) return;

        if(TextUtils.isEmpty(infoBean.getData().getVideo())){     //未认证视频
            if(isCanEdit){
                startActivity(new Intent(this, AuthenticationBeginActivity.class));
            }else{
                invateUpLoadPic("是否邀请他(她)上传视频认证?对方将会收到您的通知!","邀请您上传视频认证");
            }
        }else{
            String video_url = "";
            try {
                JSONObject jsonObject = new JSONObject(infoBean.getData().getVideo());
                if(jsonObject.has("video_url"))
                    video_url = jsonObject.getString("video_url");
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if(isCanEdit){
                Intent intent2 = new Intent(this, AuthenticationEditVideoActivity.class);
                intent2.putExtra(IConsName.ISCANEDIT,isCanEdit);
                intent2.putExtra("path",video_url);
                startActivity(intent2);
            }else{
                Intent intent2 = new Intent(this, VideoPlayActivity.class);
                intent2.putExtra("video",video_url);
                startActivity(intent2);
            }
        }
    }

    private void editPhone() {
        if(infoBean == null) return;

        if(isCanEdit){
            Intent intentPhone = new Intent(this, SettingMobileNumFirstActivity.class);
            if(TextUtils.isEmpty(infoBean.getData().getUsername())){ //绑定手机
                startActivity(intentPhone);
            }else{  //更换手机
                intentPhone.putExtra("phone",infoBean.getData().getUsername());
                intentPhone.putExtra(IConsName.TYPE,1);
                startActivity(intentPhone);
            }
        }else{  //邀请
            invateUpLoadPic("是否邀请他(她)手机绑定?对方将会收到您的通知!","邀请您手机绑定");
        }
    }

    /**
     * 上传头像
     */
    private void upLoadPhotoPic() {
        if(photoAvatarDialogHelper == null) {
            photoAvatarDialogHelper = new PhotoDialogHelper(InfoEditorPersonActivity.this);
        }
        photoAvatarDialogHelper.setCrop(true).show();
    }

    /**
      * 设置好友关系
      */
    private void setRelationShip() {
        if(infoBean == null || infoBean.getData() == null) return;
        final int relation_status = infoBean.getData().getRelation_status();
        DialogUtils.showDialog(InfoEditorPersonActivity.this, relation_status == 1 || relation_status == 2 ? "是否取消喜欢?" : "是否喜欢?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                follow(relation_status,user_id);
            }
        });
    }

    /**
      * 关注或者取消关注
      * @param relationStatus
      */
    private void follow(int relationStatus,String user_id) {
        if(relationStatus == 1 || relationStatus == 2){
            OkHttpUtils.sendPostRequest(IConstant.USER_UNFOLLOW, MapUtils.clear().addParams(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,"")).
                    addParams(IConsName.USER_ID,user_id).getMap(),new MyOnResultListener(REQUEST_LIKE_UNFOLLOW));
        }else{
            OkHttpUtils.sendPostRequest(IConstant.USER_FOLLOW, MapUtils.clear().addParams(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,"")).
                    addParams(IConsName.USER_ID,user_id).getMap(),new MyOnResultListener(REQUEST_LIKE_FOLLOW));
        }
    }

    private void jumpToTagActivity(int arrayResId,List<String> selectedTags ,int requestCode){
        Intent intent = new Intent(this, InfoEditTagActivity.class);
        intent.putExtra(IConsName.TYPE,requestCode);
        intent.putExtra("allTag",getResources().getStringArray(arrayResId));
        intent.putStringArrayListExtra("selectedTags", (ArrayList<String>) selectedTags);
        startActivityForResult(intent,requestCode);
    }

    /**
     * 赠送礼物 弹出框
     */
    private void alertGiftPop() {
        dialog = new Dialog(this,R.style.AlertDialogStyle);
        Window window = dialog.getWindow();
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = getWindowManager().getDefaultDisplay().getWidth();
        attributes.gravity = Gravity.CENTER;
        window.setAttributes(attributes);

        dialog.setCancelable(true);
        View v = View.inflate(this, R.layout.pop_info_send_gift, null);
        dialog.setContentView(v);
        gvSendGift = (GridView) v.findViewById(R.id.gv_send_gift);
        TextView tvCoin = (TextView) v.findViewById(R.id.tv_coin);
        TextView tvCharge = (TextView) v.findViewById(R.id.tv_charge);
        tvCoin.setText(myCoin + "玩币");
        tvCharge.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                jumpToChargeCoin();
            }
        });

        if(allGiftListBean != null){
            allGiftAdapter = new AllGiftAdapter();
            gvSendGift.setAdapter(allGiftAdapter);
        }
        gvSendGift.setOnItemClickListener(this);
        allGiftAdapter.addData(allGiftListBean.getData().getData_list(),true);
        dialog.show();
    }


    private void getGiftList() {
        OkHttpUtils.sendGetRequest(IConstant.ITEM_LIST, null, new OkHttpUtils.OnResultListener() {

            @Override
            public void onSuccess(String result) {
                allGiftListBean = GsonTools.changeGsonToBean(result, AllGiftListBean.class);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    /**
     * 数据加载完成填充数据
     */
    private void requestCompeleteSetData() {
        initTextWordShowDefault();

        if (infoBean != null) {
            tvTitle.setText(infoBean.getData().getNickname());

            if(!TextUtils.isEmpty(infoBean.getData().getCover_pic()))
                Glide.with(this).load(infoBean.getData().getCover_pic()).centerCrop().into(ivToolbarCoverBg);
            Glide.with(this).load(infoBean.getData().getAvatar()).centerCrop().into(civAvatar);

            setSkillData(infoBean.getData());

            setPicWallData(infoBean.getData());

            setActiviData(infoBean.getData());

            setAppointData(infoBean.getData());

            setAuthData(infoBean.getData());

            setAboutMeInfo(getAboutMeInfoDataLsit(infoBean.getData()));

            setTagInfo(infoBean.getData());

            setGiftWall(infoBean.getData());

            if(!isSelf()){
                setRelationStatus(infoBean.getData());
            }

            setQaData(infoBean.getData().getQa_list());
        }
    }

    /**
     * 问答
     * @param qa_list
     */
    ArrayList<String> questionLists = new ArrayList<>();
    ArrayList<String> answerLists = new ArrayList<>();
    private void setQaData(String qa_list) {
        if(TextUtils.isEmpty(qa_list)){
            tvInfoQaCount.setText("0");
            tvQaEmpty.setVisibility(View.VISIBLE);
        }else{
            tvQaEmpty.setVisibility(View.GONE);
            try {
                JSONArray jsonArray = new JSONArray(qa_list);
                for (int i = 0; i < jsonArray.length(); i++) {
                    questionLists.add(jsonArray.getJSONObject(i).getString("q"));
                    answerLists.add(jsonArray.getJSONObject(i).getString("a"));
                    questionAnswerAdapter.addData(questionLists,answerLists);
                }
                tvInfoQaCount.setText(jsonArray.length() + "");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        if(isCanEdit){
            tvQaAddInvate.setText("添加问题");
        }else{
            tvQaAddInvate.setText("邀请Ta回答问题");
        }
    }

    /**
     * 初始化好友关系
     * @param data
     */
    private void setRelationStatus(InfoBean.DataBean data) {
        int relationStatus = data.getRelation_status();
        if(relationStatus == 0){
            ivBottomLike.setBackgroundResource(R.drawable.info_new_attach1);
        }else if(relationStatus == 1){
            ivBottomLike.setBackgroundResource(R.drawable.info_new_attach2);
        } else if(relationStatus == 2){
            ivBottomLike.setBackgroundResource(R.drawable.info_new_attach4);
        }
    }

    /**
     * 初始化标签数据
     * @param data
     */
    private void setTagInfo(InfoBean.DataBean data) {
        initTagInfo(jmutiTagMy,data.getCharacter_interest(),selectedTagMyLists,R.drawable.shape_tag_my);
        initTagInfo(jmutiTagFood,data.getFood_interest(),selectedTagFoodLists,R.drawable.shape_tag_food);
        initTagInfo(jmutiTagSinger,data.getStar_interest(),selectedTagSingerLists,R.drawable.shape_tag_singer);
        initTagInfo(jmutiTagRun,data.getSports_interest(),selectedTagRunLists,R.drawable.shape_tag_sport);
        initTagInfo(jmutiTagTravel,data.getPlace_interest(),selectedTagTravelLists,R.drawable.shape_tag_travel);

    }

    private void initTagInfo(JMutiFrameLayout jmutiTagMy, String data, List<String> selectedLists, int drawableResID) {
        try {
            selectedLists.clear();
            JSONArray jsonArray = new JSONArray(data);
            for (int i = 0; i < jsonArray.length(); i++) {
                selectedLists.add(jsonArray.getString(i));
                jmutiTagMy.setValues(selectedLists,drawableResID);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /**
     * 礼物墙展示
     * @param data
     * @param data
     */
    private void setGiftWall(InfoBean.DataBean data) {
        tvInfoGiftCount.setText(data.getUser_item_num() + "");
        if(infoGiftShowAdapter == null){
            infoGiftShowAdapter = new InfoGiftShowAdapter();
            mgvInfoGiftWall.setAdapter(infoGiftShowAdapter);
        }
        List<InfoBean.DataBean.UserItemBean> user_item = data.getUser_item();
        if(user_item != null && user_item.size() != 0){
            tvInfoGiftEmpty.setVisibility(View.GONE);
            infoGiftShowAdapter.addData(user_item,true);
        }else{
            tvInfoGiftEmpty.setVisibility(View.VISIBLE);
        }
    }

    private List<String> getAboutMeInfoDataLsit(InfoBean.DataBean data) {
        aboutMeDataLists.clear();
        aboutMeDataLists.add(data.getId());
        aboutMeDataLists.add(!TextUtils.isEmpty(data.getNickname()) ? data.getNickname() : "--");
        aboutMeDataLists.add(data.getGender() == 1 ? "男":data.getGender() == 2? "女" : "--");
        aboutMeDataLists.add(!TextUtils.isEmpty(data.getAge()) ? data.getAge() : "--");
        aboutMeDataLists.add(!TextUtils.isEmpty(data.getConstellation()) ? data.getConstellation() : "--");
        aboutMeDataLists.add(!TextUtils.isEmpty(data.getHeight() + "") ? (data.getHeight() + "") : "--");
        aboutMeDataLists.add(!TextUtils.isEmpty(data.getProfession()) ? data.getProfession() : "--");
        aboutMeDataLists.add(!TextUtils.isEmpty(data.getCity()) ? data.getCity() : "--");
        aboutMeDataLists.add(TextUtils.equals("1", data.getLoveinfo()) ? "单身" : TextUtils.equals("2", data.getLoveinfo()) ? "已婚" : "未知");
        return aboutMeDataLists;
    }

    /**
     * 设置关于我的基本的信息
     *
     * @param data
     */
    private void setAboutMeInfo(List<String> data) {
        if (data.size() == aboutMeInfoLists.size()) {
            for (int i = 0; i < aboutMeInfoLists.size(); i++) {
                aboutMeInfoLists.get(i).setText(data.get(i));
            }
        }
    }

    /**
     * 初始化认证
     *
     * @param data
     */
    private void setAuthData(InfoBean.DataBean data) {
        TvDrawableUtils.setTvDrawableLeft(tvInfoAuthPhone, R.color.c_208_210_211, !TextUtils.isEmpty(data.getUsername()) ? R.drawable.info_new_phone_select : R.drawable.info_new_phone_normal);
        TvDrawableUtils.setTvDrawableLeft(tvInfoAuthVideo, R.color.c_208_210_211, !TextUtils.isEmpty(data.getVideo()) ? R.drawable.info_new_video_select : R.drawable.info_new_video_normal);
        TvDrawableUtils.setTvDrawableLeft(tvInfoAuthIdentify, R.color.c_208_210_211, TextUtils.equals("1", data.getIdcard_ok()) ? R.drawable.info_new_identify_select : R.drawable.info_new_identify_normal);
        TvDrawableUtils.setTvDrawableLeft(tvInfoAuthSkill, R.color.c_208_210_211, TextUtils.equals("1", data.getVideo()) ? R.drawable.info_new_skill_auth_select : R.drawable.info_new_skill_auth_normal);

        if(isCanEdit){
            setTextStatus(tvInfoAuthPhoneEdit, R.color.c_129_143_255, TextUtils.isEmpty(data.getUsername())?"点击绑定":"点击修改",false);
            setTextStatus(tvInfoAuthVideoEdit, R.color.c_129_143_255, TextUtils.isEmpty(data.getVideo())?"点击认证":"点击修改",false);
            setTextStatus(tvInfoAuthIdentifyEdit, R.color.c_129_143_255, TextUtils.equals("1", data.getIdcard_ok())?"点击修改":"点击认证",false);
            setTextStatus(tvInfoAuthSkillEdit, R.color.c_129_143_255, TextUtils.equals("1", data.getVideo())?"点击修改":"点击认证",false);
        }else if(!isSelf()){
            setTextStatus(tvInfoAuthPhoneEdit, R.color.c_129_143_255, "点击邀请", !TextUtils.isEmpty(data.getUsername()));
            setTextStatus(tvInfoAuthVideoEdit, R.color.c_129_143_255, "点击邀请", !TextUtils.isEmpty(data.getVideo()));
            setTextStatus(tvInfoAuthIdentifyEdit, R.color.c_129_143_255, "点击邀请", TextUtils.equals("1", data.getIdcard_ok()));
            setTextStatus(tvInfoAuthSkillEdit, R.color.c_129_143_255, "点击邀请", TextUtils.equals("1", data.getVideo()));
        }
    }

    /**
     * 动态数据
     * @param data
     */
    private void setAppointData(InfoBean.DataBean data) {
        InfoBean.DataBean.UserDateBean user_date = data.getUser_date();
        if (user_date == null) {
            tvInfoAppoint.setVisibility(View.INVISIBLE);
            tvInfoAppointEmpty.setVisibility(View.VISIBLE);
            if(isCanEdit){
                tvInfoAppointPub.setVisibility(View.VISIBLE);
                tvInfoAppointInvate.setVisibility(View.GONE);
            }else{
                tvInfoAppointInvate.setVisibility(View.VISIBLE);
            }
        } else {
            tvInfoAppoint.setVisibility(View.VISIBLE);
            tvInfoAppointEmpty.setVisibility(View.INVISIBLE);
            tvInfoAppoint.setText(user_date.getTitle());
            if (isCanEdit) {
                tvInfoAppointPub.setVisibility(View.VISIBLE);
                tvInfoAppointInvate.setVisibility(View.GONE);
            } else {
                tvInfoAppointInvate.setVisibility(View.VISIBLE);
            }
        }
    }

    /**
     * 设置动态的数据
     * @param data
     */
    private void setActiviData(InfoBean.DataBean data) {
        InfoBean.DataBean.UserNewsBean user_news = data.getUser_news();
        if (user_news == null) {   // 没有动态
            relInfoActiviRoot.setVisibility(View.INVISIBLE);
            tvInfoActiviPub.setVisibility(View.VISIBLE);
            ivInfoActiviRight.setVisibility(View.INVISIBLE);
            if (!isCanEdit) {
                tvInfoActiviPub.setText("暂无动态哦~");
                tvInfoActiviPub.setCompoundDrawablePadding(0);
                tvInfoActiviPub.setCompoundDrawables(null, null, null, null);
            }
        } else {
            relInfoActiviRoot.setVisibility(View.VISIBLE);
            ivInfoActiviRight.setVisibility(View.VISIBLE);
            if (user_news.getPics()!= null && user_news.getPics().size() == 0) {    //有动态，无图
                llINfoActiviOnlyText.setVisibility(View.VISIBLE);
                gvActiviPic.setVisibility(View.INVISIBLE);
                tvInfoActiviONlyText.setText(user_news.getContent());
            } else {                                                                 //最新动态是图片
                llINfoActiviOnlyText.setVisibility(View.INVISIBLE);
                gvActiviPic.setVisibility(View.VISIBLE);

                int width = getWindowManager().getDefaultDisplay().getWidth();
                int itemWidth = (width - DensityUtil.dip2px(this, 154)) / 4;
                ItemPicAdapter itemPicAdapter = new ItemPicAdapter(user_news.getPics(),itemWidth);
                gvActiviPic.setAdapter(itemPicAdapter);
                gvActiviPic.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        Intent intentActivi = new Intent(InfoEditorPersonActivity.this, PerSonSkillActivity.class);
                        intentActivi.putExtra("user_id",user_id);
                        intentActivi.putExtra(IConsName.TYPE,3);
                        startActivity(intentActivi);
                    }
                });
            }
        }
    }

    private void setPicWallData(InfoBean.DataBean data) {
        alreadyPicLists.clear();
        try {
            JSONArray obj = new JSONArray(data.getPic_wall());
            for (int i = 0; i < obj.length(); i++) {
                alreadyPicLists.add(obj.getString(i));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        tvInfoPhotoCount.setText((alreadyPicLists.size() + mResultPicPaths.size()) + "");
        if (picWallAdapter == null) {
            picWallAdapter = new PhotoPicAdapter(alreadyPicLists, PIC_WALL_COUNT, 1, new PhotoPicAdapter.OnDeleteListen() {
                @Override
                public void onDelete(int deletePosition, boolean... isDeleteFromNet) {
                    if (isDeleteFromNet[0]) {
                        alreadyPicLists.remove(deletePosition);
                    } else {
                        mResultPicPaths.remove(deletePosition);
                    }
                    tvInfoPhotoCount.setText((alreadyPicLists.size() + mResultPicPaths.size()) + "");
                }
            }, isCanEdit);
            int width = getWindowManager().getDefaultDisplay().getWidth();
            int itemWidth = (width - DensityUtil.dip2px(this,120))/4;
            picWallAdapter.setWidth(itemWidth);
            mgvInfoPhoto.setAdapter(picWallAdapter);
            mgvInfoPhoto.setOnItemClickListener(this);
        }
    }

    private void setSkillData(InfoBean.DataBean data) {
        InfoBean.DataBean.UserGiftBean user_gift = data.getUser_gift();
        if (isSelf()) {
            if (user_gift == null) {
                relInfoSkill.setVisibility(View.INVISIBLE);
                ivInfoSkillNew.setVisibility(View.VISIBLE);
            } else {
                relInfoSkill.setVisibility(View.VISIBLE);
                ivInfoSkillNew.setVisibility(View.INVISIBLE);
                Glide.with(this).load(user_gift.getCover_pic()).centerCrop().into(itemIvPhoto);
                itemTvTitle.setText(user_gift.getTitle());
                itemTvTime.setText("类型 " + (TextUtils.isEmpty(user_gift.getGift_tag_name()) ? "其他" : user_gift.getGift_tag_name()));
                itemTvMoney.setText("价格 " + user_gift.getFee());
            }
            tvInfoSkillPub.setVisibility(View.VISIBLE);
        } else {
            if (user_gift == null) {
                tvInfoSkillEmpty.setVisibility(View.VISIBLE);
            } else {
                relInfoSkill.setVisibility(View.VISIBLE);
                ivInfoSkillNew.setVisibility(View.INVISIBLE);
                Glide.with(this).load(user_gift.getCover_pic()).centerCrop().into(itemIvPhoto);
                itemTvTitle.setText(user_gift.getTitle());
                itemTvTime.setText("类型 " + (TextUtils.isEmpty(user_gift.getGift_tag_name()) ? "其他" : user_gift.getGift_tag_name()));
                itemTvMoney.setText(user_gift.getFee());
            }
            tvInfoSkillPub.setVisibility(View.GONE);
        }
    }

    /**
     * 区别别人或者自己 文案显示区别
     */
    private void initTextWordShowDefault() {
        InfoBean.DataBean data = infoBean.getData();
        if (data == null) return;
        tvInfoSkillName.setText(isSelf() ? "我的技能" : "Ta的技能");

        tvInfoSkillCount.setText(data.getUser_gift_num());
        tvInfoActiviCount.setText(data.getUser_news_num());
        tvInfoAppointCount.setText(data.getUser_date_num());
    }

    /**
     * 是否是自己
     *
     * @return
     */
    private boolean isSelf() {
        return isCanEdit || TextUtils.equals(SPUtils.getStringData(IConsName.USER_ID, ""), user_id);
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (parent == mgvInfoPhoto) {       //picwall
            picWallOnItemClick(position);
        }else if(parent == gvSendGift){     //赠送礼物
            sendItemGiftMakeSure(position);
        }else if(parent == gvPuv){      //发布随心约
            sendItemPubDate(position);
        }
    }

    /**
     * 随心约item
     * @param position
     */
    private void sendItemPubDate(final int position) {
        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                if(WddHelper.isUploadAvatar(infoBean.getData().getAvatar())){
                    Intent intent = new Intent(InfoEditorPersonActivity.this,OnLinePublishAppointmentActivity.class);
                    intent.putExtra(IConsName.TYPE,position);
                    startActivityForResult(intent,REFRESH_INFO_EDIT);
                }else{
                    new com.wanduoduo.utils.AlertDialog(InfoEditorPersonActivity.this).builder()
                            .setMsg("亲，完善头像才能发布随心约哦~快去上传真人头像吧！")
                            .setPositiveButton("知道了", new View.OnClickListener() {
                                @Override
                                public void onClick(View v) {

                                }
                            }).show();
                }
            }
        });
        if(dialog != null)
            dialog.dismiss();
    }

    private void sendItemGiftMakeSure(int position) {
        itemGiftSendBean = allGiftAdapter.getItem(position);
        if(Integer.parseInt(itemGiftSendBean.getPrice()) > myCoin){
            jumpToChargeCoin();
            return;
        }

        DialogUtils.showDialog(InfoEditorPersonActivity.this, "确定赠送", allGiftAdapter.getItem(position).getName() + " *1", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                OkHttpUtils.sendPostRequest(IConstant.SEND_ITEM, getSendGiftMap(itemGiftSendBean.getId(),1), new MyOnResultListener(REQUEST_SEND_GIFT));
            }
        });
    }

    private Map<String, String> getSendGiftMap(String item_id,int num) {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.USER_ID,user_id);
        map.put("item_id",item_id);
        map.put("num",num + "");
        return map;
    }

    private void picWallOnItemClick(int i) {
        if (isCanEdit) {
            if ((alreadyPicLists.size() + mResultPicPaths.size()) < picWallAdapter.getCount() && i == (picWallAdapter.getCount() - 1)) {
                if (photoDialogHelper == null)
                    photoDialogHelper = new PhotoDialogHelper(InfoEditorPersonActivity.this);
                photoDialogHelper.setRequestCode(PIC_WALL_COUNT).setMaxPicCount(PIC_WALL_COUNT - mResultPicPaths.size() - alreadyPicLists.size()).show();
            } else {
                Intent intent = new Intent(BaseApp.getContext(), ShowPicActivity.class);
                intent.putExtra("kind", 2);
                intent.putStringArrayListExtra("piclist", (ArrayList<String>) alreadyPicLists);
                intent.putStringArrayListExtra("bimp", mResultPicPaths);
                intent.putExtra("position", i);
                startActivity(intent);
            }
        } else {
            if (alreadyPicLists.size() < picWallAdapter.getCount() && i == (picWallAdapter.getCount() - 1)) {
                invateUpLoadPic("是否邀请他(她)上传照片?对方将会收到您的通知!","邀请您上传照片");
            } else {
                Intent intent = new Intent(BaseApp.getContext(), ShowPicActivity.class);
                intent.putStringArrayListExtra("piclist", (ArrayList<String>) alreadyPicLists);
                intent.putExtra("position", i);
                startActivity(intent);
            }
        }
    }

    private class MyOnResultListener implements OkHttpUtils.OnResultListener {
        private int sendDataCode;

        public MyOnResultListener(int sendDataCode) {
            this.sendDataCode = sendDataCode;
        }

        @Override
        public void onSuccess(String result) {
            switch (sendDataCode) {
                case SEND_DATA_INFO:
                    infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                    handler.sendEmptyMessage(SEND_DATA_INFO);
                    break;
                case REQUEST_SEND_GIFT:
                    handler.sendEmptyMessage(REQUEST_SEND_GIFT);
                    break;
                case REQUEST_LIKE_UNFOLLOW:
                    handler.sendEmptyMessage(REQUEST_LIKE_UNFOLLOW);
                    break;
                case REQUEST_LIKE_FOLLOW:
                    handler.sendEmptyMessage(REQUEST_LIKE_FOLLOW);
                    break;
                case REQUEST_MY_DATE:
                    appointBean = GsonTools.changeGsonToBean(result, AppointBean.class);
                    handler.sendEmptyMessage(REQUEST_MY_DATE);
                    break;
                case UPLOAD_PIC:
                    handler.sendEmptyMessage(UPLOAD_SUCCESS);
                    break;
            }
        }

        @Override
        public void onFailure(int errCode, String errMsg) {
            handler.sendEmptyMessage(UPLOAD_SUCCESS);
        }
    }

    /**
     * 邀请上传照片
     */
    private void invateUpLoadPic(String invateMsg, String invateContentn) {
        invateUpLoadPic("邀请上传",invateMsg,invateContentn);
    }

    private void invateUpLoadPic(String inVateTiele,String invateMsg, final String invateContentn) {
        DialogUtils.showDialog(this, inVateTiele,invateMsg , new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                OkHttpUtils.sendPostRequest(IConstant.SEND_MESSAGE, getInvatePicMap(invateContentn), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        handler.sendEmptyMessage(INVATE_SUCCESS);
                    }

                    @Override
                    public void onFailure(int errCode, String errMsg) {

                    }
                });
            }
        });
    }

    private Map<String, String> getInvatePicMap(String invateContentn) {
        Map<String, String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, ""));
        String s = !TextUtils.isEmpty(myNickname) ? myNickname : "";
        map.put("message", s + invateContentn);
        map.put(IConsName.USER_ID, user_id);
        map.put("system_create_time", getSdfTime());
        return map;
    }

    private String getSdfTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH;mm:ss");
        long l = System.currentTimeMillis();
        return sdf.format(new Date(l));
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case PIC_WALL_COUNT:
                if (data != null && data.getBooleanExtra(IConsName.SUCCESS, false)) {
                    ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
                    for (TImage image : images) {
                        mResultPicPaths.add(image.getPath());
                    }
                    tvInfoPhotoCount.setText((alreadyPicLists.size() + mResultPicPaths.size()) + "");
                    picWallAdapter.addLocalPics(mResultPicPaths);
                }
                break;
            case IConstant.PHOTO_PIC_REQUEST_CODE:
                ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
                Glide.with(InfoEditorPersonActivity.this).load(new File(images.get(0).getPath())).centerCrop().into(civAvatar);
                userAvatartUpLoad(images.get(0).getPath());
                break;
            case CHANGE_PIC_COVER:
                ArrayList<TImage> images1 = (ArrayList<TImage>) data.getSerializableExtra("images");
                Glide.with(InfoEditorPersonActivity.this).load(new File(images1.get(0).getPath())).centerCrop().into(ivToolbarCoverBg);
                userCoverChangePicUpLoad(images1.get(0).getPath());
                break;
            case TAG_REQUEST_CODE_MY:
                setTvResult(data,jmutiTagMy,R.drawable.shape_tag_my,selectedTagMyLists);
                break;
            case TAG_REQUEST_CODE_FOOD:
                setTvResult(data,jmutiTagFood,R.drawable.shape_tag_food,selectedTagFoodLists);
                break;
            case TAG_REQUEST_CODE_SINGER:
                setTvResult(data,jmutiTagSinger,R.drawable.shape_tag_singer,selectedTagSingerLists);
                break;
            case TAG_REQUEST_CODE_RUN:
                setTvResult(data,jmutiTagRun,R.drawable.shape_tag_sport,selectedTagRunLists);
                break;
            case TAG_REQUEST_CODE_TRAVEL:
                setTvResult(data,jmutiTagTravel,R.drawable.shape_tag_travel,selectedTagTravelLists);
                break;
            case ABOUT_ME_EDIT:
                ArrayList<String> mNineLists = data.getStringArrayListExtra("mNineLists");
                if(mNineLists != null ){
                    aboutMeDataLists.clear();
                    aboutMeDataLists.addAll(mNineLists);
                    setAboutMeInfo(aboutMeDataLists);
                }
                break;
            case REFRESH_INFO_EDIT:
                sendDataRequest();
                break;
            case QA_LIST_REQUEST_CODE:
                if(data != null){
                    questionLists.clear();
                    answerLists.clear();
                    questionLists.addAll(data.getStringArrayListExtra("questionLists"));
                    answerLists.addAll(data.getStringArrayListExtra("answerLists"));
                    if(questionAnswerAdapter != null)
                        questionAnswerAdapter.addData(questionLists,answerLists);
                    tvQaEmpty.setVisibility(questionLists.isEmpty()?View.VISIBLE:View.GONE);
                    tvInfoQaCount.setText(questionLists.size() +"");
                }
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void userCoverChangePicUpLoad(String path) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(path);
        OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD, arrayList, new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                JSONObject data = null;
                try {
                    data = new JSONObject(result).getJSONObject("data");
                    if(data != null && data.has("path")){
                        JSONArray pathObj = new JSONArray(data.getString("path"));
                        OkHttpUtils.sendPostRequest(IConstant.USER_INFO, getCoverMap(pathObj.getString(0)), new OkHttpUtils.OnResultListener() {
                            @Override
                            public void onSuccess(String result) {
                                handler.sendEmptyMessage(CHANGE_PIC_COVER);
                            }

                            @Override
                            public void onFailure(int errCode, String errMsg) {

                            }
                        });
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String,String> getCoverMap(String urlPath) {
        Map<String, String> map = new HashMap<>();
        map.put("cover_pic",urlPath);
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        return map;
    }

    private void userAvatartUpLoad(String path) {
        OkHttpUtils.sendPostAvatar(IConstant.USER_AVATAR,path, new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                handler.sendEmptyMessage(IConstant.PHOTO_PIC_REQUEST_CODE);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private void setTvResult(Intent data,JMutiFrameLayout jMuty,int drawableResID,List<String> list) {
        if(data != null){
            ArrayList<String> selectedTagLists = data.getStringArrayListExtra("selectedTagLists");
            list.clear();
            if (selectedTagLists != null){
                list.addAll(selectedTagLists);
            }
            jMuty.setValues(list,drawableResID);
        }
    }

    private void jumpToChargeCoin() {
        Intent intent = new Intent(InfoEditorPersonActivity.this, PlayCoinActivity.class);
        intent.putExtra("coin",myCoin);
        startActivityForResult(intent,1);
    }

    @Override
    protected void onDestroy() {
        handler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}