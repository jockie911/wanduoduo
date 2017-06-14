package com.wanduoduo.fragment;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.baidu.location.BDLocation;
import com.bumptech.glide.Glide;
import com.cjj.MaterialRefreshLayout;
import com.cjj.MaterialRefreshListener;
import com.wanduoduo.R;
import com.wanduoduo.adapter.PopSexListViewAdapter;
import com.wanduoduo.adapter.index.PopRootListViewAdapter;
import com.wanduoduo.adapter.index.PopSubListViewAdapter;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.IndexTagListBean;
import com.wanduoduo.fragment.index.IndexGridViewFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.SelectLocationActivity;
import com.wanduoduo.ui.skill.PlayerSkillManageActivity;
import com.wanduoduo.utils.AreaNameUtils;
import com.wanduoduo.utils.BDLocationUtils;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PopWindowUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/7/8.
 */
public class IndexFragment extends BaseFragment implements  View.OnClickListener, PopupWindow.OnDismissListener {

    private static final int REQUEST_GET_TAG_LIST = 1;
//    private static IndexGiftListBean indexGiftListBean;
    @Bind(R.id.tv_selected_ability)
    TextView tvSelectedAbility;
    @Bind(R.id.tv_selected_sex)
    TextView tvSelectedSex;
    @Bind(R.id.tv_selected_sort)
    TextView tvSelectedSort;
    @Bind(R.id.col_ll_ability)
    LinearLayout colLlAbility;
    @Bind(R.id.tv_service)
    TextView tvRightTitleBar;
    @Bind(R.id.v_View)
    View vView;
    @Bind(R.id.iv_same_city)
    ImageView ivSameCity;
    @Bind(R.id.iv_food)
    ImageView ivFood;
    @Bind(R.id.iv_instrument)
    ImageView ivInstrument;
    @Bind(R.id.iv_exercise)
    ImageView ivExercise;
    @Bind(R.id.tv_place)
    TextView tvPlace;
    @Bind(R.id.refreshlayout)
    MaterialRefreshLayout refreshLayout;

    private PopupWindow sexPopWindow;
    private PopupWindow abilityPopWindow;
    private PopupWindow sortPopWindow;
    private static IndexTagListBean indexTagListBean;

