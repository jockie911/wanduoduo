package com.wanduoduo.ui.activi;

import android.content.Intent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;

public class ActiviWatchActivity extends BaseActivity {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.cb_first)
    CheckBox cbFirst;
    @Bind(R.id.cb_second)
    CheckBox cbSecond;
    @Bind(R.id.cb_third)
    CheckBox cbThird;
    List<CheckBox> cbLists = new ArrayList<>();
    private int position = 0;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_activi_watch;
    }

    @Override
    protected void initData() {
        tvTitle.setText("谁可以看");
        tvRightTitleBar.setText("完成");
        tvRightTitleBar.setTextColor(getResources().getColor(R.color.c_129_143_255));

        cbLists.add(cbFirst);
        cbLists.add(cbSecond);
        cbLists.add(cbThird);

        position = getIntent().getIntExtra("watchposition", 0);
        setCBSelected(position);
    }

    @OnClick({R.id.rel_all, R.id.rel_like, R.id.rel_self,R.id.tv_right_title_bar})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_all:
                setCBSelected(1);
                break;
            case R.id.rel_like:
                setCBSelected(2);
                break;
            case R.id.rel_self:
                setCBSelected(3);
                break;
            case R.id.tv_right_title_bar:
                Intent intent = new Intent();
                intent.putExtra("watchposition",position);
                setResult(RESULT_OK,intent);
                finish();
                break;
        }
    }

    private void setCBSelected(int position){
        if(position == 0)
            return;
        this.position = position;
        for (CheckBox cb : cbLists) {
            cb.setVisibility(View.INVISIBLE);
        }
        cbLists.get(position - 1).setVisibility(View.VISIBLE);
    }
}
