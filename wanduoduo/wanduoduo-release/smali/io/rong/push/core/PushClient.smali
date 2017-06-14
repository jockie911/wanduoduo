.class Lio/rong/push/core/PushClient;
.super Ljava/lang/Object;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/core/PushClient$1;,
        Lio/rong/push/core/PushClient$QueryMethod;,
        Lio/rong/push/core/PushClient$QueryCallback;,
        Lio/rong/push/core/PushClient$ConnectStatusCallback;,
        Lio/rong/push/core/PushClient$ClientListener;,
        Lio/rong/push/core/PushClient$PushReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PushClient"


# instance fields
.field private connectCallback:Lio/rong/push/core/PushClient$ConnectStatusCallback;

.field private deviceInfo:Ljava/lang/String;

.field private in:Lio/rong/push/core/PushProtocalStack$MessageInputStream;

.field private listener:Lio/rong/push/core/PushClient$ClientListener;

.field public os:Ljava/io/OutputStream;

.field private out:Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

.field private queryCallback:Lio/rong/push/core/PushClient$QueryCallback;

.field private reader:Lio/rong/push/core/PushClient$PushReader;

.field private running:Z

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/rong/push/core/PushClient$ClientListener;)V
    .locals 0
    .parameter "deviceInfo"
    .parameter "listener"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    .line 30
    iput-object p1, p0, Lio/rong/push/core/PushClient;->deviceInfo:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$100(Lio/rong/push/core/PushClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lio/rong/push/core/PushClient;->running:Z

    return v0
.end method

.method static synthetic access$200(Lio/rong/push/core/PushClient;)Lio/rong/push/core/PushProtocalStack$MessageInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lio/rong/push/core/PushClient;->in:Lio/rong/push/core/PushProtocalStack$MessageInputStream;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/push/core/PushClient;Lio/rong/push/core/PushProtocalStack$Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lio/rong/push/core/PushClient;->handleMessage(Lio/rong/push/core/PushProtocalStack$Message;)V

    return-void
.end method

.method static synthetic access$400(Lio/rong/push/core/PushClient;)Lio/rong/push/core/PushClient$ClientListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    return-object v0
.end method

.method private handleMessage(Lio/rong/push/core/PushProtocalStack$Message;)V
    .locals 6
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v3, "PushClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, msg type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/push/core/PushProtocalStack$Message;->getType()Lio/rong/push/core/PushProtocalStack$Message$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v3, Lio/rong/push/core/PushClient$1;->$SwitchMap$io$rong$push$core$PushProtocalStack$Message$Type:[I

    invoke-virtual {p1}, Lio/rong/push/core/PushProtocalStack$Message;->getType()Lio/rong/push/core/PushProtocalStack$Message$Type;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/push/core/PushProtocalStack$Message$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v3, p0, Lio/rong/push/core/PushClient;->connectCallback:Lio/rong/push/core/PushClient$ConnectStatusCallback;

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lio/rong/push/core/PushClient;->connectCallback:Lio/rong/push/core/PushClient$ConnectStatusCallback;

    invoke-interface {v3}, Lio/rong/push/core/PushClient$ConnectStatusCallback;->onConnected()V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v3, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v3}, Lio/rong/push/core/PushClient$ClientListener;->onPingSuccess()V

    goto :goto_0

    :pswitch_2
    move-object v0, p1

    .line 145
    check-cast v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;

    .line 146
    .local v0, message:Lio/rong/push/core/PushProtocalStack$QueryAckMessage;
    invoke-virtual {v0}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->getStatus()I

    move-result v2

    .line 147
    .local v2, status:I
    const-string v3, "PushClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryAck status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "content:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lio/rong/push/core/PushClient;->queryCallback:Lio/rong/push/core/PushClient$QueryCallback;

    if-eqz v3, :cond_0

    .line 149
    sget-object v3, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_OK:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    invoke-virtual {v3}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->get()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 150
    iget-object v3, p0, Lio/rong/push/core/PushClient;->queryCallback:Lio/rong/push/core/PushClient$QueryCallback;

    invoke-virtual {v0}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/rong/push/core/PushClient$QueryCallback;->onSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_2
    iget-object v3, p0, Lio/rong/push/core/PushClient;->queryCallback:Lio/rong/push/core/PushClient$QueryCallback;

    invoke-interface {v3}, Lio/rong/push/core/PushClient$QueryCallback;->onFailure()V

    goto/16 :goto_0

    .line 157
    .end local v0           #message:Lio/rong/push/core/PushProtocalStack$QueryAckMessage;
    .end local v2           #status:I
    :pswitch_3
    iget-object v3, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 158
    check-cast v1, Lio/rong/push/core/PushProtocalStack$PublishMessage;

    .line 159
    .local v1, publishMsg:Lio/rong/push/core/PushProtocalStack$PublishMessage;
    iget-object v3, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v3, v1}, Lio/rong/push/core/PushClient$ClientListener;->onMessageArrived(Lio/rong/push/core/PushProtocalStack$PublishMessage;)V

    goto/16 :goto_0

    .line 163
    .end local v1           #publishMsg:Lio/rong/push/core/PushProtocalStack$PublishMessage;
    :pswitch_4
    iget-object v3, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v3}, Lio/rong/push/core/PushClient$ClientListener;->onDisConnected()V

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public connect(Ljava/lang/String;ILjava/lang/String;Lio/rong/push/core/PushClient$ConnectStatusCallback;)V
    .locals 10
    .parameter "host"
    .parameter "port"
    .parameter "deviceId"
    .parameter "callback"

    .prologue
    const/4 v9, 0x0

    .line 34
    const-string v4, "PushClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect, deviceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", host = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    .line 38
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 39
    .local v0, address:Ljava/net/SocketAddress;
    iget-object v4, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    const/16 v5, 0xfa0

    invoke-virtual {v4, v0, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 40
    iget-object v4, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 41
    .local v3, is:Ljava/io/InputStream;
    new-instance v4, Lio/rong/push/core/PushProtocalStack$MessageInputStream;

    invoke-direct {v4, v3}, Lio/rong/push/core/PushProtocalStack$MessageInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lio/rong/push/core/PushClient;->in:Lio/rong/push/core/PushProtocalStack$MessageInputStream;

    .line 42
    iget-object v4, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lio/rong/push/core/PushClient;->os:Ljava/io/OutputStream;

    .line 43
    new-instance v4, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

    iget-object v5, p0, Lio/rong/push/core/PushClient;->os:Ljava/io/OutputStream;

    invoke-direct {v4, v5}, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lio/rong/push/core/PushClient;->out:Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

    .line 44
    iput-object p4, p0, Lio/rong/push/core/PushClient;->connectCallback:Lio/rong/push/core/PushClient$ConnectStatusCallback;

    .line 46
    new-instance v1, Lio/rong/push/core/PushProtocalStack$ConnectMessage;

    const/4 v4, 0x1

    const/16 v5, 0x12c

    invoke-direct {v1, p3, v4, v5}, Lio/rong/push/core/PushProtocalStack$ConnectMessage;-><init>(Ljava/lang/String;ZI)V

    .line 47
    .local v1, connectMessage:Lio/rong/push/core/PushProtocalStack$ConnectMessage;
    const-string v4, "clientInfo"

    const-string v5, "%s-%s-%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "AndroidPush"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lio/rong/push/core/PushClient;->deviceInfo:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lio/rong/imlib/common/BuildVar;->SDK_VERSION:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->setWill(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lio/rong/push/core/PushClient;->out:Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

    new-instance v5, Lio/rong/push/core/PushProtocalStack$ConnectMessage;

    const/4 v6, 0x1

    const/16 v7, 0x12c

    invoke-direct {v5, p3, v6, v7}, Lio/rong/push/core/PushProtocalStack$ConnectMessage;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v4, v5}, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;->writeMessage(Lio/rong/push/core/PushProtocalStack$Message;)V

    .line 50
    new-instance v4, Lio/rong/push/core/PushClient$PushReader;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lio/rong/push/core/PushClient$PushReader;-><init>(Lio/rong/push/core/PushClient;Lio/rong/push/core/PushClient$1;)V

    iput-object v4, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    .line 51
    const/4 v4, 0x1

    iput-boolean v4, p0, Lio/rong/push/core/PushClient;->running:Z

    .line 52
    iget-object v4, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    invoke-virtual {v4}, Lio/rong/push/core/PushClient$PushReader;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0           #address:Ljava/net/SocketAddress;
    .end local v1           #connectMessage:Lio/rong/push/core/PushProtocalStack$ConnectMessage;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PushClient"

    const-string v5, "connect IOException"

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    if-eqz p4, :cond_0

    .line 57
    invoke-interface {p4, v9}, Lio/rong/push/core/PushClient$ConnectStatusCallback;->onError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 91
    const-string v1, "PushClient"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v1, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    invoke-virtual {v1}, Lio/rong/push/core/PushClient$PushReader;->interrupt()V

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/rong/push/core/PushClient;->running:Z

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    .line 98
    :cond_0
    iget-object v1, p0, Lio/rong/push/core/PushClient;->in:Lio/rong/push/core/PushProtocalStack$MessageInputStream;

    invoke-virtual {v1}, Lio/rong/push/core/PushProtocalStack$MessageInputStream;->close()V

    .line 99
    iget-object v1, p0, Lio/rong/push/core/PushClient;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 100
    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_1
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v1}, Lio/rong/push/core/PushClient$ClientListener;->onDisConnected()V

    .line 109
    :cond_2
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "PushClient"

    const-string v2, "disconnect IOException"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v1}, Lio/rong/push/core/PushClient$ClientListener;->onDisConnected()V

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v2, :cond_3

    .line 107
    iget-object v2, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v2}, Lio/rong/push/core/PushClient$ClientListener;->onDisConnected()V

    :cond_3
    throw v1
