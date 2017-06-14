.class public Lcom/wanduoduo/ui/order/PayOrderActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PayOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;,
        Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;
    }
.end annotation


# static fields
.field private static final ALI_RESULT:I = 0x4

.field private static final LOOK_FOR_ORDER_STATUS:I = 0x1

.field private static final ORDER_ERROR:I = 0x3

.field private static final ORDER_FROM_HISTORY:I = 0x2

.field private static final ORDER_JUST_NOW:I = 0x1

.field private static final ORDER_STUTAS_PASS:I = 0x2

.field private static final ORDER_STUTAS_WAIT:I = 0x1

.field private static final PAY_FOR_ORDER:I = 0x2


# instance fields
.field cbWX:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0115
        }
    .end annotation
.end field

.field cbWallet:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017f
        }
    .end annotation
.end field

.field cbZFB:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0117
        }
    .end annotation
.end field

.field private currentTimeMillis:J

.field private isMakeOrder:Z

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private order_id:Ljava/lang/String;

.field private pay_method:Ljava/lang/String;

.field private playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

.field tvMoney:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f4
        }
    .end annotation
.end field

.field tvOrderId:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f5
        }
    .end annotation
.end field

.field tvPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0106
        }
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e5
        }
    .end annotation
.end field

.field tvTime1:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017a
        }
    .end annotation
.end field

.field tvTime2:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017b
        }
    .end annotation
.end field

.field tvTime3:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017c
        }
    .end annotation
.end field

.field tvTime4:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017d
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 76
    const-string v0, "1"

    iput-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->pay_method:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/wanduoduo/ui/order/PayOrderActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/order/PayOrderActivity$1;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/order/PayOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->orderPayComplete()V

    return-void
.end method

.method static synthetic access$302(Lcom/wanduoduo/ui/order/PayOrderActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->isMakeOrder:Z

    return p1
.end method

.method static synthetic access$400(Lcom/wanduoduo/ui/order/PayOrderActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/wanduoduo/ui/order/PayOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/order/PayOrderActivity;->payForWeiXin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/wanduoduo/ui/order/PayOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/order/PayOrderActivity;->payForZhiFuBao(Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentTimeMillis(Ljava/lang/String;)J
    .locals 4
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private getMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWX:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "1"

    iput-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->pay_method:Ljava/lang/String;

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbZFB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "2"

    iput-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->pay_method:Ljava/lang/String;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWallet:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "3"

    iput-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->pay_method:Ljava/lang/String;

    .line 153
    :cond_2
    const-string v1, "pay_method"

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->pay_method:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "order_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->order_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method private orderPayComplete()V
    .locals 3

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v1, "playerInfoBean"

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private payForWallet()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method private payForWeiXin(Ljava/lang/String;)V
    .locals 0
    .parameter "wx"

    .prologue
    .line 174
    invoke-static {p1}, Lcom/wanduoduo/utils/WXPayUtils;->wxPay(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private payForZhiFuBao(Ljava/lang/String;)V
    .locals 4
    .parameter "ali"

    .prologue
    .line 165
    new-instance v2, Lcom/alipay/sdk/app/PayTask;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 166
    .local v2, payTask:Lcom/alipay/sdk/app/PayTask;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, payResult:Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 168
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 169
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v3, v0}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method


# virtual methods
.method public cbChected(Landroid/widget/CheckBox;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWX:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbZFB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWallet:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f040044

    return v0
.end method

.method protected initData()V
    .locals 9

    .prologue
    .line 86
    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 89
    .local v7, intent:Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 90
    .local v8, type:I
    const/4 v2, 0x1

    if-ne v8, v2, :cond_1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->currentTimeMillis:J

    .line 99
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 100
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-wide v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->currentTimeMillis:J

    invoke-direct {v1, p0, v2, v3}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity;J)V

    .line 101
    .local v1, timerTask:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 103
    const-string v2, "playerInfoBean"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/PlayerInfoBean;

    iput-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    .line 105
    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wanduoduo/utils/TimeShowUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvMoney:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getTotalFee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/PlayerInfoBean;->getOrder_id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->order_id:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvOrderId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvPlace:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getPlace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void

    .line 92
    .end local v0           #timer:Ljava/util/Timer;
    .end local v1           #timerTask:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;
    :cond_1
    const/4 v2, 0x2

    if-ne v8, v2, :cond_0

    .line 94
    :try_start_0
    const-string v2, "create_time"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/order/PayOrderActivity;->getCurrentTimeMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->currentTimeMillis:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v6

    .line 96
    .local v6, e:Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0115,
            0x7f0e0117,
            0x7f0e017f,
            0x7f0e0180
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 127
    :sswitch_0
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWX:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbChected(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 130
    :sswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbZFB:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbChected(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 133
    :sswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWallet:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbChected(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 136
    :sswitch_3
    iget-boolean v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->isMakeOrder:Z

    if-nez v0, :cond_0

    .line 137
    const-string v0, "orderinfo"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity;->order_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "\u8bf7\u7b49\u5f85\u670d\u52a1\u8005\u63a5\u5355"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0115 -> :sswitch_0
        0x7f0e0117 -> :sswitch_1
        0x7f0e017f -> :sswitch_2
        0x7f0e0180 -> :sswitch_3
    .end sparse-switch
.end method
