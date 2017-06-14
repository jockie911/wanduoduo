.class public Lcom/wanduoduo/ui/info/SettingItemActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SettingItemActivity.java"


# instance fields
.field private settingMsgReturnFragment:Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/SettingItemActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->alertDialog()V

    return-void
.end method

.method private alertDialog()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/wanduoduo/ui/info/SettingItemActivity$2;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/info/SettingItemActivity$2;-><init>(Lcom/wanduoduo/ui/info/SettingItemActivity;)V

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method private getMap()Ljava/util/Map;
    .locals 7
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
    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "token"

    const-string v5, "token"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v4, "content"

    iget-object v5, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->settingMsgReturnFragment:Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;

    invoke-virtual {v5}, Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v4, "mobile"

    iget-object v5, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->settingMsgReturnFragment:Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;

    invoke-virtual {v5}, Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;->getPhoneNum()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 116
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v4, "version_code"

    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v4, "verion_name"

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v4, "app_version"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private rePlaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fm"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 130
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f040055

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->type:I

    .line 47
    iget v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    return-void

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u8d26\u53f7\u4e0e\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->rePlaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u7ba1\u7406\u9ed1\u540d\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->rePlaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u610f\u89c1\u53cd\u9988"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->settingMsgReturnFragment:Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;

    .line 60
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->settingMsgReturnFragment:Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->rePlaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 63
    :pswitch_4
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u5173\u4e8e\u73a9\u591a\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v0, Lcom/wanduoduo/fragment/info/setting/SettingAboutWddFragmetn;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/setting/SettingAboutWddFragmetn;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->rePlaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v0, 0x7f0e01ef

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity;->settingMsgReturnFragment:Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/info/setting/SettingMsgReturnFragment;->isReadySubmit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "feed_back"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/SettingItemActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/SettingItemActivity$1;-><init>(Lcom/wanduoduo/ui/info/SettingItemActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 86
    :cond_0
    return-void
.end method
