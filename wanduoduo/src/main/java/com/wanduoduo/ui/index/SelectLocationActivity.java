package com.wanduoduo.ui.index;

import android.content.Intent;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;

import com.wanduoduo.R;
import com.wanduoduo.adapter.index.SelectLocationAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.CityAllBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.widget.MyHandler;
import com.wanduoduo.widget.SideLetterBar;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;

public class SelectLocationActivity extends BaseActivity implements SideLetterBar.OnLetterChangedListener, AdapterView.OnItemClickListener, TextWatcher {

    @Bind(R.id.sidebar)
    SideLetterBar sideLetterBar;
    @Bind(R.id.lv_place)
    ListView lvPlace;
    @Bind(R.id.et_city)
    EditText etCity;
    private SelectLocationAdapter selectLocationAdapter;
    private CityAllBean cityAllBean;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_select_location;
    }

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.xuan_ze_cheng_shi));
        sideLetterBar.setOnLetterChangedListener(this);
        String stringLocationCash = SPUtils.getStringData(IConsName.CASH_CITY_All, "");

        if (TextUtils.isEmpty(stringLocationCash)) {
            OkHttpUtils.sendGetRequest(IConstant.ALL_CITY, null, new MyOnRefreshListen());
        } else {
            cityAllBean = GsonTools.changeGsonToBean(stringLocationCash, CityAllBean.class);
            mHandler.sendEmptyMessage(0);
        }
        selectLocationAdapter = new SelectLocationAdapter(this);
        lvPlace.setAdapter(selectLocationAdapter);
        lvPlace.setOnItemClickListener(this);

        etCity.addTextChangedListener(this);
    }

    @Override
    public void onLetterChanged(String letter) {
        if (selectLocationAdapter != null && selectLocationAdapter.getIndex(letter) != -1)
            lvPlace.setSelection(selectLocationAdapter.getIndex(letter));
    }

    MyHandler mHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            selectLocationAdapter.addHotData(cityAllBean.getData().getHot_city());
            selectLocationAdapter.addData(cityAllBean.getData().getAll_city(),false);
        }
    };

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        if (selectLocationAdapter.getItemViewType(i) == SelectLocationAdapter.TYPE_ALL){
            if(!selectLocationAdapter.isSearch)
                i = i - 2;
            setDataResult(selectLocationAdapter.mData.get(i).getTitle(),selectLocationAdapter.mData.get(i).getCode(),selectLocationAdapter.mData.get(i).getId());
        }
    }

    public void setDataResult(String cityName,String cityCode,String city_id) {
        Intent intent = new Intent();
        intent.putExtra("city_title",cityName);
        intent.putExtra("city_code",cityCode);
        intent.putExtra("city_id",city_id);
        setResult(RESULT_OK,intent);
        finish();
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        if(!TextUtils.isEmpty(charSequence.toString())){
            List<CityAllBean.DataBean.AllCityBean> searchResultLists = getSearchResult(charSequence.toString());
            if(selectLocationAdapter != null)
                selectLocationAdapter.addData(searchResultLists,true);
        }else{
            selectLocationAdapter.addData(cityAllBean.getData().getAll_city(),false);
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {

    }

     private List<CityAllBean.DataBean.AllCityBean> getSearchResult(String search){
        List<CityAllBean.DataBean.AllCityBean> searchResultLists = new ArrayList<>();
        if(cityAllBean != null){
            for(CityAllBean.DataBean.AllCityBean all_city : cityAllBean.getData().getAll_city()){
                CityAllBean.DataBean.AllCityBean allCityBean = null;
                if(all_city.getTitle().contains(search) || all_city.getPinyin().toUpperCase().contains(search.toUpperCase())){
                    allCityBean = new CityAllBean.DataBean.AllCityBean();
                    allCityBean.setId(all_city.getId());
                    allCityBean.setPinyin(all_city.getPinyin());
                    allCityBean.setTitle(all_city.getTitle());
                    allCityBean.setType(all_city.getType());
                    allCityBean.setCode(all_city.getCode());
                }
                if(allCityBean != null)
                    searchResultLists.add(allCityBean);
            }
            return searchResultLists;
        }
        return null;
    }

    class MyOnRefreshListen implements OkHttpUtils.OnResultListener {

        @Override
        public void onSuccess(String result) {
            SPUtils.savaStringData(IConsName.CASH_CITY_All,result);
            cityAllBean = GsonTools.changeGsonToBean(result, CityAllBean.class);
            mHandler.sendEmptyMessage(0);
        }

        @Override
        public void onFailure(int errCode,String errMsg) {

        }
    }
}
