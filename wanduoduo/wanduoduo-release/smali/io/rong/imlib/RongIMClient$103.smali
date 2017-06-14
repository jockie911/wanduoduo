.class Lio/rong/imlib/RongIMClient$103;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->sendChangeModelMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$kefuId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7458
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$103;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$103;->val$kefuId:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 6
    .parameter "messageId"
    .parameter "e"

    .prologue
    .line 7461
    const-string v0, "\u65e0\u4eba\u5de5\u5728\u7ebf"

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    .line 7462
    .local v4, informationNotificationMessage:Lio/rong/message/InformationNotificationMessage;
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$103;->this$0:Lio/rong/imlib/RongIMClient;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$103;->val$kefuId:Ljava/lang/String;

    const-string v3, "rong"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 7463
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 0
    .parameter "integer"

    .prologue
    .line 7467
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7458
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$103;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
