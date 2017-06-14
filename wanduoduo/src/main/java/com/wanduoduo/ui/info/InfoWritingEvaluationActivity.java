package com.wanduoduo.ui.info;

import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.CircleImageView;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoWritingEvaluationActivity extends BaseActivity implements TextWatcher {

    @Bind(R.id.et_content)
    EditText etContent;
    @Bind(R.id.cb_ni_ming)
    CheckBox cbNiMing;
    @Bind(R.id.tv_num_count)
    TextView tvNumCount;
    @Bind(R.id.ratingbar)
    RatingBar ratingBar;
    @Bind(R.id.civ_avatar)
    CircleImageView civAvatar;
    @Bind(R.id.tv_nickname)
    TextView tvNickname;
    @Bind(R.id.tv_desc)
    TextView tvDesc;
    private String gift_id;
    private String order_id;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_writing_evaluation;
    }

    @Override
    protected void initData() {
        Intent intent = getIntent();
        tvTitle.setText("填写评价");
        ratingBar.setRating(5);
        gift_id = intent.getStringExtra("gift_id");
        order_id = intent.getStringExtra(IConsName.ORDER_ID);
        String nickname = intent.getStringExtra("nickname");
        tvNickname.setText(nickname);
        String avatar = getIntent().getStringExtra("avatar");
        Glide.with(this).load(avatar).centerCrop().into(civAvatar);

        etContent.addTextChangedListener(this);

        ratingBar.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
            @Override
            public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
                if(rating > 4.5){
                    tvDesc.setText("非常满意");
                }else if(rating > 3.5){
                    tvDesc.setText("很满意");
                }else if(rating > 2.5){
                    tvDesc.setText("满意");
                }else {
                    tvDesc.setText("不满意");
                }
                if(rating < 1){
                    ratingBar.setRating(1);
                }
            }
        });
    }

    @OnClick({R.id.tv_submit_discuss})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.tv_submit_discuss:
                OkHttpUtils.sendPostRequest(IConstant.GIFT_COMMENT, getMap(), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        Intent intent = new Intent(InfoWritingEvaluationActivity.this, InfoWritingEvaluationCompleteActivity.class);
                        intent.putExtras(getIntent());
                        startActivity(intent);
                        finish();
                    }
                    @Override
                    public void onFailure(int errCode, final String errMsg) {
                        runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                ToastUtils.makeToast(errMsg);
                            }
                        });
                    }
                });
                break;
        }
    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("gift_id",gift_id);
        map.put(IConsName.ORDER_ID,order_id);
        map.put("comment_id","0");
        map.put("content",etContent.getText().toString().trim());
        map.put("star",String.valueOf(ratingBar.getRating()));
        map.put("is_show",cbNiMing.isChecked()?"0":"1");
        return map;
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        tvNumCount.setText(charSequence.length() + "/50");
    }

    @Override
    public void afterTextChanged(Editable editable) {

    }
}
