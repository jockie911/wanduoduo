package com.wanduoduo.istatic;

/**
 * Created by jockie on 2016/7/8.
 */
public class IConstant {
    /**
     * url接口
     */
    public static final String BASE_URL = "http://api.wanduoduo.cc/v2/";
//    public static final String BASE_URL = "http://test.api.wanduoduo.cc/v2/";
    public static final String SMS_CODE = "sms_code";   //获取验证码
    public static final String USER_LOGIN = "user_login";   //用户登录
    public static final String USER_LOGOUT = "user_logout";   //用户登出
    public static final String USER_LOGINPASS = "user_loginpass";   //密码登录
    public static final String USER_INFO = "user_info";   //获取get&修改post 用户信息
    public static final String VIDEO_UPLOAD = "video_upload";   //上传视频
    public static final String TAG_LIST = "tag_list";   //index标签
    public static final String ALL_CITY = "all_city";   //城市列表
    public static final String GIFT_PUB = "gift_pub";   //发布技能
    public static final String GIFT_LIST = "gift_list";   //技能列表
    public static final String STARTUP = "startup";   //
    public static final String PIC_UPLOAD = "pic_upload";   //上传图片
    public static final String CITY_SELECT = "city_select";   //三级联动省市
//    public static final String APPLY = "apply";             //用户下订单
//    public static final String ORDERLIST = "orderlist";        //我的订单列表接口
    public static final String GIFT_COMMENT = "gift_comment";        //我约的达人订单回复
    public static final String GCOMMENTLIST = "gcommentlist";        //个人列表的技能评价
//    public static final String ORDER_CENTER = "order_center";        //服务者的订单列表
    public static final String ORDER_OVER = "order_over";        //结束当前订单

    public static final String SERVER_GIFT = "server_gift";        //服务者技能管理
//    public static final String ORDER_CANCLE = "order_cancel";        //取消订单
//    public static final String ORDER_REFURN = "order_refund";        //订单退款
    public static final String GIFT_CANCLE = "gift_cancel";        //技能下架
    public static final String USER_VISITLIST = "user_visitlist";        //用户来访记录
    public static final String TICKET_LIST = "ticket_list";         //优惠券列表
    public static final String EXCHANGE_TICKET = "exchange_ticket";         //兑换优惠券
    public static final String QA_LIST = "qa_list";         //问题答案
    public static final String FIND_PASS = "find_pass"; //修改密码
    public static final String CHARGE = "charge"; //充值接口
    public static final String CHARGE_PAY = "charge_pay"; //充值支付
    public static final String GIFT_OFF = "gift_off"; //技能下架
    public static final String GIFT_CENTER = "gift_center";     //技能中心
    public static final String USER_AVATAR = "user_avatar";        //上传头像
//    public static final String PAY = "pay";             //订单支付
    public static final String ORDERINFO = "orderinfo";     //单个订单的状态
    public static final String GCOMMENTLIST_ALL = "gcommentlist_all";     //个人中心的评价
//    public static final String ORDER_CONFIRM = "order_confirm";     //确认对方下单
    public static final String USER_BILLSUM = "user_billsum";       //收入和退款
    public static final String USER_FRIENDS = "user_friends";       //收入和退款
    public static final String BIND_TEL = "bind_tel";       //绑定手机号
    public static final String USER_FOLLOW = "user_follow";       //关注
    public static final String USER_UNFOLLOW = "user_unfollow";       //取消关注
    public static final String USER_FOLLOWLIST = "user_followlist";       //取消关注
    public static final String FEED_BACK = "feed_back";       //
    public static final String CHARGE_VIP = "charge_vip";       //充值vip
    public static final String GIFT_ON = "gift_on";       //技能上架
    public static final String SYS_MESSAGE = "sys_message";       //
    public static final String USER_ITEMLOG = "user_itemlog";       //个人礼物记录
    public static final String CHARM_MONRY = "charm_money";       //魅力值 转成 money
    public static final String SEND_ITEM = "send_item";       //赠送礼物
    public static final String ITEM_LIST = "item_list";       //所有的礼物列表
    public static final String SEND_MESSAGE = "send_message";       //通用发送消息
    public static final String USER_LIST = "user_list";       //用户列表
    public static final String USER_ALIVE = "user_alive";       //用户活跃度
    public static final String USER_BLACKLIST = "user_blacklist";       //黑名单列表
    public static final String USER_BLACK = "user_black";       //加入黑名单
    public static final String USER_UNBLACK = "user_unblack";       //取消黑名单
    public static final String ACTIVITY_NEWS = "activity_news";       //发布动态
    public static final String NEWLIST = "newlist";         //动态列表
    public static final String USER_ROCKET = "user_rocket";         //  火箭置顶
    public static final String NEW_INFO = "new_info";         //  查看单个动态
    public static final String NEWS_LIKE = "news_like";         //  动态点赞
    public static final String NEWS_DISLIKE = "news_dislike";         //  动态取消点赞
    public static final String NEWS_COMMENT = "news_comment";         //动态评论
    public static final String USER_NEWLIST = "user_newlist";         //  个人动态
    public static final String DATE_PUB = "date_pub";         //  随心约，发布
    public static final String DATE_LIST = "date_list";         //  拉去随心约动态数据
    public static final String USERDATE = "userdate";         //  获取单条随心约数据
    public static final String DATE_DEL = "date_del";         //  删除随心约
    public static final String NEW_VIEWTYPE = "new_viewtype";     //  删除随心约
    public static final String PRO_APLLY = "pro_apply";         //  达人申请
    public static final String USER_OPERATION = "user_operation";         //  用户操作
    public static final String USER_PUNISH = "user_punish";         //  用户封号
    public static final String USER_DATELIST = "user_datelist";         //  随心约个人接口
    public static final String WE_LOGIN = "we_login";         //  随心约个人接口
    public static final String FILM_LIST = "film_list";         //  电影列表
    public static final String WARNING = "warning";         //  举报
    public static final String DELNEWS = "delnews";         //  删除动态


