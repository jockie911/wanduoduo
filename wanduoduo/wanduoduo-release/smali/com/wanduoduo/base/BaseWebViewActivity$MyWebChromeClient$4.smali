.class Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$4;
.super Ljava/lang/Object;
.source "BaseWebViewActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;

.field final synthetic val$finalFilePathCallback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$4;->this$1:Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$4;->val$finalFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Landroid/net/Uri;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 245
    .local v0, result:[Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$4;->val$finalFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 246
    return-void

    .line 244
    .end local v0           #result:[Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #result:[Landroid/net/Uri;
    goto :goto_0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$4;->onReceiveValue(Landroid/net/Uri;)V

    return-void
.end method
