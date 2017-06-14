.class public Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;
.super Lcom/wanduoduo/base/BaseWebViewActivity;
.source "InfoVipChongZhiActivity.java"


# instance fields
.field private remainCoin:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;-><init>()V

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->remainCoin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->remainCoin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->remainCoin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->alertDialogPayCoin()V

    return-void
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->alertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->user_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private alertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter "day"
    .parameter "needCoin"
    .parameter "isSelf"

    .prologue
    .line 122
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v6, builder:Landroid/support/v7/app/AlertDialog$Builder;
    if-eqz p4, :cond_0

    .line 124
    const-string v0, "\u786e\u5b9a\u5145\u503cvip\u5417\uff1f"

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 128
    :goto_0
    const-string v7, "\u786e\u5b9a"

    new-instance v0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$6;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$6;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 140
    return-void

    .line 126
    :cond_0
    const-string v0, "\u786e\u5b9a\u7ed9\u597d\u53cb\u5145\u503cvip\u5417\uff1f"

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private alertDialogPayCoin()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u91d1\u5e01\u4e0d\u8db3\uff0c\u662f\u5426\u5145\u503c\u91d1\u5e01\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 102
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$5;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$5;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$4;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$4;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 115
    return-void
.end method

.method private getMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 4
    .parameter "type"
    .parameter "day"
    .parameter "needCoin"
    .parameter "isSelf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "vip"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "price"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "day"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    if-nez p4, :cond_0

    .line 162
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->user_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    return-object v0
.end method

.method private sendDataRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter "day"
    .parameter "needCoin"
    .parameter "isSelf"

    .prologue
    .line 143
    const-string v0, "charge_vip"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->getMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$8;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$8;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u5145\u503c\u4f1a\u5458"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "coin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->remainCoin:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.wanduoduo.cc/new/recharge.html?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->setURL(Ljava/lang/String;)V

    .line 34
    invoke-super {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->initData()V

    .line 36
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v1, "checkVipRights"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 43
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v1, "chargeVip"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$2;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 65
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v1, "giveVip"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;-><init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 94
    return-void
.end method
