.class Lio/rong/imlib/RongIMClient$80;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4598
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$80;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$80;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 4601
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v8}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v8

    if-nez v8, :cond_1

    .line 4602
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v8, :cond_0

    .line 4603
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v9, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v8, v9}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4624
    :cond_0
    :goto_0
    return-void

    .line 4607
    :cond_1
    :try_start_0
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    array-length v8, v8

    new-array v7, v8, [I

    .line 4609
    .local v7, types:[I
    const/4 v2, 0x0

    .line 4610
    .local v2, i:I
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$80;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    .local v0, arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 4611
    .local v6, type:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v8

    aput v8, v7, v2

    .line 4612
    add-int/lit8 v2, v2, 0x1

    .line 4610
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4614
    .end local v6           #type:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_2
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v8}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v8

    invoke-interface {v8, v7}, Lio/rong/imlib/IHandler;->clearConversations([I)Z

    move-result v5

    .line 4616
    .local v5, result:Z
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v8, :cond_0

    .line 4617
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4619
    .end local v0           #arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #result:Z
    .end local v7           #types:[I
    :catch_0
    move-exception v1

    .line 4620
    .local v1, e:Landroid/os/RemoteException;
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v8, :cond_0

    .line 4621
    iget-object v8, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v9, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v8, v9}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
