package com.wanduoduo.ui.skill;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.adapter.index.PersonAbilityAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.IndexGiftListBean;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.fragment.personability.PerSonSkillFragment;
import com.wanduoduo.fragment.personability.PlayerEvaluationFragment;
import com.wanduoduo.fragment.personability.ServiceInstoduceFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.appoint.WarningActivity;
import com.wanduoduo.ui.index.ProPicActivity;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GiftNameUtils;
import com.wanduoduo.utils.PopWindowUtils;
import com.wanduoduo.utils.String2ListUtlis;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.view.SelectServerTimeView;
import com.wanduoduo.widget.ActionSheetDialog;
import com.wanduoduo.widget.CircleImageView;

import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;

public class PersonAbilityActivity extends BaseActivity implements ViewPager.OnPageChangeListener, View.OnClickListener {

    @Bind(R.id.viewpager)
    ViewPager viewPager;
    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;
    @Bind(R.id.container_ll)
    LinearLayout containerLL;
    @Bind(R.id.dot_view)
    View redDotView;
    @Bind(R.id.tv_service_desc)
    TextView tvServiceDesc;
    @Bind(R.id.tv_player_discuss)
    TextView tvPlayerDiscuss;
    @Bind(R.id.tv_other_ability)
    TextView tvOtherAbility;
    @Bind(R.id.tv_desc_content)
    TextView tvDescContent;
    @Bind(R.id.tv_price)
    TextView tvPrice;
    @Bind(R.id.iv_avctor)
    CircleImageView ivAvctor;
    @Bind(R.id.tv_name)
    TextView tvName;
    @Bind(R.id.tv_server_count)
    TextView tvServerCount;
    @Bind(R.id.tv_age)
    TextView tvAge;
    @Bind(R.id.tv_order)
    TextView tvOrder;
    @Bind(R.id.rel_pro)
    RelativeLayout relPro;
    @Bind(R.id.tv_total_price)
    TextView tvTotalPrice;
    @Bind(R.id.tv_tag_name)
    TextView tvTagName;
    @Bind(R.id.rel_person_info)
    RelativeLayout relPersonInfo;
    private int picNums;
    public IndexGiftListBean.DataBean.DataListBean itemDatas;  //  每个item的数据集合
    private PopupWindow popupWindowCount;
    private PopupWindow popupWindowServerTime;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_person_ability;
    }

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.ji_neng_xiang_qing));
        ivRightTitleBar.setImageDrawable(getResources().getDrawable(R.drawable.share));
        itemDatas = getIntent().getParcelableExtra("itemdata");

        List<String> videoList = String2ListUtlis.string2List(itemDatas.getGift_video());
        List<String> giftList = String2ListUtlis.string2List(itemDatas.getGift_pic());
        picNums = /*videoList.size() + */giftList.size();
        setDots();
        PersonAbilityAdapter personAbilityAdapter = new PersonAbilityAdapter(videoList,giftList);
        viewPager.setAdapter(personAbilityAdapter);
        viewPager.setOnPageChangeListener(this);

        setDrawableDeauflt();
        TvDrawableUtils.setTvDrawableTop(tvServiceDesc, R.color.c_mei_hong, R.drawable.service_introduce_selected);
        replaceFragment(new ServiceInstoduceFragment(isOnline()));

        initItemData();
        if(TextUtils.isEmpty(itemDatas.getPro_pic())){
            relPro.setVisibility(View.GONE);
        }
        GiftNameUtils.getTagName(itemDatas.getGift_tag_id(), new GiftNameUtils.OnNameCompeleListener() {
            @Override
            public void onCompelte(String name) {
                tvTagName.setText(name);
            }
        });
    }


    private void initItemData() {
        relPersonInfo.setBackgroundColor(Color.parseColor("#19232d"));
        tvDescContent.setText(itemDatas.getTitle());
        tvPrice.setText(itemDatas.getFee());
        tvName.setText(itemDatas.getOrganizer().getNickname());
        tvServerCount.setText("此技能共施展" + (itemDatas.getServer_count() == null ? 0 :itemDatas.getServer_count()) +"次");
        Glide.with(this).load(itemDatas.getOrganizer().getAvatar()).centerCrop().into(ivAvctor);
        int gender = itemDatas.getOrganizer().getGender();
        if(gender == 1){
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_male);
            tvAge.setBackgroundResource(R.drawable.shape_age_male);
        }else if(gender == 2){
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_female);
            tvAge.setBackgroundResource(R.drawable.shape_age_female);
        }
       tvAge.setText(itemDatas.getOrganizer().getAge());
        tvTotalPrice.setText(itemDatas.getFee());
    }

    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
    private void setDots() {
        for (int i = 0; i < picNums; i++) {
            View view = new View(this);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(DensityUtil.dip2px(this, 7), DensityUtil.dip2px(this, 7));
            if (i != 0) {
                params.leftMargin = DensityUtil.dip2px(this, 9);
            }
            view.setLayoutParams(params);
            view.setBackground(getResources().getDrawable(R.drawable.shape_dot_normal));
            containerLL.addView(view);
        }
    }

    @OnClick({R.id.tv_service_desc, R.id.tv_player_discuss, R.id.tv_other_ability, R.id.tv_order, R.id.rel_person_info,R.id.rel_pro,
            R.id.iv_right_title_bar})
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.tv_service_desc:
                setDrawableDeauflt();
                TvDrawableUtils.setTvDrawableTop(tvServiceDesc, R.color.c_mei_hong, R.drawable.service_introduce_selected);
                replaceFragment(new ServiceInstoduceFragment(isOnline()));
                break;
            case R.id.tv_player_discuss:
                setDrawableDeauflt();
                TvDrawableUtils.setTvDrawableTop(tvPlayerDiscuss, R.color.c_mei_hong, R.drawable.player_evaluation_selected);
                replaceFragment(new PlayerEvaluationFragment(itemDatas.getId()));
                break;
            case R.id.tv_other_ability:
                setDrawableDeauflt();
                TvDrawableUtils.setTvDrawableTop(tvOtherAbility, R.color.c_mei_hong, R.drawable.other_skills_selected);
                replaceFragment(new PerSonSkillFragment(itemDatas.getOrganizer().getId(),false,itemDatas.getId()));
                break;
            case R.id.viewpager:

                break;
            case R.id.tv_order:     //下订单
                selectServerTime();
                break;
            case R.id.rel_person_info:
                Intent intent1 = new Intent(this, InfoEditorPersonActivity.class);
                intent1.putExtra(IConsName.ISCANEDIT,false);
                intent1.putExtra(IConsName.USER_ID,itemDatas.getOrganizer().getId());
                startActivity(intent1);
                break;
            case R.id.rel_pro:      //专业技能
                Intent intent = new Intent(this,ProPicActivity.class);
                intent.putExtra("pro_pic",itemDatas.getPro_pic());
                startActivity(intent);
                break;
            case R.id.iv_right_title_bar:
                alertRightTitleBarDialog();
                break;
        }
    }

    /**
     * 右边标题栏弹出框
     */
    private void alertRightTitleBarDialog() {
        new ActionSheetDialog(this).builder()
                .addSheetItem("活动举报", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        if(itemDatas == null){
                            ToastUtils.makeToast("加载数据中");
                        }else{
                            Intent intent2 = new Intent(PersonAbilityActivity.this, WarningActivity.class);
                            intent2.putExtra(IConsName.TYPE,"1");
                            intent2.putExtra("id",itemDatas.getId());
                            startActivity(intent2);
                        }
                    }
                }).show();
    }

    /**
     * 选择服务时间
     */
    private void selectServerTime() {
        if(IConstant.COMMUNICATE_FIRST.equals(itemDatas.getServer_time_type())){        //需指定时间
            String server_time = itemDatas.getServer_time();
            String selectedTime = "";
            SelectServerTimeView selectServerTimeView = new SelectServerTimeView(server_time, selectedTime,itemDatas.getFee(), isOnline());
            View rootView = selectServerTimeView.getRootView();
            selectServerTimeView.setData(getPlayerInfoBean());
//            setWindowAphla(0.7f);
            popupWindowServerTime = PopWindowUtils.getWindow(this, tvOrder, rootView);
            popupWindowServerTime.setOnDismissListener(new PopupWindow.OnDismissListener() {
                @Override
                public void onDismiss() {
                    setWindowAphla(1.0f);
                }
            });
        }else {
          /*  SelectCountView selectCountView = new SelectCountView();
            View rootView = selectCountView.getRootView();
            selectCountView.setData(getPlayerInfoBean());
            popupWindowCount = PopWindowUtils.getWindow(this, tvOrder, rootView);*/
        }
    }

    private PlayerInfoBean getPlayerInfoBean(){
        PlayerInfoBean pinfoBean = new PlayerInfoBean();
        pinfoBean.setId(itemDatas.getId());
        pinfoBean.setAge(itemDatas.getOrganizer().getAge());
        pinfoBean.setAvatar(itemDatas.getOrganizer().getAvatar());
        pinfoBean.setCover_pic(itemDatas.getCover_pic());
        pinfoBean.setFee(itemDatas.getFee());
        pinfoBean.setNickname(itemDatas.getOrganizer().getNickname());
        pinfoBean.setGender(itemDatas.getOrganizer().getGender());
        pinfoBean.setTitle(itemDatas.getTitle());
        pinfoBean.setUser_id(itemDatas.getOrganizer().getId() );
        return pinfoBean;
    }

    @Override
    public void onPause() {
        if(popupWindowCount != null)
            popupWindowCount.dismiss();
        if(popupWindowServerTime != null)
            popupWindowServerTime.dismiss();
        super.onPause();
    }

    private boolean isOnline(){
        return itemDatas.getGift_type() != null && TextUtils.equals("1",itemDatas.getGift_type());
    }

    private void setDrawableDeauflt() {
        TvDrawableUtils.setTvDrawableTop(tvServiceDesc, R.color.c_65_75_85, R.drawable.service_introduce_normal);
        TvDrawableUtils.setTvDrawableTop(tvPlayerDiscuss, R.color.c_65_75_85, R.drawable.player_evaluation_normal);
        TvDrawableUtils.setTvDrawableTop(tvOtherAbility, R.color.c_65_75_85, R.drawable.other_skills_normal);
    }


    private void replaceFragment(Fragment fragment) {
        getSupportFragmentManager().beginTransaction().replace(R.id.fl_content, fragment).commit();
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        redDotView.setTranslationX((position + positionOffset) * DensityUtil.dip2px(this, 16));
    }

    @Override
    public void onPageSelected(int position) {

    }

    @Override
    public void onPageScrollStateChanged(int state) {

    }
}
