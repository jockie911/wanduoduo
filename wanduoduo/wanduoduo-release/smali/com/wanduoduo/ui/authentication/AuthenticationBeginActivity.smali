.class public Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;
.super Lcom/wanduoduo/base/BaseWebViewActivity;
.source "AuthenticationBeginActivity.java"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;-><init>()V

    .line 13
    const-string v0, "http://api.wanduoduo.cc/new/video.html"

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;->setURL(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v1, "showCamera"

    new-instance v2, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 36
    invoke-super {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->initData()V

    .line 37
    return-void
.end method
