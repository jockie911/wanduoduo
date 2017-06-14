package com.wanduoduo.ui.activi;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.cjj.MaterialRefreshLayout;
import com.cjj.MaterialRefreshListener;
import com.wanduoduo.R;
import com.wanduoduo.adapter.activi.ActiviItemDiscussAdapter;
import com.wanduoduo.adapter.activi.ItemPicAdapter;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.ActiviBean;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.eventclass.ActiviEventClass;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.appoint.WarningActivity;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.widget.ActionSheetDialog;
import com.wanduoduo.widget.CircleImageView;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;
import com.wanduoduo.widget.MyListView;

import org.greenrobot.eventbus.EventBus;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class ActiviItemContentActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    @Bind(R.id.lv_discuss)
    MyListView lvDiscuss;
    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;
    @Bind(R.id.refreshlayout)
    MaterialRefreshLayout refreshLayout;
    @Bind(R.id.et_dis_content)
    EditText etDisContent;

    private String news_id;
    private int position;
    private int order = 1;  //  评论排序 1 时间降序  2时间升序
    private int page = 1;  //
    private int total_page = 1;  //
    private ActiviBean activiBean;
    private ActiviItemDiscussAdapter discussAdapter;
    private boolean isRefreshData;
    private String comment_id = "0";
    private int type;
    private CharSequence isSystem = "0";

    @Override
    protected int getLayoutRes() {
        getWindow().setSoftInputMode( WindowManager.LayoutParams.SOFT_INPUT_STATE_HIDDEN);
        return R.layout.activity_activi_item_content;
    }

    @Override
    protected void initData() {
        tvTitle.setText("动态详情");
        ivRightTitleBar.setImageResource(R.drawable.share);

        initRefreshListener();
        news_id = getIntent().getStringExtra("news_id");
        position = getIntent().getIntExtra("position", -1);
        type = getIntent().getIntExtra(IConsName.TYPE, 0);

        discussAdapter = new ActiviItemDiscussAdapter();
        lvDiscuss.setAdapter(discussAdapter);

        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                isSystem = infoBean.getData().getIs_system();
            }
        });
        sendDataRequest();

        lvDiscuss.setOnItemClickListener(this);

        if(!TextUtils.isEmpty(getIntent().getStringExtra("nickname"))){
            etDisContent.setText("回复 " + getIntent().getStringExtra("nickname") + ": ");
            etDisContent.setSelection(etDisContent.getText().toString().length());
            comment_id = getIntent().getStringExtra("commentid");
        }
    }

    public void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.NEW_INFO, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                activiBean = GsonTools.changeGsonToBean(result, ActiviBean.class);
                total_page = activiBean.getData().getTotal_page();

                myHandler.sendEmptyMessage(0);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getMap() {
        Map<String, String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, ""));
        map.put("id", news_id);
        map.put(IConsName.PAGE, page + "");
        map.put("order", order + "");
        return map;
    }

    @OnClick({R.id.iv_right_title_bar, R.id.tv_send})
    public void onClick(View view) {
        if (view.getId() == R.id.iv_right_title_bar) {
            if(activiBean != null){
                alertDialog();
            }else{
                ToastUtils.makeToast("正在加载中");
            }
//            sortDiscuss();
        } else if (view.getId() == R.id.tv_send) {
            if (TextUtils.isEmpty(etDisContent.getText().toString())) {
                ToastUtils.makeToast("请输入评论内容");
            } else {
                sendDiscussPost();
            }
        }
    }

    /**
     * 发表评论内容
     */
    private void sendDiscussPost() {
        OkHttpUtils.sendPostRequest(IConstant.NEWS_COMMENT, getDiscussMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                myHandler.sendEmptyMessage(1);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getDiscussMap() {
        Map<String, String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, ""));
        map.put("news_id", news_id);
        map.put("content", etDisContent.getText().toString());
        map.put("comment_id", comment_id);
        return map;
    }

    private void alertDialog() {
        ActionSheetDialog builder = new ActionSheetDialog(this).builder();
        final ActiviBean.DataBean.DataListBean dataListBean = activiBean.getData().getData_list().get(0);

        if(TextUtils.equals(dataListBean.getUser().getId(), SPUtils.getStringData(IConsName.USER_ID,"")) ||
                TextUtils.equals("1",isSystem)){
            builder.addSheetItem("删除", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                @Override
                public void onClick(int which) {
                    deleteItemActivi();
                }
            });
        }
        if(!TextUtils.equals(dataListBean.getUser().getId(), SPUtils.getStringData(IConsName.USER_ID,""))){
            builder.addSheetItem("举报", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                @Override
                public void onClick(int which) {
                    Intent intent = new Intent(ActiviItemContentActivity.this, WarningActivity.class);
                    intent.putExtra(IConsName.TYPE,"2");
                    intent.putExtra("id",dataListBean.getId());
                    startActivity(intent);
                }
            });
        }
        builder.show();
    }

    /**
     * 删除当前随心约
     */
    private void deleteItemActivi() {
        OkHttpUtils.sendPostRequest(IConstant.DELNEWS, getDeleteMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                EventBus.getDefault().post(new ActiviEventClass(ActiviItemContentActivity.this.position,
                        ActiviEventClass.ITEM_DELETE,ActiviItemContentActivity.this.type,false));
                finish();
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String,String> getDeleteMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("news_id",activiBean.getData().getData_list().get(0).getId());
        return map;
    }

    private void sortDiscuss() {
        new ActionSheetDialog(this).builder()
                .addSheetItem("评论时间降序", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        order = 1;
                        sendDataRequest();
                    }
                }).addSheetItem("评论时间升序", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        order = 2;
                        sendDataRequest();
                    }
                }).show();
    }

    MyHandler myHandler = new MyHandler(this) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 0) {
                if (isRefreshData) {
                    refreshLayout.finishRefresh();
                } else {
                    refreshLayout.finishRefreshLoadMore();
                }
                if(activiBean != null && activiBean.getData() != null){
                    initContent(activiBean.getData().getData_list());
                }
                discussAdapter.addData(activiBean.getData().getComment_list(), isRefreshData);
            } else if (msg.what == 1) {    //评论成功
                EventBus.getDefault().post(new ActiviEventClass(ActiviItemContentActivity.this.position,
                        ActiviEventClass.ITEM_DISCUSS,ActiviItemContentActivity.this.type,true));
                comment_id = "0";
                etDisContent.setText("");
                sendDataRequest();
            } else if (msg.what == 2) {
                sendDataRequest();
            }
        }
    };

    private void initRefreshListener() {
        isRefreshData = true;
        refreshLayout.setMaterialRefreshListener(new MaterialRefreshListener() {
            @Override
            public void onRefresh(MaterialRefreshLayout materialRefreshLayout) {
                page = 1;
                isRefreshData = true;
                sendDataRequest();
            }

            @Override
            public void onRefreshLoadMore(MaterialRefreshLayout materialRefreshLayout) {
                if (page < total_page) {
                    page++;
                    isRefreshData = false;
                    sendDataRequest();
                } else {
                    refreshLayout.finishRefreshLoadMore();
                }
                super.onRefreshLoadMore(materialRefreshLayout);
            }
        });
    }

    /**
     * 评论点击回复
     *
     * @param adapterView
     * @param view
     * @param i
     * @param l
     */
    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long l) {
        new ActionSheetDialog(this).builder()
                .addSheetItem("举报评论", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        Intent intent = new Intent(ActiviItemContentActivity.this, WarningActivity.class);
                        intent.putExtra(IConsName.TYPE,"3");
                        intent.putExtra("id",discussAdapter.mData.get(i).getComment_id());
                        startActivity(intent);
                    }
                }).addSheetItem("回复评论", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        comment_id = discussAdapter.mData.get(i).getComment_id();
                        etDisContent.setText("回复 " + discussAdapter.mData.get(i).getUser().getNickname() + ": ");
                        etDisContent.setSelection(etDisContent.getText().toString().length());
                    }
                }).show();
    }

    /*================================== 移植过来的代码 ==================================*/
    @Bind(R.id.iv_avctor)
    CircleImageView ivAvctor;
    @Bind(R.id.tv_name)
    TextView tvName;
    @Bind(R.id.tv_age)
    TextView tvAge;
    @Bind(R.id.tv_visit_time)
    TextView tvVisitTime;
    @Bind(R.id.iv_jian_tou)
    ImageView ivJianTou;
    @Bind(R.id.v_bottom_line)
    View vBottomLine;
    @Bind(R.id.tv_content)
    TextView tvContent;
    @Bind(R.id.mgv_pic)
    MyGridView mgvPic;
    @Bind(R.id.iv_pic)
    ImageView ivPic;
    @Bind(R.id.ll_map_location)
    LinearLayout llMapLocation;
    @Bind(R.id.tv_zan)
    TextView tvZan;
    @Bind(R.id.tv_discuss)
    TextView tvDiscuss;
    @Bind(R.id.rel_person_info)
    RelativeLayout relPersonInfo;
    @Bind(R.id.iv_vip_level)
    ImageView ivVipLevel;
    @Bind(R.id.fl_pic)
    FrameLayout flPic;
    @Bind(R.id.tv_location_place)
    TextView tvLocationPlace;
    @Bind(R.id.tv_read_count)
    TextView tvReadCount;
    @Bind(R.id.tv_activi_time)
    TextView tvActiviTime;
    @Bind(R.id.mgv_zan)
    MyGridView mgvZan;
    @Bind(R.id.ll_zan)
    LinearLayout llZan;

    private void initContent(final List<ActiviBean.DataBean.DataListBean> mData) {
        final int i = 0;
        Glide.with(ActiviItemContentActivity.this).load(mData.get(i).getUser().getAvatar()).centerCrop().into(ivAvctor);
        tvName.setText(mData.get(i).getUser().getNickname());

        ivVipLevel.setVisibility(View.VISIBLE);
        switch (mData.get(i).getUser().getVip_level()) {
            case "1":
                ivVipLevel.setImageResource(R.drawable.vip_1);
                break;
            case "2":
                ivVipLevel.setImageResource(R.drawable.vip_2);
                break;
            case "3":
                ivVipLevel.setImageResource(R.drawable.vip_3);
                break;
            case "4":
                ivVipLevel.setImageResource(R.drawable.vip_4);
                break;
            default:
                ivVipLevel.setVisibility(View.INVISIBLE);
        }

        tvAge.setVisibility(View.VISIBLE);
        if(mData.get(i).getUser().getGender() == 1){
            tvAge.setBackgroundResource(R.drawable.shape_age_male);
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_male);
        }else if(mData.get(i).getUser().getGender() == 2){
            tvAge.setBackgroundResource(R.drawable.shape_age_female);
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_female);
        }else{
            tvAge.setVisibility(View.INVISIBLE);
        }
        tvAge.setText(mData.get(i).getUser().getAge());

        tvActiviTime.setText(TimeShowUtils.getStandardDate(mData.get(i).getCreate_time()));
        ivJianTou.setVisibility(View.INVISIBLE);
        relPersonInfo.setBackgroundColor(BaseApp.getContext().getResources().getColor(R.color.bgcolor));

        if(TextUtils.isEmpty(mData.get(i).getContent())){
            tvContent.setVisibility(View.GONE);
        }else{
            tvContent.setVisibility(View.VISIBLE);
            tvContent.setText(mData.get(i).getContent());
        }

        ItemPicAdapter itemPicAdapter = new ItemPicAdapter(mData.get(i).getPics());
        if(TextUtils.equals("更新了形象视频",mData.get(i).getContent())){
            itemPicAdapter.setVideoUrl(true,mData.get(i).getVideo());
        }else{
            itemPicAdapter.setVideoUrl(false);
        }
        /** 图片显示 */
        flPic.setVisibility(View.VISIBLE);
        if (mData.get(i).getPics() != null && mData.get(i).getPics().size() > 0) {
            mgvPic.setAdapter(itemPicAdapter);
        }

        /** 定位 */
        llMapLocation.setVisibility(View.GONE);
        if (TextUtils.isEmpty(mData.get(i).getAddress())) {
            llMapLocation.setVisibility(View.GONE);
        } else {
            llMapLocation.setVisibility(View.VISIBLE);
            tvLocationPlace.setText(mData.get(i).getAddress());
        }

        tvReadCount.setText(mData.get(i).getView() + "阅读");

        /** 点赞 评论 */
        tvZan.setText(mData.get(i).getLikeCount() + "");
        tvDiscuss.setText(mData.get(i).getCommentCount() + "");
        if (mData.get(i).isIsLike()) {
            TvDrawableUtils.setTvDrawableLeft(tvZan, R.color.c_mei_hong, R.drawable.activi_zan_selected);
        } else {
            TvDrawableUtils.setTvDrawableLeft(tvZan, R.color.c_127_130_134, R.drawable.activi_zan_normal);
        }
        tvZan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                zan(0, mData);
            }
        });

        /**
         * 点赞用户列表
         */
        if (mData.get(i).getLikeCount() == 0) {
            llZan.setVisibility(View.GONE);
        } else {
            llZan.setVisibility(View.VISIBLE);
            WindowManager wm = (WindowManager) BaseApp.getContext().getSystemService(Context.WINDOW_SERVICE);
            int count = (wm.getDefaultDisplay().getWidth() - DensityUtil.dip2px(BaseApp.getContext(), 20)) / DensityUtil.dip2px(BaseApp.getContext(), 45);
            mgvZan.setNumColumns(count);
            ViewGroup.LayoutParams params = mgvZan.getLayoutParams();
            params.width = count * DensityUtil.dip2px(BaseApp.getContext(), 45) - DensityUtil.dip2px(BaseApp.getContext(), 10);
            mgvZan.setLayoutParams(params);
            final ZanAdapter zanAdapter = new ZanAdapter(mData.get(i).getLike_users(), count);
            mgvZan.setAdapter(zanAdapter);

            mgvZan.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> adapterView, View view, int k, long l) {
                    startUserInfoActivity(mData.get(i).getLike_users().get(k).getId());
                }
            });
        }

        ivAvctor.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startUserInfoActivity(mData.get(i).getUser().getId());
            }
        });

        mgvPic.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int j, long l) {
                Intent intent = new Intent(BaseApp.getContext(), ShowPicActivity.class);
                intent.putStringArrayListExtra("piclist", (ArrayList<String>) mData.get(i).getPics());
                intent.putExtra("position", j);
                startActivity(intent);
            }
        });
    }

    private void startUserInfoActivity(String user_id) {
        Intent intent = new Intent(BaseApp.getContext(), InfoEditorPersonActivity.class);
        intent.putExtra(IConsName.ISCANEDIT, false);
        intent.putExtra(IConsName.USER_ID, user_id);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        BaseApp.getContext().startActivity(intent);
    }

    /**
     * @param position
     */
    private void zan(final int position, final List<ActiviBean.DataBean.DataListBean> mData) {
        final boolean isLike = mData.get(position).isIsLike();
        String url = "";
        if (isLike) {     //取消点赞
            url = IConstant.NEWS_DISLIKE;
        } else {
            url = IConstant.NEWS_LIKE;
        }
        OkHttpUtils.sendPostRequest(url, getZanMap(mData.get(position).getId()), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                mData.get(position).setIsLike(!isLike);
                mData.get(position).setLikeCount(!isLike ? mData.get(position).getLikeCount() + 1 : mData.get(position).getLikeCount() - 1);
                myHandler.sendEmptyMessage(2);
                EventBus.getDefault().post(new ActiviEventClass(ActiviItemContentActivity.this.position,ActiviEventClass.ITEM_ZAN,ActiviItemContentActivity.this.type,mData.get(position).isIsLike()));
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }


    private Map<String, String> getZanMap(String news_id) {
        Map<String, String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, ""));
        map.put("news_id", news_id);
        return map;
    }

    private class ZanAdapter extends BaseAdapter {

        private int count;
        public List<ActiviBean.DataBean.DataListBean.LikeUsersBean> mData;

        public ZanAdapter(List<ActiviBean.DataBean.DataListBean.LikeUsersBean> like_users, int count) {
            this.count = count;
            mData = like_users;
            notifyDataSetChanged();
        }

        @Override
        public int getCount() {
            return mData == null?0:mData.size();
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
        public View getView(int i, View view, ViewGroup viewGroup) {
            view = View.inflate(viewGroup.getContext(), R.layout.item_activi_zan, null);
            CircleImageView circleImageView = (CircleImageView) view.findViewById(R.id.civ_avatar);
            Glide.with(viewGroup.getContext()).load(mData.get(i).getAvatar()).centerCrop().into(circleImageView);
            return view;
        }
    }
}
