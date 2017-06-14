package com.wanduoduo.ui.info;

import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;

import com.bigkoo.pickerview.OptionsPickerView;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.SelectLocationActivity;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.ArrayList;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoEditContentActivity extends BaseActivity{

    @Bind(R.id.tv_nickname)
    TextView tvNickname;
    @Bind(R.id.tv_sex)
    TextView tvSex;
    @Bind(R.id.tv_age)
    TextView tvAge;
    @Bind(R.id.tv_xingzuo)
    TextView tvXingzuo;
    @Bind(R.id.tv_height)
    TextView tvHeight;
    @Bind(R.id.tv_love)
    TextView tvLove;
    @Bind(R.id.tv_place)
    TextView tvPlace;
    @Bind(R.id.tv_career)
    TextView tvCareer;
    @Bind(R.id.tv_income)
    TextView tvIncome;

    private String nickname = "";
    private String career = "";
    private OptionsPickerView picker;

    ArrayList pickerDatas = new ArrayList();
    String[] xingzuo = {"白羊座","金牛座","双子座","巨蟹座","狮子座","处女座","天秤座","天蝎座","射手座","摩羯座","水瓶座","双鱼座"};
    String[] inComeData = {"3k","5k","10k","20k","50k","保密"};
    private ArrayList<String> mNineLists;
    private String city_title;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_edit_content;
    }

    @Override
    protected void initData() {
        tvTitle.setText("基本信息");

        mNineLists = getIntent().getStringArrayListExtra("mNineLists");
        nickname = mNineLists.get(1);
        career = mNineLists.get(6);

        tvNickname.setText(mNineLists.get(1));
        tvSex.setText(mNineLists.get(2));
        tvAge.setText(mNineLists.get(3));
        tvXingzuo.setText(mNineLists.get(4));
        tvHeight.setText(mNineLists.get(5));
        tvLove.setText(mNineLists.get(8));
        tvPlace.setText(mNineLists.get(7));
        tvCareer.setText(mNineLists.get(6));
//        tvIncome.setText(mNineLists.get(8));
    }


    @OnClick({R.id.rel_nickname, R.id.rel_sex, R.id.rel_age, R.id.rel_xingzuo, R.id.rel_height, R.id.rel_love,
            R.id.rel_place, R.id.rel_career, R.id.rel_income})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_nickname:
                setContentForResult(IConsName.REL_NICKNAME,nickname);
                break;
            case R.id.rel_sex:
                pickerDatas.clear();
                pickerDatas.add("男");
                pickerDatas.add("女");
                drinkPicker(R.id.rel_sex);
                break;
            case R.id.rel_age:
                pickerDatas.clear();
                for (int i = 0 ; i < 100 ; i++){
                    pickerDatas.add(i);
                }
                drinkPicker(R.id.rel_age);
                break;
            case R.id.rel_xingzuo:
                pickerDatas.clear();
                for (int i = 0; i < xingzuo.length; i++) {
                    pickerDatas.add(xingzuo[i]);
                }
                drinkPicker(R.id.rel_xingzuo);
                break;
            case R.id.rel_height:
                pickerDatas.clear();
                for(int i = 110 ; i < 211 ; i++){
                    pickerDatas.add(i);
                }
                drinkPicker(R.id.rel_height);
                break;
            case R.id.rel_love:
                pickerDatas.clear();
                pickerDatas.add("单身");
                pickerDatas.add("已婚");
                pickerDatas.add("保密");
                drinkPicker(R.id.rel_love);
                break;
            case R.id.rel_place:
                startActivityForResult(new Intent(this, SelectLocationActivity.class), IConsName.REL_PLACE);
                break;
            case R.id.rel_career:
                setContentForResult(IConsName.REL_CAREER,career);
                break;
            case R.id.rel_income:
                pickerDatas.clear();
                for (int i = 0; i < inComeData.length; i++) {
                    pickerDatas.add(inComeData[i]);
                }
                drinkPicker(R.id.rel_income);
                break;
        }
    }

    private void setContentForResult(int type,String content){
        Intent intent = new Intent(this,InfoEditContentItemActivity.class);
        intent.putExtra(IConsName.TYPE,type);
        if(!TextUtils.isEmpty(content))
            intent.putExtra("content",content);
        startActivityForResult(intent,type);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(data != null){
            switch (requestCode){
                case IConsName.REL_NICKNAME:
                    nickname = data.getStringExtra("nickname");
                    tvNickname.setText(nickname);
                    sendDataRequest("nickname",nickname);
                    break;
                case IConsName.REL_PLACE:
                    city_title = data.getStringExtra("city_title");
                    tvPlace.setText(city_title);
                    String city_id = data.getStringExtra("city_id");
                    sendDataRequest("city_id",city_id);
                    break;
                case IConsName.REL_CAREER:
                    career = data.getStringExtra("career");
                    tvCareer.setText(career);
                    sendDataRequest("profession",career);
                    break;
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void drinkPicker(final int type){
        picker = new OptionsPickerView(this);
        picker.setPicker(pickerDatas);
        picker.setCyclic(false);
        picker.setCancelable(true);
        if(type == R.id.rel_height)
            picker.setSelectOptions(60);
        picker.setOnoptionsSelectListener(new OptionsPickerView.OnOptionsSelectListener() {
            @Override
            public void onOptionsSelect(int options1, int option2, int options3) {
                selected(type,options1);
            }
        });
        picker.show();
    }

    private void selected(int type, int options) {
        switch (type){
            case R.id.rel_sex:
                tvSex.setText(pickerDatas.get(options) +"");
                sendDataRequest("gender",(options + 1 )+"");
                break;
            case R.id.rel_xingzuo:
                tvXingzuo.setText(pickerDatas.get(options) +"");
                sendDataRequest("constellation",pickerDatas.get(options) +"");
                break;
            case R.id.rel_height:
                tvHeight.setText(pickerDatas.get(options) +"");
                sendDataRequest("height",pickerDatas.get(options) +"");
                break;
            case R.id.rel_love:
                tvLove.setText(pickerDatas.get(options) +"");
                sendDataRequest("loveinfo",(options + 1) + "");
                break;
            case R.id.rel_income:
                tvIncome.setText(pickerDatas.get(options) +"");
                sendDataRequest("salary",pickerDatas.get(options) +"");
                break;
            case R.id.rel_age:
                tvAge.setText(pickerDatas.get(options) + "");
                sendDataRequest("age",pickerDatas.get(options) +"");
                break;
        }
    }

    private void sendDataRequest(final String key, final String value){
        OkHttpUtils.sendPostRequest(IConstant.USER_INFO, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).addParams(key, value).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                switch (key){
                    case "nickname":
                        mNineLists.set(0,value);
                        break;
                    case "gender":
                        mNineLists.set(1,(("1".equals(value))?"男":"女"));
                        break;
                    case "age":
                        mNineLists.set(2,value);
                        break;
                    case "constellation":
                        mNineLists.set(3,value);
                        break;
                    case "height":
                        mNineLists.set(4,value);
                        break;
                    case "loveinfo":
                        mNineLists.set(5,("1".equals(value)?"单身":("2".equals(value)?"已婚":"保密")));
                        break;
                    case "city_id":
                        mNineLists.set(6,city_title);
                        break;
                    case "profession":
                        mNineLists.set(7,value);
                        break;
                    case "salary":
                        mNineLists.set(8,value);
                        break;
                }
            }

            @Override
            public void onFailure(int errCode,String errMsg) {

            }
        });
    }

    @Override
    public void finish() {
        setResult();
        super.finish();
    }



    @Override
    public void onBackPressed() {
        setResult();
        finish();
        super.onBackPressed();
    }

    private void setResult(){
        Intent intent = new Intent();
        intent.putStringArrayListExtra("mNineLists",mNineLists);
        setResult(RESULT_OK,intent);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && picker!= null && picker.isShowing()){
            picker.dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
