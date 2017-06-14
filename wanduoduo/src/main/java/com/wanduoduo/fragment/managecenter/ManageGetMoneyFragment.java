package com.wanduoduo.fragment.managecenter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.SettingRealNameActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.UserInfoUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/8/10.
 */
public class ManageGetMoneyFragment extends BaseFragment{
    @Bind(R.id.et_name)
    EditText etName;
    @Bind(R.id.et_account)
    EditText etAccount;
    @Bind(R.id.et_money)
    EditText etMoney;
    @Bind(R.id.tv_make_sure_tixian)
    TextView tvMakeSureTixian;
    @Bind(R.id.iv_clear)
    ImageView ivClear;
    @Bind(R.id.tv_userable_money)
    TextView tvUserableMoney;
    private InfoBean infoBean;
    private String ali_info;

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_manage_get_money, null);
    }

    @Override
    protected void initData() {
        etName.addTextChangedListener(new MyTextWatcher(1));
        etAccount.addTextChangedListener(new MyTextWatcher(2));
        etMoney.addTextChangedListener(new MyTextWatcher(3));

        String money_bal = getActivity().getIntent().getStringExtra("money_bal");
        tvUserableMoney.setText(money_bal);
        tvMakeSureTixian.setClickable(false);
        requestInfo();
    }

    private void requestInfo() {
        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                ManageGetMoneyFragment.this.infoBean = infoBean;
                handler.sendEmptyMessage(1);
            }
        });
       /* OkHttpUtils.sendGetRequest(IConstant.USER_INFO, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                handler.sendEmptyMessage(1);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });*/
    }

    @OnClick({R.id.rel_name, R.id.rel_acounnt, R.id.iv_clear, R.id.tv_all_tixian, R.id.tv_make_sure_tixian})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_name:
                etName.requestFocus();
                setSoftKey(etName);
                break;
            case R.id.rel_acounnt:
                etAccount.requestFocus();
                setSoftKey(etAccount);
                break;
            case R.id.iv_clear:
                etMoney.setText("");
                break;
            case R.id.tv_all_tixian:
                etMoney.setText(tvUserableMoney.getText().toString());
                break;
            case R.id.tv_make_sure_tixian:
                if(infoBean != null && TextUtils.equals("0",infoBean.getData().getIdcard_ok()) && !TextUtils.isEmpty(infoBean.getData().getIdcard_pic())){
                    ToastUtils.makeToast("只有实名制才能发起提款,您的身份信息正在后台审核,审核通过我们将会第一时间通知您!");
                    return;
                }else if(infoBean != null && TextUtils.equals("0",infoBean.getData().getIdcard_ok())){
                    Intent intent = new Intent(mContext, SettingRealNameActivity.class);
                    startActivity(intent);
                    return;
                }
                if(Double.parseDouble(etMoney.getText().toString().trim()) > Double.parseDouble(tvUserableMoney.getText().toString().trim())){
                    ToastUtils.makeToast("超过提现金额");
                    return;
                }
                if((int)Double.parseDouble(etMoney.getText().toString()) < 50){
                    ToastUtils.makeToast("每次提现不低于50元");
                    return;
                }
                if(infoBean != null && TextUtils.isEmpty(infoBean.getData().getAli_info())){
                    // TODO  跳转绑定手机号
                }

                JSONObject jsonObject = new JSONObject();
                try {
                    jsonObject.put("account",etAccount.getText().toString());
                    jsonObject.put("realname",etName.getText().toString());
                    ali_info = jsonObject.toString();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                OkHttpUtils.sendPostRequest(IConstant.USER_INFO, getMap(1), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        withDrawTheMoney();
                    }

                    @Override
                    public void onFailure(int errCode, String errMsg) {

                    }
                });

                break;
        }
    }

    private boolean isSuccess;      // 表示是否提现成功;
    Handler handler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what){
                case 1:
                    if(infoBean != null){
                        tvUserableMoney.setText(infoBean.getData().getMoney());
                        if(!TextUtils.isEmpty(infoBean.getData().getAli_info())){
                            try {
                                JSONObject object = new JSONObject(infoBean.getData().getAli_info());
                                if(object.has("account"))
                                    etAccount.setText(object.getString("account") + "");
                                if(object.has("realname"))
                                    etName.setText(object.getString("realname") + "");
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    break;
                case 2:
                    isSuccess = true;
                    alertDialog();
                    break;
                case 3:
                    String errMsg = (String) msg.obj;
                    ToastUtils.makeToast(errMsg);
                    break;
            }
        }
    };

    /**
     * 弹窗
     */
    private void alertDialog() {

        DialogUtils.showDialog(getActivity(), "申请成功", "亲爱的，您的提现申请已收到，一笔巨款将在1-7个工作日内到达您的账户，请耐心等待", false,false, new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                getActivity().setResult(getActivity().RESULT_OK);
                getActivity().finish();
            }
        });
    }

    private void withDrawTheMoney() {
        OkHttpUtils.sendPostRequest(IConstant.WITHDRAW, getMap(2), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                try {
                    final JSONObject jsonObject = new JSONObject(result);
                    if(jsonObject.getJSONObject("data").getBoolean("success")){
                        handler.sendEmptyMessage(2);
                    }else{
                        Message obtain = Message.obtain();
                        obtain.what = 3;
                        obtain.obj = jsonObject.getString("errMsg");
                        handler.sendMessage(obtain);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String,String> getMap(int type){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        if(type == 1){
            map.put("ali_info",ali_info);
        }else{
            map.put("num",etMoney.getText().toString().trim());
        }
        return map;
    }

    /**
     * 获取焦点自动弹出软键盘
     * @param et
     */
    private void setSoftKey(EditText et){
        InputMethodManager inputManager =
                (InputMethodManager)et.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        inputManager.showSoftInput(et, 0);
    }

    /**
     * 三个edittext是否都有数据 是否可以提交
     * @return
     */
    private boolean isClickableGetMoney(){
        return !TextUtils.isEmpty(etName.getText().toString()) && !TextUtils.isEmpty(etAccount.getText().toString()) &&
                !TextUtils.isEmpty(etMoney.getText().toString());
    }
    
    class MyTextWatcher implements TextWatcher {

        private int position;

        public MyTextWatcher(int position) {
            this.position = position;
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            if(position == 2){
                if(!TextUtils.isEmpty(charSequence.toString())){
                    ivClear.setVisibility(View.VISIBLE);
                }else{
                    ivClear.setVisibility(View.INVISIBLE);
                }
            }
            if(isClickableGetMoney()){
                tvMakeSureTixian.setClickable(true);
                tvMakeSureTixian.setTextColor(Color.WHITE);
                tvMakeSureTixian.setBackgroundResource(R.drawable.shape_moblie_tv_bg_blue);
            }else{
                tvMakeSureTixian.setClickable(false);
                tvMakeSureTixian.setTextColor(Color.parseColor("#394471"));
                tvMakeSureTixian.setBackgroundResource(R.drawable.shape_manage_tixian_bg_normal);
            }
        }

        @Override
        public void afterTextChanged(Editable editable) {

        }
    }
}
