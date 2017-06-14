package com.wanduoduo.ui.info;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.moxun.tagcloudlib.view.TagCloudView;
import com.moxun.tagcloudlib.view.TagsAdapter;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ScreemUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;

import org.json.JSONArray;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoEditTagActivity extends BaseActivity implements View.OnClickListener {

    private static final int TAG_MY = 3;
    private static final int TAG_FOOD = 4;
    private static final int TAG_SINGER = 5;
    private static final int TAG_SPORT = 6;
    private static final int TAG_TRAVEL = 7;

    TagCloudView tagCloudView;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.tv_add_tag)
    TextView tvAddTag;
    @Bind(R.id.ll_new_tag)
    LinearLayout llNewTag;

    ArrayList<String> selectedTagLists = new ArrayList<>();
    private int type;
//    private AlertDialog dialog;
    private EditText etAddTag;
    private String[] allTags;
    private Dialog dialog;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_edit_tag;
    }

    @Override
    protected void initData() {
        tvRightTitleBar.setText("确定");
        type = getIntent().getIntExtra(IConsName.TYPE, -1);
        if(type == TAG_MY){
            tvTitle.setText("我的标签");
            TvDrawableUtils.setTvDrawableLeft(tvAddTag,R.color.sport,R.drawable.sport_add);
        }else if(type == TAG_SPORT){
            tvTitle.setText("喜欢的运动");
            TvDrawableUtils.setTvDrawableLeft(tvAddTag,R.color.sport,R.drawable.sport_add);
        }else if(type == TAG_SINGER){
            tvTitle.setText("喜欢的歌手");
            TvDrawableUtils.setTvDrawableLeft(tvAddTag, R.color.singer,R.drawable.singer_add);
        }else if(type ==TAG_FOOD ){
            tvTitle.setText("喜欢的美食");
            TvDrawableUtils.setTvDrawableLeft(tvAddTag,R.color.food,R.drawable.food_add);
        }else if(type == TAG_TRAVEL){
            tvTitle.setText("喜欢的旅行");
            TvDrawableUtils.setTvDrawableLeft(tvAddTag,R.color.travel,R.drawable.travel_add);
        }

        allTags = getIntent().getStringArrayExtra("allTag");
        ArrayList<String> selectedTags = getIntent().getStringArrayListExtra("selectedTags");
        if(selectedTags != null){
            selectedTagLists.addAll(selectedTags);
        }
        tagCloudView = (TagCloudView) findViewById(R.id.tag_cloud_view);
        TagViewAdapter tagViewAdapter = new TagViewAdapter(allTags);
        tagCloudView.setAdapter(tagViewAdapter);

        addNewTagTextViewToContainer();
    }

    @OnClick({R.id.tv_right_title_bar,R.id.tv_add_tag})
    public void onClick(View view){
        if(view.getId() == R.id.tv_right_title_bar){
            makeSurePosTag();
        }else if(view.getId() == R.id.tv_add_tag){
            addNewTag();
        }else if(view.getId() == R.id.tv_true){
            if(TextUtils.isEmpty(etAddTag.getText().toString())){
                ToastUtils.makeToast("标签不可以为空");
                return;
            }
            if(selectedTagLists.size() == 6){
                ToastUtils.makeToast("最多只能添加6个");
                return;
            }else{
                selectedTagLists.add(etAddTag.getText().toString());
                addNewTagTextViewToContainer();
                dialog.dismiss();
            }
        }else if(view.getId() == R.id.tv_false){
            dialog.dismiss();
        }
    }


    private void addNewTagTextViewToContainer() {
        llNewTag.removeAllViews();
        for (String t : selectedTagLists) {
            if(!allTagList().contains(t)){
                final TextView textView = new TextView(BaseApp.getContext());
                textView.setPadding(20,10,20,10);
                textView.setText(t);
                textView.setPadding(DensityUtil.dip2px(BaseApp.getContext(),10),DensityUtil.dip2px(BaseApp.getContext(),5),DensityUtil.dip2px(BaseApp.getContext(),10),DensityUtil.dip2px(BaseApp.getContext(),5));
                textView.setRight(DensityUtil.dip2px(BaseApp.getContext(),8));
                getStringbg(textView);
                llNewTag.addView(textView);

                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        selectedTagLists.remove(textView.getText());
                        llNewTag.removeView(view);
                    }
                });
            }
        }
    }

    private List<String> allTagList(){
        List<String> list = new ArrayList<>();
        for (int i = 0; i < allTags.length; i++) {
            list.add(allTags[i]);
        }
        return list;
    }

    /**
     * 增加新的自定义标签
     */
    private void addNewTag() {
        dialog = new Dialog(this, R.style.AlertDialogStyle);
        View view = LayoutInflater.from(this).inflate(R.layout.dialog_add_new_tag, null);
        dialog.setContentView(view);
        dialog.show();
        etAddTag = (EditText) view.findViewById(R.id.et_add_new_tag);
        etAddTag.setText("");
        TextView tvTrue = (TextView) view.findViewById(R.id.tv_true);
        TextView tvFalse = (TextView) view.findViewById(R.id.tv_false);
        tvTrue.setOnClickListener(this);
        tvFalse.setOnClickListener(this);
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                ScreemUtils.closeSoftKeyBoard(InfoEditTagActivity.this,getWindow());
            }
        });
    }

    /**
     * 上传tag
     */
    private void makeSurePosTag() {
        OkHttpUtils.sendPostRequest(IConstant.USER_INFO, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        Intent intent = new Intent();
                        intent.putStringArrayListExtra("selectedTagLists",selectedTagLists);
                        setResult(InfoEditTagActivity.RESULT_OK,intent);
                        finish();
                    }
                });
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));

        JSONArray jsonArray = new JSONArray();
        for (String s : selectedTagLists) {
            jsonArray.put(s);
        }
        String tag = selectedTagLists.size() == 0?"":jsonArray.toString();
        if(type == TAG_MY){
            map.put("character_interest",tag);
        }else if(type == TAG_SPORT){
            map.put("sports_interest",tag);
        }else if(type == TAG_SINGER){
            map.put("star_interest",tag);
        }else if(type == TAG_FOOD){
            map.put("food_interest",tag);
        }else if(type == TAG_TRAVEL){
            map.put("place_interest",tag);
        }
        return map;
    }

    private class TagViewAdapter extends TagsAdapter {

        private String[] allTags;
        public TagViewAdapter(String[] allTags) {
            this.allTags = allTags;
        }

        @Override
        public int getCount() {
            return allTags.length;
        }

        @Override
        public View getView(Context context, final int position, final ViewGroup parent) {
            final TextView textView = new TextView(parent.getContext());
            textView.setText(allTags[position]);
            textView.setTextColor(parent.getResources().getColor(R.color.c_208_210_211));

            if(selectedTagLists.contains(allTags[position])){
                textView.setTag(1);
                getStringColor(textView);
            }else{
                textView.setTag(0);
            }
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if((int)textView.getTag() == 0){
                        if(selectedTagLists.size() < 6){
                            textView.setTag(1);
                            getStringColor(textView);
                            selectedTagLists.add(allTags[position]);
                        }else{
                            ToastUtils.makeToast("最多只能添加6个");
                        }
                    }else{
                        textView.setTag(0);
                        textView.setTextColor(parent.getResources().getColor(R.color.c_208_210_211));
                        selectedTagLists.remove(allTags[position]);
                    }
                }
            });
            return textView;
        }

        @Override
        public Object getItem(int position) {
            return allTags[position];
        }

        @Override
        public int getPopularity(int position) {
            return position%5;
        }

        @Override
        public void onThemeColorChanged(View view, int themeColor) {

        }
    }
    private void getStringColor(TextView textView) {
        String colorString = "#9cbefb";
        switch (type){
            case TAG_MY:
                colorString = "#9cbefb";
                break;
            case TAG_SPORT:
                colorString = "#9cbefb";
                break;
            case TAG_SINGER:
                colorString = "#f4a96f";
                break;
            case TAG_FOOD:
                colorString = "#e79bc1";
                break;
            case TAG_TRAVEL:
                colorString = "#00aaee";
                break;
        }
        textView.setTextColor(Color.parseColor(colorString));
    }

    private void getStringbg(TextView textView) {
        int resID = 0;
        switch (type){
            case TAG_MY:
                resID = R.drawable.shape_tag_sport;
                break;
            case TAG_SPORT:
                resID = R.drawable.shape_tag_sport;
                break;
            case TAG_SINGER:
                resID = R.drawable.shape_tag_singer;
                break;
            case TAG_FOOD:
                resID = R.drawable.shape_tag_food;
                break;
            case TAG_TRAVEL:
                resID = R.drawable.shape_tag_travel;
                break;
        }
        textView.setTextColor(getResources().getColor(R.color.c_208_210_211));
        textView.setBackgroundResource(resID);
    }
}
