.class public Lcom/wanduoduo/ui/login/LogInFindPsdActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "LogInFindPsdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;,
        Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;
    }
.end annotation


# static fields
.field private static final LOGIN_REQUEST_CODE:I = 0x65

.field private static final SMS_REQUEST_CODE:I = 0x64


# instance fields
.field etGetSmsCode:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0132
        }
    .end annotation
.end field

.field etPhoneNum:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e012f
        }
    .end annotation
.end field

.field etSecurityCode:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0135
        }
    .end annotation
.end field

.field ivIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e012e
        }
    .end annotation
.end field

.field ivPsd:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0136
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

.field llGetSmsCode:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0131
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

.field private psdCount:I

.field sHandler:Lcom/wanduoduo/widget/MyHandler;

.field private timer:Ljava/util/Timer;

.field tvForgetPsw:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0139
        }
    .end annotation
.end field

.field tvGetSmsCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0133
        }
    .end annotation
.end field

.field tvLogin:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0138
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

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 196
    new-instance v0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->type:I

    return v0
.end method

.method private isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 192
    :goto_0
    return v0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etGetSmsCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private timerSmsCode()V
    .locals 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvGetSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 147
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->timer:Ljava/util/Timer;

    .line 148
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;J)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 149
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f04003a

    return v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llGetSmsCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llLogin:Landroid/widget/LinearLayout;

    const v1, 0x7f02027d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->ivIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvForgetPsw:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvUseSmsCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    const-string v0, "token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->type:I

    .line 89
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvLogin:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a\u91cd\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvLogin:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0130,
            0x7f0e0133,
            0x7f0e0136,
            0x7f0e0138
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etPhoneNum:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, phoneNum:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 106
    const-string v7, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v7}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->timerSmsCode()V

    .line 110
    const-string v7, "sms_code"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v8, "mobile"

    invoke-static {v8, v4}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;

    const/16 v10, 0x64

    invoke-direct {v9, p0, v10}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;I)V

    invoke-static {v7, v8, v9}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 113
    .end local v4           #phoneNum:Ljava/lang/String;
    :pswitch_3
    iget v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->psdCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->psdCount:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_2

    .line 114
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->ivPsd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020118

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    const/16 v8, 0x81

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 116
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 117
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->ivPsd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02011a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 121
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 122
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 126
    :pswitch_4
    invoke-direct {p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->isReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    const/4 v3, 0x0

    .line 129
    .local v3, inPublic:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, securityCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "rsa_public_key.pem"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 131
    invoke-static {v3}, Lcom/wanduoduo/utils/RSAUtils;->loadPublicKey(Ljava/io/InputStream;)Ljava/security/PublicKey;

    move-result-object v5

    .line 132
    .local v5, publicKey:Ljava/security/PublicKey;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v5}, Lcom/wanduoduo/utils/RSAUtils;->encryptData([BLjava/security/PublicKey;)[B

    move-result-object v2

    .line 133
    .local v2, encryptByte:[B
    invoke-static {v2}, Lcom/wanduoduo/utils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, afterencrypt:Ljava/lang/String;
    const-string v7, "find_pass"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v8, "mobile"

    iget-object v9, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v8, "sms_code"

    iget-object v9, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etGetSmsCode:Landroid/widget/EditText;

    .line 135
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v8, "password"

    invoke-static {v8, v0}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;

    const/16 v10, 0x65

    invoke-direct {v9, p0, v10}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;I)V

    .line 134
    invoke-static {v7, v8, v9}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 137
    .end local v0           #afterencrypt:Ljava/lang/String;
    .end local v2           #encryptByte:[B
    .end local v5           #publicKey:Ljava/security/PublicKey;
    .end local v6           #securityCode:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0130
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onDestroy()V

    .line 252
    return-void
.end method
