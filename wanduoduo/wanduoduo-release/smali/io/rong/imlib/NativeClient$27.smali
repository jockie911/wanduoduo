.class Lio/rong/imlib/NativeClient$27;
.super Lio/rong/imlib/NativeObject$ReceiveMessageListener;
.source "NativeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->setOnReceiveMessageListener(Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2158
    iput-object p1, p0, Lio/rong/imlib/NativeClient$27;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$27;->val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    invoke-direct {p0}, Lio/rong/imlib/NativeObject$ReceiveMessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/NativeObject$Message;IZZ)V
    .locals 6
    .parameter "nativeMessage"
    .parameter "left"
    .parameter "offline"
    .parameter "hasMsg"

    .prologue
    .line 2162
    const-string v3, "NativeClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceived: objectName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    new-instance v2, Lio/rong/imlib/model/Message;

    invoke-direct {v2, p1}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 2165
    .local v2, message:Lio/rong/imlib/model/Message;
    iget-object v3, p0, Lio/rong/imlib/NativeClient$27;->this$0:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v5

    #calls: Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;
    invoke-static {v3, v4, v5, v2}, Lio/rong/imlib/NativeClient;->access$400(Lio/rong/imlib/NativeClient;Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 2166
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v2, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 2167
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lio/rong/message/DiscussionNotificationMessage;

    if-eqz v3, :cond_0

    .line 2169
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/rong/imlib/NativeClient$27$1;

    invoke-direct {v5, p0}, Lio/rong/imlib/NativeClient$27$1;-><init>(Lio/rong/imlib/NativeClient$27;)V

    invoke-virtual {v3, v4, v5}, Lio/rong/imlib/NativeObject;->GetDiscussionInfo(Ljava/lang/String;Lio/rong/imlib/NativeObject$DiscussionInfoListener;)V

    .line 2180
    :cond_0
    const/4 v1, 0x0

    .line 2181
    .local v1, handled:Z
    iget-object v3, p0, Lio/rong/imlib/NativeClient$27;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;
    invoke-static {v3}, Lio/rong/imlib/NativeClient;->access$700(Lio/rong/imlib/NativeClient;)Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2182
    iget-object v3, p0, Lio/rong/imlib/NativeClient$27;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;
    invoke-static {v3}, Lio/rong/imlib/NativeClient;->access$700(Lio/rong/imlib/NativeClient;)Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;->onReceived(Lio/rong/imlib/model/Message;I)Z

    move-result v1

    .line 2185
    :cond_1
    iget-object v3, p0, Lio/rong/imlib/NativeClient$27;->val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 2186
    iget-object v3, p0, Lio/rong/imlib/NativeClient$27;->val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    invoke-interface {v3, v2, p2, p3, p4}, Lio/rong/imlib/NativeClient$OnReceiveMessageListener;->onReceived(Lio/rong/imlib/model/Message;IZZ)V

    .line 2188
    :cond_2
    return-void
.end method
