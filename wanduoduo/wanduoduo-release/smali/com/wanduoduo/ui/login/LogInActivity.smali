.class public Lcom/wanduoduo/ui/login/LogInActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "LogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;
    }
.end annotation


# static fields
.field private static final SECRET_REQUEST_CODE:I = 0x1


# instance fields
.field private avatar:Ljava/lang/String;

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

.field private infoBean:Lcom/wanduoduo/bean/InfoBean;

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

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private nicknam:Ljava/lang/String;

.field private psdCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->avatar:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->nicknam:Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/wanduoduo/ui/login/LogInActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/login/LogInActivity$1;-><init>(Lcom/wanduoduo/ui/login/LogInActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/login/LogInActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/login/LogInActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInActivity;->avatar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/login/LogInActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->nicknam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/login/LogInActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInActivity;->nicknam:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/login/LogInActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/login/LogInActivity;->connectRongIM(Ljava/lang/String;)V

    return-void
.end method

.method private connectRongIM(Ljava/lang/String;)V
    .locals 2
    .parameter "rctoken"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/base/BaseApp;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/wanduoduo/ui/login/LogInActivity$2;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/login/LogInActivity$2;-><init>(Lcom/wanduoduo/ui/login/LogInActivity;)V

    invoke-static {p1, v0}, Lio/rong/imkit/RongIM;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;

    .line 230
    :cond_0
    return-void
.end method

.method private judgePhoneSecurityCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNum"
    .parameter "securityCode"

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 136
    :goto_0
    return v0

    .line 132
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jumpActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter "activityClass"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/login/LogInActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInActivity;->finish()V

    .line 142
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->isSwipe:Z

    .line 63
    const v0, 0x7f04003a

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u767b\u9646"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0138,
            0x7f0e0139,
            0x7f0e013a,
            0x7f0e0130,
            0x7f0e0136
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etPhoneNum:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->psdCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->psdCount:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 84
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->ivPsd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020118

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    const/16 v9, 0x81

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 86
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 87
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->ivPsd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02011a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 91
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 92
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, phoneNum:Ljava/lang/String;
    iget-object v8, p0, Lcom/wanduoduo/ui/login/LogInActivity;->etSecurityCode:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, securityCode:Ljava/lang/String;
    const/4 v3, 0x0

    .line 100
    .local v3, inPublic:Ljava/io/InputStream;
    new-array v8, v11, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\u6b63\u5728\u767b\u9646\u4e2d..."

    aput-object v10, v8, v9

    invoke-static {p0, v8}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "rsa_public_key.pem"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 103
    invoke-static {v3}, Lcom/wanduoduo/utils/RSAUtils;->loadPublicKey(Ljava/io/InputStream;)Ljava/security/PublicKey;

    move-result-object v6

    .line 104
    .local v6, publicKey:Ljava/security/PublicKey;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Lcom/wanduoduo/utils/RSAUtils;->encryptData([BLjava/security/PublicKey;)[B

    move-result-object v2

    .line 105
    .local v2, encryptByte:[B
    invoke-static {v2}, Lcom/wanduoduo/utils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, afterencrypt:Ljava/lang/String;
    invoke-direct {p0, v5, v7}, Lcom/wanduoduo/ui/login/LogInActivity;->judgePhoneSecurityCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 107
    const-string v8, "user_loginpass"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v9, "mobile"

    invoke-static {v9, v5}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v9, "password"

    .line 108
    invoke-static {v9, v0}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v9

    new-instance v10, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;

    const/4 v11, 0x1

    invoke-direct {v10, p0, v11}, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;-><init>(Lcom/wanduoduo/ui/login/LogInActivity;I)V

    .line 107
    invoke-static {v8, v9, v10}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 109
    .end local v0           #afterencrypt:Ljava/lang/String;
    .end local v2           #encryptByte:[B
    .end local v6           #publicKey:Ljava/security/PublicKey;
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #inPublic:Ljava/io/InputStream;
    .end local v5           #phoneNum:Ljava/lang/String;
    .end local v7           #securityCode:Ljava/lang/String;
    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "type"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v4}, Lcom/wanduoduo/ui/login/LogInActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_5
    const-class v8, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-direct {p0, v8}, Lcom/wanduoduo/ui/login/LogInActivity;->jumpActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0130
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
