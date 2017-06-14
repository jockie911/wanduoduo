.class Lio/rong/imlib/NativeClient$3;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$HistoryMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lio/rong/imlib/NativeClient$3;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$3;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 715
    iget-object v0, p0, Lio/rong/imlib/NativeClient$3;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    .line 716
    return-void
.end method

.method public onReceived([Lio/rong/imlib/NativeObject$Message;)V
    .locals 9
    .parameter "messages"

    .prologue
    .line 702
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz p1, :cond_0

    array-length v6, p1

    if-lez v6, :cond_0

    .line 704
    move-object v0, p1

    .local v0, arr$:[Lio/rong/imlib/NativeObject$Message;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 705
    .local v2, item:Lio/rong/imlib/NativeObject$Message;
    new-instance v5, Lio/rong/imlib/model/Message;

    invoke-direct {v5, v2}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 706
    .local v5, msg:Lio/rong/imlib/model/Message;
    iget-object v6, p0, Lio/rong/imlib/NativeClient$3;->this$0:Lio/rong/imlib/NativeClient;

    invoke-virtual {v2}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v8

    #calls: Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;
    invoke-static {v6, v7, v8, v5}, Lio/rong/imlib/NativeClient;->access$400(Lio/rong/imlib/NativeClient;Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 707
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0           #arr$:[Lio/rong/imlib/NativeObject$Message;
    .end local v1           #i$:I
    .end local v2           #item:Lio/rong/imlib/NativeObject$Message;
    .end local v3           #len$:I
    .end local v5           #msg:Lio/rong/imlib/model/Message;
    :cond_0
    iget-object v6, p0, Lio/rong/imlib/NativeClient$3;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v6, v4}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 711
    return-void
.end method