    public static final String PAY_TWO = "pay_two";         //  支付订单流程2
    public static final String APPLY_TWO = "apply_two";         //  下单流程2
    public static final String ORDER_CONFIRMTWO = "order_confirmtwo";         //  订单确认流程2
    public static final String ORDERLIST_TWO = "orderlisttwo";        //我的订单列表接口
    public static final String ORDER_CENTER_TWO = "order_centertwo";        //服务者的订单列表
    public static final String ORDER_REFURN_TWO = "order_refundtwo";        //订单退款
    public static final String ORDER_CANCLE_TWO = "order_canceltwo";        //取消订单 未付款




    /**
     * 常量
     */
    public static final String SECRET_K = "wanduoduo123321";
    public static final String K = "k";
    public static final String T = "t";
    public static final String SP_NAME = "my_sp";

    /**
     * 状态常量
     */
    public static final int PERFECTION_KIND = 1;
    public static final int PERFECTION_TITLE = 2;
    public static final int PERFECTION_PRICE = 3;
    public static final int PERFECTION_COMMUNICATE = 4;
    public static final int PERFECTION_TIME = 5;
    public static final int PERFECTION_PLACE = 6;
    public static final int PERFECTION_DESC = 7;
    public static final int PERFECTION_CERT = 8;
    public static final int PERFECTION_DRINK = 9;


//    public static final int PHOTO_CAMARE = 10010;
//    public static final int PHOTO_PIC = 10086;
    public static final int PHOTO_PIC_REQUEST_CODE = 65535;

    /**
     * 字体名称
     */
    public static final String FONT_BLOD = "Bold";
    public static final String FONT_EXTRALIGHT = "ExtraLight";
    public static final String FONT_HEAVY = "Heavy";
    public static final String FONT_LIGHT = "Light";
    public static final String FONT_MEDIUM = "Medium";
    public static final String FONT_REGULAR = "Regular";


    public static final String OTHER_TAG_ID = "0";

    public static final String COMMUNICATE_FIRST = "2";     //指定时间
    public static final String COMMUNICATE_SECOND = "1";    //无需指定
    public static final String DRINK_YES = "1";
    public static final String DRINK_NO = "2";
    public static final String SELECTED_ALL = "0";
    public static final String SELECTED_NONE = "999";

    public static final int CITY_ALL = 1;
    public static final String SKILL_CODE_OTHER = "999";
    public static final String SKILL_CODE_ALL = "0";


    public static final String WXAPP_ID = "wx639bd824236a825c";
    public static final String WITHDRAW = "withdraw";       //提现
    public static final String USER_BILL = "user_bill";       //账户明细
}
