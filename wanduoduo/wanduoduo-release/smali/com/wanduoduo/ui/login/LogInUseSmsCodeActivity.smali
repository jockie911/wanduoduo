.class public Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "LogInUseSmsCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;,
        Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;
    }
.end annotation


# static fields
.field private static final LOGIN_REQUEST_CODE:I = 0x2

.field private static final SMS_REQUEST_CODE:I = 0x1


# instance fields
.field etPhoneNum:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e012f
        }
    .end annotation
.end field

.field etSmsCode:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0135
        }
    .end annotation
.end field

.field private infoBean:Lcom/wanduoduo/bean/InfoBean;

.field ivPsd:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0136
        }
    .end annotation
.end field

.field ivSmsCodeIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0134
        }
    .end annotation
.end field

.field llBaseTitleBar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ec
        }
    .end annotation
.end field

.field llLogin:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e012d
        }
    .end annotation
.end field

.field sHandler:Lcom/wanduoduo/widget/MyHandler;

.field private timer:Ljava/util/Timer;

.field tvForgetPsw:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0139
        }
    .end annotation
.end field

.field tvSmsCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0137
        }
    .end annotation
.end field

.field tvUseSmsCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e013a
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 149
    new-instance v0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->connectRongIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private connectRongIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "rctoken"
    .parameter "nickname"
    .parameter "avatar"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/base/BaseApp;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lio/rong/imkit/RongIM;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;

    .line 242
    :cond_0
    return-void
.end method

.method private timerSmsCode()V
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 118
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->timer:Ljava/util/Timer;

    .line 119
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;J)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 120
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f04003a

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 70
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u767b\u9646"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->llLogin:Landroid/widget/LinearLayout;

    const v1, 0x7f02027d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvUseSmsCode:Landroid/widget/TextView;

    const-string v1, "\u4f7f\u7528\u5bc6\u7801\u767b\u9646"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->ivSmsCodeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvForgetPsw:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->ivPsd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etSmsCode:Landroid/widget/EditText;

    const-string v1, "\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0137,
            0x7f0e0138,
            0x7f0e0130,
            0x7f0e013a
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 84
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, phoneNum:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 87
    :sswitch_0
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->timerSmsCode()V

    .line 92
    const-string v2, "sms_code"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v3, "mobile"

    invoke-static {v3, v0}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;

    invoke-direct {v4, p0, v5}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;I)V

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 95
    :sswitch_1
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u6b63\u5728\u767b\u9646\u4e2d..."

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, smsCode:Ljava/lang/String;
    const-string v2, "user_login"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v3, "mobile"

    invoke-static {v3, v0}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v3, "sms_code"

    invoke-static {v3, v1}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;I)V

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto/16 :goto_0

    .line 108
    .end local v1           #smsCode:Ljava/lang/String;
    :sswitch_2
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etPhoneNum:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x7f0e0130 -> :sswitch_2
        0x7f0e0137 -> :sswitch_0
        0x7f0e0138 -> :sswitch_1
        0x7f0e013a -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onDestroy()V

    .line 250
    return-void
.end method