.end method

.method public ping()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/rong/push/core/PushClient;->out:Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lio/rong/push/core/PushClient;->out:Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

    new-instance v2, Lio/rong/push/core/PushProtocalStack$PingReqMessage;

    invoke-direct {v2}, Lio/rong/push/core/PushProtocalStack$PingReqMessage;-><init>()V

    invoke-virtual {v1, v2}, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;->writeMessage(Lio/rong/push/core/PushProtocalStack$Message;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v1}, Lio/rong/push/core/PushClient$ClientListener;->onPingFailure()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PushClient"

    const-string v2, "ping IOException"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lio/rong/push/core/PushClient;->listener:Lio/rong/push/core/PushClient$ClientListener;

    invoke-interface {v1}, Lio/rong/push/core/PushClient$ClientListener;->onPingFailure()V

    goto :goto_0
.end method

.method public query(Lio/rong/push/core/PushClient$QueryMethod;Ljava/lang/String;Ljava/lang/String;Lio/rong/push/core/PushClient$QueryCallback;)V
    .locals 4
    .parameter "method"
    .parameter "queryInfo"
    .parameter "deviceId"
    .parameter "callback"

    .prologue
    .line 78
    const-string v1, "PushClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query. topic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/push/core/PushClient$QueryMethod;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", queryInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p4, p0, Lio/rong/push/core/PushClient;->queryCallback:Lio/rong/push/core/PushClient$QueryCallback;

    .line 81
    :try_start_0
    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/core/PushClient;->out:Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lio/rong/push/core/PushClient;->out:Lio/rong/push/core/PushProtocalStack$MessageOutputStream;

    new-instance v2, Lio/rong/push/core/PushProtocalStack$QueryMessage;

    invoke-virtual {p1}, Lio/rong/push/core/PushClient$QueryMethod;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lio/rong/push/core/PushProtocalStack$QueryMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;->writeMessage(Lio/rong/push/core/PushProtocalStack$Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    iget-object v1, p0, Lio/rong/push/core/PushClient;->queryCallback:Lio/rong/push/core/PushClient$QueryCallback;

    invoke-interface {v1}, Lio/rong/push/core/PushClient$QueryCallback;->onFailure()V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 112
    const-string v1, "PushClient"

    const-string v2, "reset"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v1, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    invoke-virtual {v1}, Lio/rong/push/core/PushClient$PushReader;->interrupt()V

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/rong/push/core/PushClient;->running:Z

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lio/rong/push/core/PushClient;->reader:Lio/rong/push/core/PushClient$PushReader;

    .line 119
    :cond_0
    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lio/rong/push/core/PushClient;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PushClient"

    const-string v2, "reset IOException"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
