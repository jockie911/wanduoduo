.class public Lcom/wanduoduo/ui/info/SettingActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SettingActivity.java"


# instance fields
.field tvCashSize:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01db
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/SettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/SettingActivity;->logout()V

    return-void
.end method

.method private jumpToActivity(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/SettingItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method private logout()V
    .locals 4

    .prologue
    .line 101
    const-string v0, "user_logout"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/SettingActivity$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/SettingActivity$3;-><init>(Lcom/wanduoduo/ui/info/SettingActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f040054

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingActivity;->tvCashSize:Landroid/widget/TextView;

    invoke-static {}, Lcom/wanduoduo/utils/DataCleanManager;->getTotalCacheSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01dc,
            0x7f0e01da,
            0x7f0e01d5,
            0x7f0e01d6,
            0x7f0e01d7,
            0x7f0e01d9,
            0x7f0e01d8
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    return-void

    .line 53
    :pswitch_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v3, "\u786e\u8ba4\u9000\u51fa\u767b\u5f55\u5417"

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 55
    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/wanduoduo/ui/info/SettingActivity$2;

    invoke-direct {v4, p0}, Lcom/wanduoduo/ui/info/SettingActivity$2;-><init>(Lcom/wanduoduo/ui/info/SettingActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/wanduoduo/ui/info/SettingActivity$1;

    invoke-direct {v5, p0}, Lcom/wanduoduo/ui/info/SettingActivity$1;-><init>(Lcom/wanduoduo/ui/info/SettingActivity;)V

    .line 61
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 69
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    :pswitch_2
    invoke-static {}, Lcom/wanduoduo/utils/DataCleanManager;->clearAllCache()V

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/wanduoduo/ui/info/SettingActivity;->tvCashSize:Landroid/widget/TextView;

    invoke-static {}, Lcom/wanduoduo/utils/DataCleanManager;->getTotalCacheSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/wanduoduo/ui/info/SettingActivity;->jumpToActivity(I)V

    goto :goto_0

    .line 80
    :pswitch_4
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/info/SettingActivity;->jumpToActivity(I)V

    goto :goto_0

    .line 83
    :pswitch_5
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/info/SettingActivity;->jumpToActivity(I)V

    goto :goto_0

    .line 86
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/wanduoduo/ui/index/DetailWebViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "url"

    const-string v4, "http://api.wanduoduo.cc/new/a_standard_behaviour.html"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v2}, Lcom/wanduoduo/ui/info/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_7
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/info/SettingActivity;->jumpToActivity(I)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01d5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
