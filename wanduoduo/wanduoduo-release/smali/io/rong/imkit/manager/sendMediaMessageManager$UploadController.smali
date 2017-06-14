.class Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;
.super Ljava/lang/Object;
.source "sendMediaMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/manager/sendMediaMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadController"
.end annotation


# instance fields
.field executingMessage:Lio/rong/imlib/model/Message;

.field final pendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/rong/imkit/manager/sendMediaMessageManager;


# direct methods
.method public constructor <init>(Lio/rong/imkit/manager/sendMediaMessageManager;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->this$0:Lio/rong/imkit/manager/sendMediaMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    .line 113
    return-void
.end method

.method static synthetic access$200(Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->polling()V

    return-void
.end method

.method private polling()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    monitor-enter v1

    .line 174
    :try_start_0
    const-string v0, "sendMediaMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "polling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    iput-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    .line 177
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->this$0:Lio/rong/imkit/manager/sendMediaMessageManager;

    #getter for: Lio/rong/imkit/manager/sendMediaMessageManager;->executorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lio/rong/imkit/manager/sendMediaMessageManager;->access$100(Lio/rong/imkit/manager/sendMediaMessageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 182
    :goto_0
    monitor-exit v1

    .line 183
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 5
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 142
    iget-object v4, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    monitor-enter v4

    .line 143
    :try_start_0
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 145
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 146
    .local v2, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v2           #msg:Lio/rong/imlib/model/Message;
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 151
    const/4 v3, 0x0

    iput-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    .line 152
    :cond_2
    monitor-exit v4

    .line 153
    return-void

    .line 152
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public cancel(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)V
    .locals 5
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "messageId"

    .prologue
    .line 156
    iget-object v4, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 158
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 159
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 160
    .local v2, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    if-ne v3, p3, :cond_2

    .line 163
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    .end local v2           #msg:Lio/rong/imlib/model/Message;
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 168
    const/4 v3, 0x0

    iput-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    .line 169
    :cond_1
    monitor-exit v4

    .line 170
    return-void

    .line 158
    .restart local v2       #msg:Lio/rong/imlib/model/Message;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #msg:Lio/rong/imlib/model/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public execute(Lio/rong/imlib/model/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 116
    iget-object v1, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    iput-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    .line 120
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->this$0:Lio/rong/imkit/manager/sendMediaMessageManager;

    #getter for: Lio/rong/imkit/manager/sendMediaMessageManager;->executorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lio/rong/imkit/manager/sendMediaMessageManager;->access$100(Lio/rong/imkit/manager/sendMediaMessageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 122
    :cond_0
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 126
    const-string v2, "sendMediaMessageManager"

    const-string v3, "Rest Sending Images."

    invoke-static {v2, v3}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    monitor-enter v3

    .line 128
    :try_start_0
    iget-object v2, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/model/Message;

    .line 129
    .local v1, message:Lio/rong/imlib/model/Message;
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 130
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #message:Lio/rong/imlib/model/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 132
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->pendingMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 133
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    iget-object v2, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 136
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v2, v3}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 137
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    .line 139
    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->executingMessage:Lio/rong/imlib/model/Message;

    new-instance v2, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController$1;-><init>(Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Lio/rong/imkit/RongIM;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    .line 208
    return-void
.end method