    /** -----------------全局变量---------------- */
    private String selectedTagID = IConstant.SELECTED_ALL;     //默认选中全部
    private int leftSelectPostition;    //pop技能左边
    private int rightSelectPostition;    //pop技能右边
    private ListView subListView;
    private int sexSelectedPosition;    //性别选择的位置
    private int sortSelectedPosition;   //排序选择的位置
    private IndexGridViewFragment indexGridViewFragment;
    private boolean isHasShowLocationDialog;    //避免定位城市多次弹出


    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_index, null);
    }

    @Override
    protected void initData() {
        initAllAbilityTagList();
        if(TextUtils.isEmpty(SPUtils.getStringData(IConsName.CITY_TITLE,""))){
            SPUtils.savaStringData(IConsName.CITY_TITLE,"全国");
            SPUtils.savaStringData(IConsName.CITY_ID, "0");
            tvPlace.setText("全国");

            BDLocationUtils.start(new BDLocationUtils.LocationSuccessListener() {
                @Override
                public void onLocationSuccess(final BDLocation location) {
                    if(!isHasShowLocationDialog){
                        isHasShowLocationDialog = !isHasShowLocationDialog;
                        DialogUtils.showDialog(getActivity(), "检测到当前您正在" + location.getCity() + ",是否切换到当前位置?", new DialogUtils.DialogIF() {
                            @Override
                            public void positiviButtom() {
                                SPUtils.savaStringData(IConsName.CITY_TITLE,location.getCity());
                                SPUtils.savaStringData(IConsName.CITY_ID, AreaNameUtils.getCityCode(location.getCity()));
                                tvPlace.setText(location.getCity());
                                indexGridViewFragment.setCityCode(AreaNameUtils.getCityCode(location.getCity()));
                            }
                        });
                    }
                }
            });
        }else{
            tvPlace.setText(SPUtils.getStringData(IConsName.CITY_TITLE,""));
        }

//        refreshLayout.autoRefresh();
        indexGridViewFragment = (IndexGridViewFragment) getChildFragmentManager().findFragmentById(R.id.index_gv_fragment);
        indexGridViewFragment.isRefreshData = true;
        indexGridViewFragment.closeRefresh(refreshLayout);

        refreshLayout.setMaterialRefreshListener(new MaterialRefreshListener() {
            @Override
            public void onRefresh(MaterialRefreshLayout materialRefreshLayout) {
                indexGridViewFragment.page = 1;
                indexGridViewFragment.isRefreshData = true;
                indexGridViewFragment.closeRefresh(refreshLayout);
                indexGridViewFragment.sendDataRequest();
            }

            @Override
            public void onRefreshLoadMore(MaterialRefreshLayout materialRefreshLayout) {
                if(indexGridViewFragment.page < indexGridViewFragment.totalPage){
                    indexGridViewFragment.page ++;
                    indexGridViewFragment.isRefreshData = false;
                    indexGridViewFragment.closeRefresh(refreshLayout);
                    indexGridViewFragment.sendDataRequest();
                }else {
                    refreshLayout.finishRefreshLoadMore();
                }
            }
        });
        tvRightTitleBar.setText("技能管理");
    }

    /**
     * 获取二级联动列表数据
     */
    private void initAllAbilityTagList() {
        OkHttpUtils.sendGetRequest(IConstant.TAG_LIST, null, new MyOnResultListener(REQUEST_GET_TAG_LIST));
    }

    @OnClick({R.id.tv_place, R.id.tv_service, R.id.fl_selected_ability, R.id.fl_selected_sex, R.id.fl_selected_sort,
            R.id.iv_same_city, R.id.iv_food, R.id.iv_instrument, R.id.iv_exercise})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_place:
                startActivityForResult(new Intent(mContext, SelectLocationActivity.class), IConstant.CITY_ALL);
                break;
            case R.id.tv_service:   /*成为服务者*/
                startActivity(new Intent(mContext, PlayerSkillManageActivity.class));
                break;
            case R.id.fl_selected_ability:
                selectedAbilttyPopWindow();
                break;
            case R.id.fl_selected_sex:
                setTextColorAndDrawable(tvSelectedSex, true);
                selectedSexPopWindow();
                break;
            case R.id.fl_selected_sort:
                setTextColorAndDrawable(tvSelectedSort, true);
                selectedSortPopWindow();
                break;
            case R.id.iv_same_city:
                setSelectImageView(ivSameCity,0);
                break;
            case R.id.iv_food:
                setSelectImageView(ivFood,1);
                break;
            case R.id.iv_instrument:
                setSelectImageView(ivInstrument,2);
                break;
            case R.id.iv_exercise:
                setSelectImageView(ivExercise,3);
                break;
        }
    }

    /**
     * 选择技能的popwindow
     */
    private void selectedAbilttyPopWindow() {
        if(indexTagListBean == null)
            return;
        setTextColorAndDrawable(tvSelectedAbility, true);
        abilityPopWindow = PopWindowUtils.getWindow(mContext, vView, R.layout.pop_ability_selected);
        setPopWindowShowScreemAlphaChanged(abilityPopWindow);

        View view = abilityPopWindow.getContentView();
        final ListView rootListView = (ListView) view.findViewById(R.id.root_listview);
        subListView = (ListView) view.findViewById(R.id.sub_listview);

        final PopRootListViewAdapter popRootListViewAdapter = new PopRootListViewAdapter(leftSelectPostition);
        rootListView.setAdapter(popRootListViewAdapter);
        final List<String> rootList = new ArrayList();
        final List<IndexTagListBean.DataBean.DataListBean> data_list = indexTagListBean.getData().getData_list();
        rootList.add("全部技能");
        for(IndexTagListBean.DataBean.DataListBean data : data_list){
            rootList.add(data.getCategory_name());
        }
        rootList.add("其他");
        popRootListViewAdapter.addData(rootList);

        final PopSubListViewAdapter popSubListViewAdapter = new PopSubListViewAdapter();
        subListView.setAdapter(popSubListViewAdapter);
        //  初始化选中右边状态
        if(leftSelectPostition != 0 && leftSelectPostition != rootList.size() - 1){
            List<String> subStatusList = new ArrayList<>();
            for(IndexTagListBean.DataBean.DataListBean.DataListChildBean data_list_child: data_list.get(leftSelectPostition - 1).getData_list_child()){
                subStatusList.add(data_list_child.getTag_name());
            }
            popSubListViewAdapter.addData(subStatusList,rightSelectPostition);
            subListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> adapterView, View view, int k, long l) {
                    rightSelectPostition = k;
                    selectedTagID = data_list.get(leftSelectPostition - 1).getData_list_child().get(k).getTag_id();
                    tvSelectedAbility.setText(data_list.get(leftSelectPostition - 1).getData_list_child().get(k).getTag_name());
                    indexGridViewFragment.setSkillCode(data_list.get(leftSelectPostition - 1).getData_list_child().get(k).getTag_id(),"0");
                    popWindowDismiss(abilityPopWindow);
                }
            });

        }
        rootListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                abilityPopItemClick(adapterView, i, rootList, data_list, popSubListViewAdapter);
            }
        });
    }

    private void abilityPopItemClick(AdapterView<?> adapterView, final int i, List<String> rootList, final List<IndexTagListBean.DataBean.DataListBean> data_list, PopSubListViewAdapter popSubListViewAdapter) {
        for (int k = 0;k < adapterView.getCount();k++){
            TextView tv = (TextView) adapterView.getChildAt(k).findViewById(R.id.tv_pop_item_lv_tv);
            if(i == k){
                adapterView.getChildAt(k).setBackgroundResource(R.color.bgcolor);
                tv.setTextColor(getResources().getColor(R.color.c_mei_hong));
            }else{
                adapterView.getChildAt(k).setBackgroundResource(R.color.bgcolor_deep);
                tv.setTextColor(getResources().getColor(R.color.c_208_210_211));
            }
        }
        if(i == 0){
            setImageViewDefault();
            selectedTagID = IConstant.SELECTED_ALL;
            leftSelectPostition = 0;
            tvSelectedAbility.setText("全部技能");
            indexGridViewFragment.setSkillCode(IConstant.SKILL_CODE_ALL,"0");
            popWindowDismiss(abilityPopWindow);
        }else if(i == rootList.size() - 1){
            setImageViewDefault();
            selectedTagID = IConstant.SELECTED_NONE;
            leftSelectPostition = rootList.size() - 1;
            tvSelectedAbility.setText("其他");
            popWindowDismiss(abilityPopWindow);
            indexGridViewFragment.setSkillCode(IConstant.SKILL_CODE_OTHER,"0");
        }else {
            List<String> subList = new ArrayList<>();
            for(IndexTagListBean.DataBean.DataListBean.DataListChildBean data_list_child: data_list.get(i - 1).getData_list_child()){
                subList.add(data_list_child.getTag_name());
            }
            popSubListViewAdapter.addData(subList,-1);
            subListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> adapterView, View view, int j, long l) {
                    leftSelectPostition = i;
                    rightSelectPostition = j;
                    selectedTagID = data_list.get(i - 1).getData_list_child().get(j).getTag_id();
                    tvSelectedAbility.setText(data_list.get(i - 1).getData_list_child().get(j).getTag_name());
                    setImageViewDefault();
                    indexGridViewFragment.setSkillCode(data_list.get(i - 1).getData_list_child().get(j).getTag_id(),"0");
                    popWindowDismiss(abilityPopWindow);
                }
            });
        }
    }

    private void selectedSexPopWindow() {
        sexPopWindow = PopWindowUtils.getWindow(mContext, vView, R.layout.pop_sex_selected);
        setPopWindowShowScreemAlphaChanged(sexPopWindow);
        View view = sexPopWindow.getContentView();
        ListView popListView = (ListView) view.findViewById(R.id.pop_listview);
        PopSexListViewAdapter popSexListViewAdapter = new PopSexListViewAdapter();
        popListView.setAdapter(popSexListViewAdapter);
        popSexListViewAdapter.addData(getSexData(),sexSelectedPosition);

        popListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                sexSelectedPosition = i;
                tvSelectedSex.setText(getSexData().get(i));
                indexGridViewFragment.setSex(i + "");       /** 选择性别后刷新*/
                popWindowDismiss(sexPopWindow);
            }
        });
    }

    private void selectedSortPopWindow() {
        sortPopWindow = PopWindowUtils.getWindow(mContext, vView, R.layout.pop_sex_selected);
        setPopWindowShowScreemAlphaChanged(sortPopWindow);
        View view = sortPopWindow.getContentView();
        ListView popListView = (ListView) view.findViewById(R.id.pop_listview);
        PopSexListViewAdapter popSexListViewAdapter = new PopSexListViewAdapter();
        popListView.setAdapter(popSexListViewAdapter);
        popSexListViewAdapter.addData(getSortData(),sortSelectedPosition);

        popListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                sortSelectedPosition = i;
                tvSelectedSort.setText(getSortData().get(i));
                indexGridViewFragment.setSortCode(i);
                popWindowDismiss(sortPopWindow);
            }
        });
    }

    private List<String> getSexData(){
        List<String> sexDataList = new ArrayList<>();
        sexDataList.add("不限男女");
        sexDataList.add("只限男");
        sexDataList.add("只限女");
        return sexDataList;
    }

    private List<String> getSortData(){
        List<String> sexSortList = new ArrayList<>();
//        sexSortList.add("智能排序");
//        sexSortList.add("人气最高");
//        sexSortList.add("好评优先");
        sexSortList.add("不限价格");
        sexSortList.add("高价优先");
        sexSortList.add("低价优先");
        return sexSortList;
    }

    private void setPopWindowShowScreemAlphaChanged(PopupWindow pw) {
        WindowManager.LayoutParams attributes = getActivity().getWindow().getAttributes();
        attributes.alpha = 0.7f;
        getActivity().getWindow().setAttributes(attributes);
        if(pw != null){
            pw.setOnDismissListener(this);
        }
    }


    private void popWindowDismiss(PopupWindow pw) {
        if (pw != null){
            pw.dismiss();
            WindowManager.LayoutParams params = getActivity().getWindow().getAttributes();
            params.alpha = 1.0f;
            getActivity().getWindow().setAttributes(params);
        }
    }

    /**
     * popwindow 初始化原先的状态
     */
    @Override
    public void onDismiss() {
        setTextColorAndDrawable(tvSelectedAbility, false);
        setTextColorAndDrawable(tvSelectedSex, false);
        setTextColorAndDrawable(tvSelectedSort, false);
        WindowManager.LayoutParams params = getActivity().getWindow().getAttributes();
        params.alpha = 1.0f;
        getActivity().getWindow().setAttributes(params);
    }

    private void setTextColorAndDrawable(TextView tv, boolean isSelected) {
        Drawable drawable;
        if (isSelected) {
            tv.setTextColor(mContext.getResources().getColor(R.color.c_mei_hong));
            drawable = getResources().getDrawable(R.drawable.index_triangle_selected);
        } else {
            tv.setTextColor(mContext.getResources().getColor(R.color.c_208_210_211));
            drawable = getResources().getDrawable(R.drawable.index_triangle_normal);
        }
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        tv.setCompoundDrawables(null, null, drawable, null);
    }

    /**
     * 设置图片选中
     * @param targetImageView
     */
    private void setSelectImageView(ImageView targetImageView, int selectedPosition){
        setImageViewDefault();
        setImageDrawable(targetImageView,selectedPosition,true);
        leftSelectPostition = selectedPosition + 1;
        rightSelectPostition = -1;
        tvSelectedAbility.setText(indexTagListBean.getData().getData_list().get(selectedPosition).getCategory_name());

        indexGridViewFragment.setSkillCode("0",indexTagListBean.getData().getData_list().get(selectedPosition).getCategory_id());
    }

    private void setImageViewDefault(){
        setImageDrawable(ivSameCity, 0,false);
        setImageDrawable(ivFood, 1,false);
        setImageDrawable(ivInstrument, 2,false);
        setImageDrawable(ivExercise, 3,false);
    }

    private void setImageDrawable(ImageView targetImageView,int position,boolean isSelected){
//        targetImageView.setImageDrawable(mContext.getResources().getDrawable(drawableResID));
        IndexTagListBean.DataBean.DataListBean dataListBean = indexTagListBean.getData().getData_list().get(position);

        Glide.with(getActivity()).load(isSelected?dataListBean.getCategory_image_c():dataListBean.getCategory_image()).centerCrop().into(targetImageView);
    }

    /**
     * 网络请求返回监听
     */
    class MyOnResultListener implements OkHttpUtils.OnResultListener {

        private int requestCode;

        MyOnResultListener(int requestCode) {
            this.requestCode = requestCode;
        }

        @Override
        public void onSuccess(String result) {
            switch (requestCode) {
                case REQUEST_GET_TAG_LIST:
                    indexTagListBean = GsonTools.changeGsonToBean(result, IndexTagListBean.class);
                    handler.sendEmptyMessage(0);
                    break;
            }
        }

        @Override
        public void onFailure(int errCode, String errMsg) {

        }
    }

    Handler handler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            setImageViewDefault();
        }
    };

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode){
            case IConstant.CITY_ALL:
                if(data != null){
                    String city_title = data.getStringExtra("city_title");
                    tvPlace.setText(city_title);
                    String city_code = data.getStringExtra("city_code");
                    JLog.e("city_code   " + city_code);
                    SPUtils.savaStringData(IConsName.CITY_TITLE,city_title);
                    SPUtils.savaStringData(IConsName.CITY_ID,city_code);
                    indexGridViewFragment.setCityCode(city_code);
                }
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }
}
