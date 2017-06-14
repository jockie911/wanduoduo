package com.wanduoduo.ui.online;

import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bigkoo.pickerview.OptionsPickerView;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.OnLineSelectBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.SelectLocationActivity;
import com.wanduoduo.utils.ToastUtils;

import java.util.ArrayList;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/9/14.
 */
public class OnLineChooseActivity extends BaseActivity implements OptionsPickerView.OnOptionsSelectListener {
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.tv_sort_nearby)
    TextView tvSortNearby;
    @Bind(R.id.tv_sort_activi)
    TextView tvSortActivi;
    @Bind(R.id.tv_sex_all)
    TextView tvSexAll;
    @Bind(R.id.tv_place)
    TextView tvPlace;
    @Bind(R.id.iv_is_video)
    ImageView ivIsVideo;
    @Bind(R.id.tv_age)
    TextView tvAge;
    @Bind(R.id.tv_height)
    TextView tvHeight;
    @Bind(R.id.tv_income)
    TextView tvIncome;
    @Bind(R.id.iv_is_single)
    ImageView ivIsSingle;
    @Bind(R.id.rel_female)
    RelativeLayout relFemale;
    @Bind(R.id.rel_male)
    RelativeLayout relMale;
    @Bind(R.id.rel_gift)
    RelativeLayout relGift;
    @Bind(R.id.tv_normal_select)
    TextView tvNormalSelect;
    @Bind(R.id.tv_high_select)
    TextView tvHighSelect;
    @Bind(R.id.rel_age)
    RelativeLayout relAge;
    @Bind(R.id.rel_height)
    RelativeLayout relHeigh;
    @Bind(R.id.rel_single)
    RelativeLayout relSingle;
    @Bind(R.id.iv_is_gift)
    ImageView ivIsGift;
    private OnLineSelectBean onLineSelectBean;
    private OptionsPickerView pvOptions;
    private int type;
    private int witchPosition;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_on_line_choose;
    }

    @Override
    protected void initData() {
        tvTitle.setText("筛选");
        tvRightTitleBar.setText("确定");

        witchPosition = getIntent().getIntExtra(IConsName.TYPE, -1);
        onLineSelectBean = getIntent().getParcelableExtra("onLineSelectBean");

        if(onLineSelectBean != null)
            initStatus();
    }

    /**
     * 初始化各个状态值
     */
    private void initStatus() {
        if (onLineSelectBean.getOrder() == 1) {
            tvSortNearby.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        } else if (onLineSelectBean.getOrder() == 2) {
            tvSortActivi.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        }

        if (onLineSelectBean.getGender() == 0) {
            tvSexAll.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        } else if (onLineSelectBean.getGender() == 1) {
            relMale.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        } else if (onLineSelectBean.getGender() == 2) {
            relFemale.setBackgroundResource(R.drawable.shape_red_red_red);
        }

        if (!TextUtils.isEmpty(onLineSelectBean.getCity_name()))
            tvPlace.setText(onLineSelectBean.getCity_name());

        if (onLineSelectBean.isVideo()) {
            ivIsVideo.setBackgroundResource(R.drawable.btn_open_online);
        } else {
            ivIsVideo.setBackgroundResource(R.drawable.btn_close_online);
        }


        if(witchPosition == 0){
            if (onLineSelectBean.getLoveinfo()) {
                ivIsSingle.setBackgroundResource(R.drawable.btn_open_online);
            } else {
                ivIsSingle.setBackgroundResource(R.drawable.btn_close_online);
            }

           if(!TextUtils.isEmpty(onLineSelectBean.getAge()))
               tvAge.setText(onLineSelectBean.getAge().replace(","," - ") + "岁");
            if(!TextUtils.isEmpty(onLineSelectBean.getHeight()))
                tvHeight.setText(onLineSelectBean.getHeight().replace(","," - ") + "cm");
        }else if(witchPosition == 1){
//            relGift.setVisibility(View.VISIBLE);
            tvNormalSelect.setVisibility(View.GONE);
            tvHighSelect.setVisibility(View.GONE);
            relAge.setVisibility(View.GONE);
            relHeigh.setVisibility(View.GONE);
            relSingle.setVisibility(View.GONE);
            if (onLineSelectBean.isGift()) {
                ivIsGift.setBackgroundResource(R.drawable.btn_open_online);
            } else {
                ivIsGift.setBackgroundResource(R.drawable.btn_close_online);
            }
        }
    }

    @OnClick({R.id.tv_right_title_bar, R.id.tv_sort_nearby, R.id.tv_sort_activi, R.id.tv_sex_all, R.id.rel_male, R.id.rel_female, R.id.rel_place, R.id.rel_age, R.id.rel_height, R.id.rel_income,
    R.id.iv_is_video,R.id.iv_is_single,R.id.iv_is_gift})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_right_title_bar:
                Intent intent = new Intent();
                intent.putExtra("onLineSelectBean",onLineSelectBean);
                setResult(RESULT_OK,intent);
                finish();
                break;
            case R.id.tv_sort_nearby:
                sort(1);
                break;
            case R.id.tv_sort_activi:
                sort(2);
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
            case R.id.rel_place:
                startActivityForResult(new Intent(this, SelectLocationActivity.class), IConstant.CITY_ALL);
                break;
            case R.id.rel_age:
                setAgePicker("选择年龄",0,100,1);
                break;
            case R.id.rel_height:
                setAgePicker("选择身高",110,211,2);
                break;
            case R.id.rel_income:       // 暂无

                break;
            case R.id.iv_is_video:
                if(onLineSelectBean.isVideo()){
                    ivIsVideo.setBackgroundResource(R.drawable.btn_close_online);
                    onLineSelectBean.setVideo(false);
                }else{
                    ivIsVideo.setBackgroundResource(R.drawable.btn_open_online);
                    onLineSelectBean.setVideo(true);
                }
                break;
            case R.id.iv_is_single:
                if(onLineSelectBean.getLoveinfo()){
                    ivIsSingle.setBackgroundResource(R.drawable.btn_close_online);
                    onLineSelectBean.setLoveinfo(false);
                }else{
                    ivIsSingle.setBackgroundResource(R.drawable.btn_open_online);
                    onLineSelectBean.setLoveinfo(true);
                }
                break;
            case R.id.iv_is_gift:
                if(onLineSelectBean.isGift()){
                    ivIsGift.setBackgroundResource(R.drawable.btn_close_online);
                    onLineSelectBean.setGift(false);
                }else{
                    ivIsGift.setBackgroundResource(R.drawable.btn_open_online);
                    onLineSelectBean.setGift(true);
                }
                break;
        }
    }

    private void sort(int position) {
        tvSortActivi.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        tvSortNearby.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
        if (position == 1) {
            tvSortNearby.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        } else {
            tvSortActivi.setBackgroundResource(R.drawable.shape_bule_blue_blue);
        }
        onLineSelectBean.setOrder(position);
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
        onLineSelectBean.setGender(position);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case IConstant.CITY_ALL:
                if (data != null) {
                    String city_title = data.getStringExtra("city_title");
                    String city_code = data.getStringExtra("city_code");
                    tvPlace.setText(city_title);
                    onLineSelectBean.setCity_code(city_code);
                    onLineSelectBean.setCity_name(city_title);
                }
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void setAgePicker(String title,int min,int max,int type){
        pvOptions = new OptionsPickerView(this);
        this.type = type;
        ArrayList<String> options1Items = new ArrayList<>();
        ArrayList<ArrayList<String>> options2Items = new ArrayList<>();

        for (int i = min; i < max ;i ++){
            options1Items.add(i + "");
            ArrayList<String> temp = new ArrayList<>();
            for (int j = i; j < max;j++){
                temp.add(j + "");
            }
            options2Items.add(temp);
        }
        pvOptions.setPicker(options1Items, options2Items, true);
        pvOptions.setTitle(title);
        pvOptions.setCyclic(false,false,false);
        pvOptions.setSelectOptions(0, 0);
        pvOptions.setOnoptionsSelectListener(this);
        pvOptions.show();
    }

    @Override
    public void onOptionsSelect(int options1, int option2, int options3) {
        if(type == 1){
            tvAge.setText(options1 + " - "+ (option2 + options1) + "岁");
            onLineSelectBean.setAge(options1 + ","+ (option2 + options1));
        }else if(type == 2){
            tvHeight.setText((110 + options1) + " - "+ (110 + options1 + option2) + "cm");
            onLineSelectBean.setHeight((110 + options1) + ","+ (110 + options1 + option2));
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && pvOptions != null && pvOptions.isShowing()){
            pvOptions.dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}