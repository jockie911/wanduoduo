.class Lio/rong/imlib/TypingMessage/TypingMessageManager$2;
.super Ljava/lang/Object;
.source "TypingMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/TypingMessage/TypingMessageManager;->onReceiveTypingMessage(Lio/rong/imlib/model/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

.field final synthetic val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$targetId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    iput-object p2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p5, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$targetId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 231
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    #getter for: Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$400(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    #getter for: Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$400(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 233
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lio/rong/imlib/TypingMessage/TypingStatus;>;"
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    #getter for: Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;
    invoke-static {v1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$500(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Lio/rong/imlib/RongIMClient$TypingStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    #getter for: Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;
    invoke-static {v1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$500(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Lio/rong/imlib/RongIMClient$TypingStatusListener;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v3, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imlib/RongIMClient$TypingStatusListener;->onTypingStatusChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/Collection;)V

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    #getter for: Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$400(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v0           #map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lio/rong/imlib/TypingMessage/TypingStatus;>;"
    :cond_1
    return-void
.end method
