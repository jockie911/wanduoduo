.class public Lcom/wanduoduo/ui/info/InfoVipActivity;
.super Lcom/wanduoduo/base/BaseWebViewActivity;
.source "InfoVipActivity.java"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;-><init>()V

    .line 11
    const-string v0, "http://api.wanduoduo.cc/new/vip.html"

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipActivity;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u4f1a\u5458\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/InfoVipActivity;->setURL(Ljava/lang/String;)V

    .line 17
    invoke-super {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->initData()V

    .line 18
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v1, "gotoChargeVip"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoVipActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoVipActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoVipActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 26
    return-void
.end method
