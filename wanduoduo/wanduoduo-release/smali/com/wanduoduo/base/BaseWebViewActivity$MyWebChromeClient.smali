.class Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/base/BaseWebViewActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 121
    return-void
.end method

.method private getTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 126
    move-object v2, p1

    .line 128
    .local v2, title:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, urlObj:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1           #host:Ljava/lang/String;
    .end local v3           #urlObj:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v0

    .line 133
    .restart local v1       #host:Ljava/lang/String;
    .restart local v3       #urlObj:Ljava/net/URL;
    :cond_1
    const-string v4, "file:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, fileName:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #host:Ljava/lang/String;
    .end local v3           #urlObj:Ljava/net/URL;
    :cond_2
    :goto_1
    move-object v0, v2

    .line 144
    goto :goto_0

    .line 139
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 150
    invoke-direct {p0, p2}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->getTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, newTitle:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$1;

    invoke-direct {v3, p0, p4}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$1;-><init>(Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 159
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 168
    invoke-direct {p0, p2}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->getTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, newTitle:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$3;

    invoke-direct {v3, p0, p4}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$3;-><init>(Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$2;-><init>(Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 183
    return v4
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 7
    .parameter "webView"
    .parameter
    .parameter "fileChooserParams"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, filePathCallback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, acceptTypes:[Ljava/lang/String;
    const-string v0, ""

    .line 225
    .local v0, acceptType:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 226
    aget-object v5, v1, v3

    if-eqz v5, :cond_0

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 230
    const-string v0, "*/*"

    .line 233
    :cond_2
    move-object v2, p2

    .line 236
    .local v2, finalFilePathCallback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    new-instance v4, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$4;

    invoke-direct {v4, p0, v2}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$4;-><init>(Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;Landroid/webkit/ValueCallback;)V

    .line 248
    .local v4, vc:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v5, "filesystem"

    invoke-virtual {p0, v4, v0, v5}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v5, 0x1

    return v5
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, ""

    const-string v1, "filesystem"

    invoke-virtual {p0, p1, v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "acceptType"
    .parameter "capture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    new-instance v1, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;

    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    new-instance v3, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;

    iget-object v4, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-direct {v3, v4}, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;-><init>(Lcom/wanduoduo/base/BaseWebViewActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;-><init>(Lcom/wanduoduo/base/BaseWebViewActivity;Lcom/wanduoduo/base/BaseWebViewActivity$Controller;)V

    iput-object v1, v0, Lcom/wanduoduo/base/BaseWebViewActivity;->mUploadHandler:Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;

    .line 205
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    iget-object v0, v0, Lcom/wanduoduo/base/BaseWebViewActivity;->mUploadHandler:Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method
