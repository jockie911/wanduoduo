.class public Lio/rong/imkit/tools/RongWebviewActivity;
.super Landroid/app/Activity;
.source "RongWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tools/RongWebviewActivity$1;,
        Lio/rong/imkit/tools/RongWebviewActivity$RongWebChromeClient;,
        Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RongWebviewActivity"


# instance fields
.field private mPrevUrl:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebView:Lio/rong/common/RongWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$200(Lio/rong/imkit/tools/RongWebviewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lio/rong/imkit/tools/RongWebviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lio/rong/imkit/tools/RongWebviewActivity;)Lio/rong/common/RongWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/tools/RongWebviewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v3, Lio/rong/imkit/R$layout;->rc_ac_webview:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/tools/RongWebviewActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lio/rong/imkit/tools/RongWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, intent:Landroid/content/Intent;
    sget v3, Lio/rong/imkit/R$id;->rc_webview:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/tools/RongWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/rong/common/RongWebView;

    iput-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    .line 32
    sget v3, Lio/rong/imkit/R$id;->rc_web_progressbar:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/tools/RongWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 33
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3, v5}, Lio/rong/common/RongWebView;->setVerticalScrollbarOverlay(Z)V

    .line 34
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 35
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 37
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 38
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 39
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 40
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    new-instance v4, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;

    invoke-direct {v4, p0, v6}, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;-><init>(Lio/rong/imkit/tools/RongWebviewActivity;Lio/rong/imkit/tools/RongWebviewActivity$1;)V

    invoke-virtual {v3, v4}, Lio/rong/common/RongWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    new-instance v4, Lio/rong/imkit/tools/RongWebviewActivity$RongWebChromeClient;

    invoke-direct {v4, p0, v6}, Lio/rong/imkit/tools/RongWebviewActivity$RongWebChromeClient;-><init>(Lio/rong/imkit/tools/RongWebviewActivity;Lio/rong/imkit/tools/RongWebviewActivity$1;)V

    invoke-virtual {v3, v4}, Lio/rong/common/RongWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 43
    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, data:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 46
    iput-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v3, v2}, Lio/rong/common/RongWebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    .line 50
    iget-object v3, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/common/RongWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v0}, Lio/rong/common/RongWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v0}, Lio/rong/common/RongWebView;->goBack()V

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
