package com.wanduoduo.ui.skill;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Message;
import android.support.v7.app.AlertDialog;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bigkoo.pickerview.OptionsPickerView;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.github.lzyzsd.jsbridge.CallBackFunction;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PhotoPicAdapter;
import com.wanduoduo.adapter.PrefectionItemPlaceAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.CitySelectBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONArray;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;

public class PlayerPerfectionItemActivity extends BaseActivity implements OptionsPickerView.OnOptionsSelectListener, AdapterView.OnItemClickListener, TextWatcher {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.root_ll_title)
    LinearLayout rootLLTitle;
    @Bind(R.id.root_ll_communicate)
    LinearLayout rootLLCommunicate;
    @Bind(R.id.root_rel_desc)
    RelativeLayout rootRelDesc;
    @Bind(R.id.root_ll_cert)
    LinearLayout rootLlCert;
    @Bind(R.id.root_rel_place)
    RelativeLayout rootRelPlace;
    @Bind(R.id.gv_cert)
    GridView gvCert;
    @Bind(R.id.cb_first_communicate)
    CheckBox cbFirstCommunicate;
    @Bind(R.id.cb_second_commnicate)
    CheckBox cbSecondCommunicate;

    @Bind(R.id.et_title)
    EditText etTitle;
    @Bind(R.id.iv_title_delete)
    ImageView ivTitleDelete;
    @Bind(R.id.et_desc)
    EditText etDesc;
    @Bind(R.id.cb_all_place)
    CheckBox cbAllPlace;
    @Bind(R.id.tv_select_place)
    TextView tvSelectPlace;
    @Bind(R.id.gv_place)
    MyGridView gvPlace;       //三级显示的gridview
    @Bind(R.id.ll_price)
    LinearLayout llPrice;
    @Bind(R.id.et_price)
    EditText etPrice;
    @Bind(R.id.tv_waring)      //设置价格的提示
    TextView tvWraning;
    @Bind(R.id.webview)
    BridgeWebView webView;
    @Bind(R.id.ll_item_price)
    LinearLayout llItemPrice;
    @Bind(R.id.tv_desc_count)
    TextView tvDescCount;

    private int type;
    private CitySelectBean cityListBean;
    private PrefectionItemPlaceAdapter prefectionItemPlaceAdapter;
    private String limitMaxPrice;
    private PhotoPicAdapter picAdapter;
    private ArrayList<String> mResultPicPaths = new ArrayList<>();

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_player_perfection_item;
    }

    @Override
    protected void initData() {
        tvRightTitleBar.setText("确定");
        type = getIntent().getIntExtra("type", -1);
        switch (type) {
            case IConstant.PERFECTION_TITLE:
                tvTitle.setText("添加标题");
                rootLLTitle.setVisibility(View.VISIBLE);
                if(!TextUtils.isEmpty(getIntetnntMsg())){
                    etTitle.setText(getIntetnntMsg());
                    etTitle.setSelection(getIntetnntMsg().length());
                }
                break;
            case IConstant.PERFECTION_PRICE:
                tvTitle.setText("技能价格");
                llPrice.setVisibility(View.VISIBLE);
                if(!TextUtils.isEmpty(getIntetnntMsg())){
                    etPrice.setText(getIntetnntMsg());
                    etPrice.setSelection(getIntetnntMsg().length());
                }
                setPriceWebView();
                etPrice.addTextChangedListener(this);
                break;
            case IConstant.PERFECTION_COMMUNICATE:
                tvTitle.setText("沟通方式");
                rootLLCommunicate.setVisibility(View.VISIBLE);
                doWithCommunicate();
                break;
            case IConstant.PERFECTION_PLACE:
                tvTitle.setText("选择区域");
                rootRelPlace.setVisibility(View.VISIBLE);
                initPlace();
                break;
            case IConstant.PERFECTION_DESC:
                tvTitle.setText("约玩说明");
                rootRelDesc.setVisibility(View.VISIBLE);
                if(!TextUtils.isEmpty(getIntetnntMsg())){
                    etDesc.setText(getIntetnntMsg());
                    etDesc.setSelection(getIntetnntMsg().length());
                }
                etDesc.addTextChangedListener(new TextWatcher() {
                    @Override
                    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

                    }

                    @Override
                    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
                        tvDescCount.setText(charSequence.length() + "/500");
                    }

                    @Override
                    public void afterTextChanged(Editable editable) {

                    }
                });
                break;
            case IConstant.PERFECTION_CERT:
                tvTitle.setText("添加技能证书");
                rootLlCert.setVisibility(View.VISIBLE);
                initCert();
                break;
        }
    }

    private void setPriceWebView() {
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(true);

        settings.setCacheMode(WebSettings.LOAD_NO_CACHE);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setSupportZoom(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDatabasePath(PlayerPerfectionItemActivity.this.getApplicationContext().getCacheDir().getAbsolutePath());

        webView.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);
        webView.clearHistory();
        webView.clearFormData();
        webView.clearCache(true);

        webView.setWebChromeClient(new WebChromeClient());
        webView.loadUrl("http://api.wanduoduo.cc/new/price.html?token=" + SPUtils.getStringData(IConsName.TOKEN,""));
        webView.callHandler("getLimitPrice", "", new CallBackFunction() {
            @Override
            public void onCallBack(String data) {
                llItemPrice.setVisibility(View.VISIBLE);
                tvWraning.setText("您可设置的金额的上限是"+ data +"元/时");
                limitMaxPrice = data;
            }
        });
    }

    /** --------------------- 添加技能证书 ——————————— */
    private int MAX_PIC_COUNT = 3;
    private void initCert() {
        picAdapter = new PhotoPicAdapter(null,MAX_PIC_COUNT, 2,null);
        gvCert.setAdapter(picAdapter);
        gvCert.setOnItemClickListener(this);
    }
    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

    }

    private List<String> mResults = new ArrayList<>();
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (resultCode){

        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private String getIntetnntMsg() {
        return getIntent().getStringExtra("content");
    }

    /**--------------------------------------选择沟通方式-----------------------------------------*/
    private void doWithCommunicate() {
        if(!TextUtils.isEmpty(getIntetnntMsg())){
            if(IConstant.COMMUNICATE_FIRST.equals(getIntetnntMsg())){
                cbFirstCommunicate.setChecked(true);
            }else if(IConstant.COMMUNICATE_SECOND.equals(getIntetnntMsg())){
                cbSecondCommunicate.setChecked(true);
            }
        }
    }

    private void setCBCheckedStatus(CheckBox cb){
        cbFirstCommunicate.setChecked(false);
        cbSecondCommunicate.setChecked(false);
        cb.setChecked(true);
    }


    @OnClick({R.id.iv_left_title_bar, R.id.tv_right_title_bar,R.id.cb_first_communicate,R.id.cb_second_commnicate,R.id.iv_title_delete,R.id.cb_all_place,
            R.id.tv_select_place,R.id.tv_eg_desc})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_left_title_bar:
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage("是否保存");
                builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        makeSureBackResult();
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
                makeSureBackResult();
                break;
            case R.id.cb_first_communicate:
                setCBCheckedStatus(cbFirstCommunicate);
                break;
            case R.id.cb_second_commnicate:
                setCBCheckedStatus(cbSecondCommunicate);
                break;
            case R.id.iv_title_delete:  //选择标题界面进去删除已写et
                etTitle.setText("");
                break;
            case R.id.cb_all_place:     //选择服务区域，全选
                if( prefectionItemPlaceAdapter == null){
                    return;
                }
                if(cbAllPlace.isChecked()){
                    prefectionItemPlaceAdapter.setDataCheck(true);
                }else{
                    prefectionItemPlaceAdapter.setDataCheck(false);
                }
                break;
            case R.id.tv_select_place:      //选择服务，弹出选择城市
                pvOptions.show();
                break;
            case R.id.tv_eg_desc:
                Intent intent = new Intent(PlayerPerfectionItemActivity.this, DetailWebViewActivity.class);
                intent.putExtra("title","约玩说明示例");
                intent.putExtra("url","http://api.wanduoduo.cc/new/a_explain.html");
                startActivity(intent);
                break;
        }
    }

    /**
     * 右击确定按钮  确认返回
     */
    private void makeSureBackResult() {
        Intent intent = new Intent();
        switch (type) {
            case IConstant.PERFECTION_TITLE:
                if(!isStringEmpty(etTitle)){
                    intent.putExtra("title",etTitle.getText().toString().trim());
                }else{
                    intent.putExtra("title","");
                }
                break;
            case IConstant.PERFECTION_PRICE:
                if(!isStringEmpty(etPrice)){
                    intent.putExtra("price",etPrice.getText().toString().trim());
                }else{
                    intent.putExtra("price","");
                }
                break;
            case IConstant.PERFECTION_COMMUNICATE:
                if(cbFirstCommunicate.isChecked()){
                    intent.putExtra("communicate_way",IConstant.COMMUNICATE_FIRST);
                }else if(cbSecondCommunicate.isChecked()){
                    intent.putExtra("communicate_way",IConstant.COMMUNICATE_SECOND);
                }
                break;
            case IConstant.PERFECTION_PLACE:
                JSONArray jsonArray = new JSONArray();
                for (String mAreaIDList : prefectionItemPlaceAdapter.mAreaIDLists) {
                    jsonArray.put(mAreaIDList);
                }
                if(prefectionItemPlaceAdapter.mAreaIDLists.size() != 0){
                    intent.putExtra("parent_code",prefectionItemPlaceAdapter.getParentCode());
                    intent.putExtra("area_id",jsonArray.toString());
                }else{
                    intent.putExtra("area_id","");
                }
                break;
            case IConstant.PERFECTION_DESC:
                if(!isStringEmpty(etDesc)){
                    intent.putExtra("desc",etDesc.getText().toString().trim());
                }else{
                    intent.putExtra("desc","");
                }
                break;
            case IConstant.PERFECTION_CERT:
                OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD,mResultPicPaths , new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {

                    }

                    @Override
                    public void onFailure(int errCode,String errMsg) {

                    }
                });

                break;
        }
        setResult(100,intent);
        finish();
    }

    private boolean isStringEmpty(EditText et){
        return TextUtils.isEmpty(et.getText().toString()) && TextUtils.isEmpty(et.getText().toString().trim());
    }

    /**---------------------------------------------选择区域---------------------------------------------------*/
    private ArrayList<String> options1Items = new ArrayList<>();
    private ArrayList<ArrayList<String>> options2Items = new ArrayList<>();
    OptionsPickerView pvOptions;
    private void initPlace() {
        if(TextUtils.isEmpty(SPUtils.getStringData(IConsName.CASH_CITY_SELECT,""))){
            OkHttpUtils.sendGetRequest(IConstant.CITY_SELECT,null,new MyOnrefreshListen(IConstant.PERFECTION_PLACE));
        }else{
            cityListBean = GsonTools.changeGsonToBean(SPUtils.getStringData(IConsName.CASH_CITY_SELECT,""),CitySelectBean.class);
            mHandler.sendEmptyMessage(IConstant.PERFECTION_PLACE);
        }
        prefectionItemPlaceAdapter = new PrefectionItemPlaceAdapter(this);
        gvPlace.setAdapter(prefectionItemPlaceAdapter);
    }

    private void setCityPicker(){
        pvOptions = new OptionsPickerView(this);
        List<CitySelectBean.DataBean> data = cityListBean.getData();
        for(int i = 0;i<cityListBean.getData().size() -1;i++){
            options1Items.add(data.get(i).getCity_name());
            ArrayList<String> temp = new ArrayList<>();
            if(data != null){
                for(CitySelectBean.DataBean.SonBean son : data.get(i).getSon()){
                    if(son != null)
                        temp.add(son.getCity_name());
                }
            }
            options2Items.add(temp);
        }
        pvOptions.setPicker(options1Items, options2Items, true);
        pvOptions.setTitle("选择城市");
        pvOptions.setCyclic(false,false,false);
        pvOptions.setSelectOptions(0, 0);
        pvOptions.setOnoptionsSelectListener(this);
    }
    @Override
    public void onOptionsSelect(int i, int i1, int i2) {

        cbAllPlace.setChecked(false);
        List<CitySelectBean.DataBean.SonBean> son = cityListBean.getData().get(i).getSon();
        if(son == null || son.get(i1) == null){
            prefectionItemPlaceAdapter.clearData();
        }else{
            List<CitySelectBean.DataBean.SonBean.GrandSonBean> temp = new ArrayList<>();
            for(CitySelectBean.DataBean.SonBean.GrandSonBean grandSon : son.get(i1).getGrandSon()){
                temp.add(grandSon);
            }
            prefectionItemPlaceAdapter.addData(temp);
        }
    }

    public void setIsFullCheck(boolean isFull){
        cbAllPlace.setChecked(isFull);
    }
    /**---------------------------------------------选择地点---------------------------------------------------*/


    /**
     * Handler消息处理结果
     */
    MyHandler mHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what){
                case IConstant.PERFECTION_PLACE:
                    setCityPicker();
                    break;
            }
        }
    };

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        String s = etPrice.getText().toString();
        if(!TextUtils.isEmpty(s) && Integer.parseInt(s) > Integer.parseInt(limitMaxPrice)){
            tvWraning.setText("*超过定价上线");
            tvWraning.setTextColor(getResources().getColor(R.color.c_239_83_90));
            etPrice.setText(limitMaxPrice);
            etPrice.setSelection(etPrice.getText().toString().length());
        }else{
            tvWraning.setText("您可设置的金额的上限是"+ limitMaxPrice +"元/时");
            tvWraning.setTextColor(getResources().getColor(R.color.c_65_75_85));
        }
    }


    @Override
    public void afterTextChanged(Editable editable) {

    }

    /**
     * 网路请求结果
     */
    private class MyOnrefreshListen implements OkHttpUtils.OnResultListener {
        private int position;

        public MyOnrefreshListen(int position) {
            this.position = position;
        }

        @Override
        public void onSuccess(String result) {
            switch (position){
                case IConstant.PERFECTION_PLACE:
                    SPUtils.savaStringData(IConsName.CASH_CITY_SELECT,result);
                    cityListBean = GsonTools.changeGsonToBean(result, CitySelectBean.class);
                    mHandler.sendEmptyMessage(IConstant.PERFECTION_PLACE);
                    break;
            }
        }

        @Override
        public void onFailure(int errCode,String errMsg) {

        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && (type == IConstant.PERFECTION_PLACE) && pvOptions.isShowing()){
            pvOptions.dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
