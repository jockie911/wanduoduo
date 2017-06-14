.class Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$1;
.super Ljava/lang/Object;
.source "BaseWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$1;->this$1:Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 157
    return-void
.end method
