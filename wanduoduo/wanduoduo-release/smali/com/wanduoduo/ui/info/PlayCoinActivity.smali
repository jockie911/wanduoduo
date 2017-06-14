.class public Lcom/wanduoduo/ui/info/PlayCoinActivity;
.super Lcom/wanduoduo/base/BaseWebViewActivity;
.source "PlayCoinActivity.java"


# instance fields
.field private coin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wanduoduo/ui/info/PlayCoinActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u73a9\u5e01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/PlayCoinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "coin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/info/PlayCoinActivity;->coin:I

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.wanduoduo.cc/new/coin.html?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&coin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wanduoduo/ui/info/PlayCoinActivity;->coin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/PlayCoinActivity;->setURL(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/wanduoduo/ui/info/PlayCoinActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v1, "chargeCoin"

    new-instance v2, Lcom/wanduoduo/ui/info/PlayCoinActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/PlayCoinActivity$1;-><init>(Lcom/wanduoduo/ui/info/PlayCoinActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 30
    invoke-super {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->initData()V

    .line 31
    return-void
.end method
