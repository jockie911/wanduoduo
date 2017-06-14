.class public Lcom/wanduoduo/base/BaseWebViewActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;,
        Lcom/wanduoduo/base/BaseWebViewActivity$Controller;,
        Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;
    }
.end annotation


# instance fields
.field private mURL:Ljava/lang/String;

.field mUploadHandler:Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;

.field protected webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00eb
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initWebView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 52
    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 53
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 57
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 58
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 59
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 60
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 61
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 65
    const-string v1, "setPluginsEnabled"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/wanduoduo/base/BaseWebViewActivity;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "setPluginState"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/webkit/WebSettings$PluginState;

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/wanduoduo/base/BaseWebViewActivity;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "setPluginsEnabled"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/wanduoduo/base/BaseWebViewActivity;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "setAllowUniversalAccessFromFileURLs"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/wanduoduo/base/BaseWebViewActivity;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "setAllowFileAccessFromFileURLs"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/wanduoduo/base/BaseWebViewActivity;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1, v6}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setScrollBarStyle(I)V

    .line 76
    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->clearHistory()V

    .line 77
    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->clearFormData()V

    .line 78
    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1, v5}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->clearCache(Z)V

    .line 80
    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    new-instance v2, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;

    invoke-direct {v2, p0}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;-><init>(Lcom/wanduoduo/base/BaseWebViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 82
    return-void
.end method

.method private static final methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .parameter "method"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    .local v1, m:Ljava/lang/reflect/Method;
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f040034

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->initWebView()V

    .line 48
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 271
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->mUploadHandler:Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->mUploadHandler:Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;

    invoke-virtual {v0, p2, p3}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->onResult(ILandroid/content/Intent;)V

    .line 277
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 490
    :cond_0
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onDestroy()V

    .line 491
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 261
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->goBack()V

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wanduoduo/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/wanduoduo/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "mURL"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wanduoduo/base/BaseWebViewActivity;->mURL:Ljava/lang/String;

    .line 94
    return-void
.end method
