.class Lio/rong/push/core/PushClient$PushReader;
.super Ljava/lang/Thread;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushReader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/push/core/PushClient;


# direct methods
.method private constructor <init>(Lio/rong/push/core/PushClient;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lio/rong/push/core/PushClient$PushReader;->this$0:Lio/rong/push/core/PushClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/push/core/PushClient;Lio/rong/push/core/PushClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lio/rong/push/core/PushClient$PushReader;-><init>(Lio/rong/push/core/PushClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, msg:Lio/rong/push/core/PushProtocalStack$Message;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lio/rong/push/core/PushClient$PushReader;->this$0:Lio/rong/push/core/PushClient;

    #getter for: Lio/rong/push/core/PushClient;->running:Z
    invoke-static {v2}, Lio/rong/push/core/PushClient;->access$100(Lio/rong/push/core/PushClient;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 180
    iget-object v2, p0, Lio/rong/push/core/PushClient$PushReader;->this$0:Lio/rong/push/core/PushClient;

    #getter for: Lio/rong/push/core/PushClient;->in:Lio/rong/push/core/PushProtocalStack$MessageInputStream;
    invoke-static {v2}, Lio/rong/push/core/PushClient;->access$200(Lio/rong/push/core/PushClient;)Lio/rong/push/core/PushProtocalStack$MessageInputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lio/rong/push/core/PushClient$PushReader;->this$0:Lio/rong/push/core/PushClient;

    #getter for: Lio/rong/push/core/PushClient;->in:Lio/rong/push/core/PushProtocalStack$MessageInputStream;
    invoke-static {v2}, Lio/rong/push/core/PushClient;->access$200(Lio/rong/push/core/PushClient;)Lio/rong/push/core/PushProtocalStack$MessageInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/core/PushProtocalStack$MessageInputStream;->readMessage()Lio/rong/push/core/PushProtocalStack$Message;

    move-result-object v1

    .line 182
    :cond_1
    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p0, Lio/rong/push/core/PushClient$PushReader;->this$0:Lio/rong/push/core/PushClient;

    #calls: Lio/rong/push/core/PushClient;->handleMessage(Lio/rong/push/core/PushProtocalStack$Message;)V
    invoke-static {v2, v1}, Lio/rong/push/core/PushClient;->access$300(Lio/rong/push/core/PushClient;Lio/rong/push/core/PushProtocalStack$Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PushClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PushReader IOException. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    iget-object v2, p0, Lio/rong/push/core/PushClient$PushReader;->this$0:Lio/rong/push/core/PushClient;

    #getter for: Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;
    invoke-static {v2}, Lio/rong/push/core/PushClient;->access$400(Lio/rong/push/core/PushClient;)Lio/rong/push/core/PushClient$ClientListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lio/rong/push/core/PushClient$PushReader;->this$0:Lio/rong/push/core/PushClient;

    #getter for: Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;
    invoke-static {v2}, Lio/rong/push/core/PushClient;->access$400(Lio/rong/push/core/PushClient;)Lio/rong/push/core/PushClient$ClientListener;

    move-result-object v2

    invoke-interface {v2}, Lio/rong/push/core/PushClient$ClientListener;->onDisConnected()V

    .line 193
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method
