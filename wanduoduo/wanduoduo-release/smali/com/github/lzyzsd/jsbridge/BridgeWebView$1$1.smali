.class Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$1;
.super Ljava/lang/Object;
.source "BridgeWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/CallBackFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->onCallBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$1;->this$1:Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;

    iput-object p2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 172
    new-instance v0, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-direct {v0}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    .line 173
    .local v0, responseMsg:Lcom/github/lzyzsd/jsbridge/Message;
    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$1;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$1;->this$1:Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;

    iget-object v1, v1, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    #calls: Lcom/github/lzyzsd/jsbridge/BridgeWebView;->queueMessage(Lcom/github/lzyzsd/jsbridge/Message;)V
    invoke-static {v1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->access$000(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/github/lzyzsd/jsbridge/Message;)V

    .line 176
    return-void
.end method