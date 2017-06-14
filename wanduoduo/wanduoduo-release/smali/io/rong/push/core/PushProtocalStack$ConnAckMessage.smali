.class public Lio/rong/push/core/PushProtocalStack$ConnAckMessage;
.super Lio/rong/push/core/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnAckMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final MESSAGE_LENGTH:I = 0x2


# instance fields
.field private status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/core/PushProtocalStack$Message;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Type;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 48
    sget-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/core/PushProtocalStack$Message;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Type;)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The status of ConnAskMessage can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    .line 53
    return-void
.end method

.method public constructor <init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V
    .locals 0
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lio/rong/push/core/PushProtocalStack$Message;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getStatus()Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    return-object v0
.end method

.method protected messageLength()I
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x2

    .line 59
    .local v0, length:I
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 63
    :cond_0
    return v0
.end method

.method protected readMessage(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "in"
    .parameter "msgLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 70
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 71
    .local v1, result:I
    packed-switch v1, :pswitch_data_0

    .line 94
    const-string v2, "PushProtocol"

    const-string v3, "Unsupported CONNACK code"

    invoke-static {v2, v3}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->REDIRECT:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    .line 99
    :goto_0
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    .line 100
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 101
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    .line 103
    .end local v0           #dis:Ljava/io/DataInputStream;
    :cond_0
    return-void

    .line 73
    :pswitch_0
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ACCEPTED:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 76
    :pswitch_1
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->UNACCEPTABLE_PROTOCOL_VERSION:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->IDENTIFIER_REJECTED:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 82
    :pswitch_3
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->SERVER_UNAVAILABLE:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 85
    :pswitch_4
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->BAD_USERNAME_OR_PASSWORD:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 88
    :pswitch_5
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->NOT_AUTHORIZED:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 91
    :pswitch_6
    sget-object v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->REDIRECT:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setDup(Z)V
    .locals 2
    .parameter "dup"

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNACK messages don\'t use the DUP flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQos(Lio/rong/push/core/PushProtocalStack$QoS;)V
    .locals 2
    .parameter "qos"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNACK messages don\'t use the QoS flags."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetained(Z)V
    .locals 2
    .parameter "retain"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNACK messages don\'t use the RETAIN flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 147
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected writeMessage(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 108
    sget-object v1, Lio/rong/push/core/PushProtocalStack$1;->$SwitchMap$io$rong$push$core$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v2}, Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 131
    const-string v1, "PushProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported CONNACK message status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/core/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v0, dos:Ljava/io/DataOutputStream;
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 140
    .end local v0           #dos:Ljava/io/DataOutputStream;
    :cond_0
    return-void

    .line 110
    :pswitch_0
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 116
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 119
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 122
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 125
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 128
    :pswitch_6
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
