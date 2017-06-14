package com.wanduoduo.ui.info;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.utils.ToastUtils;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoEditContentItemActivity extends BaseActivity {

    @Bind(R.id.rel_nickname)
    RelativeLayout relNickname;
    @Bind(R.id.et_nickname)
    EditText etNickname;

    @Bind(R.id.lv_career)
    ListView lvCareer;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    private int type;
    private boolean isFromRun;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_edit_content_item;
    }

    @Override
    protected void initData() {
        type = getIntent().getIntExtra(IConsName.TYPE, -1);
        isFromRun = getIntent().getBooleanExtra("isFromRun", false);        //true 来自随心约 选择运动
        switch (type){
            case IConsName.REL_NICKNAME:
                relNickname.setVisibility(View.VISIBLE);
                tvTitle.setText("修改昵称");
                tvRightTitleBar.setText("确定");
                setNickname();
                break;
            case IConsName.REL_CAREER:
                lvCareer.setVisibility(View.VISIBLE);
                tvTitle.setText(isFromRun?"运动类型":"职业选择");
                String content = getIntent().getStringExtra("content");
                String[] stringArray = getResources().getStringArray(isFromRun?R.array.appoint_title_run:R.array.career);
                CareerAdapter careerAdapter = new CareerAdapter(stringArray,content);
                lvCareer.setAdapter(careerAdapter);
                break;
        }
    }

    /**
     * 设置昵称
     */
    private void setNickname() {
        String content = getIntent().getStringExtra("content");
        if(!TextUtils.isEmpty(content)){
            etNickname.setText(content);
            etNickname.setSelection(content.length());
        }
    }

    @OnClick({R.id.tv_right_title_bar,R.id.iv_nickname_delete})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.tv_right_title_bar:
                makeSureBack();
                break;
            case R.id.iv_nickname_delete:
                etNickname.setText("");
                break;
        }
    }

    /**
     * 点击确定按钮
     */
    private void makeSureBack() {
        switch (type){
            case IConsName.REL_NICKNAME:
                if(TextUtils.isEmpty(etNickname.getText().toString().trim())){
                    ToastUtils.makeToast("昵称不能为空");
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("nickname",etNickname.getText().toString().trim());
                setResult(RESULT_OK,intent);
                finish();
                break;
        }
    }

    private class CareerAdapter extends BaseAdapter{

        private String content;
        private String[] mData = {};
        public CareerAdapter(String[] stringArray, String content) {
            mData = stringArray;
            this.content = content;
        }

        @Override
        public int getCount() {
            return mData.length;
        }

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        public View getView(final int i, View view, ViewGroup viewGroup) {
            if(view == null)
                view = View.inflate(viewGroup.getContext(),R.layout.item_career,null);
            TextView tvCareer = (TextView) view.findViewById(R.id.tv_item_career);
            tvCareer.setText(mData[i]);

            if(!TextUtils.isEmpty(content) && content.equals(mData[i])){
                tvCareer.setTextColor(viewGroup.getResources().getColor(R.color.c_129_143_255));
            }else{
                tvCareer.setTextColor(viewGroup.getResources().getColor(R.color.c_204_204_204));
            }
            tvCareer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent();
                    intent.putExtra("career",mData[i]);
                    setResult(RESULT_OK,intent);
                    finish();
                }
            });
            return view;
        }
    }
}
