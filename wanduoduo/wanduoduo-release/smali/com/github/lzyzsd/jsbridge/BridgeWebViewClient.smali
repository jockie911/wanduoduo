.class public Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BridgeWebViewClient.java"


# instance fields
.field private webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 18
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 48
    const-string v2, "WebViewJavascriptBridge.js"

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "WebViewJavascriptBridge.js"

    invoke-static {p1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeUtil;->webViewLoadLocalJs(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/lzyzsd/jsbridge/Message;

    .line 55
    .local v1, m:Lcom/github/lzyzsd/jsbridge/Message;
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Lcom/github/lzyzsd/jsbridge/Message;)V

    goto :goto_0

    .line 57
    .end local v1           #m:Lcom/github/lzyzsd/jsbridge/Message;
    :cond_1
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setStartupMessage(Ljava/util/List;)V

    .line 59
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 42
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 23
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 28
    :goto_0
    const-string v2, "yy://return/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->handlerReturnData(Ljava/lang/String;)V

    .line 35
    :goto_1
    return v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v2, "yy://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->flushMessageQueue()V

    goto :goto_1

    .line 35
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method
