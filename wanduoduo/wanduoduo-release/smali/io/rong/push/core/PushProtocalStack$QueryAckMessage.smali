.class public Lio/rong/push/core/PushProtocalStack$QueryAckMessage;
.super Lio/rong/push/core/PushProtocalStack$RetryableMessage;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryAckMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;
    }
.end annotation


# static fields
.field private static final msgLen:I = 0x8


# instance fields
.field private data:[B

.field private date:I

.field private status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1042
    sget-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERYACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Type;)V

    .line 1043
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->setMessageId(I)V

    .line 1044
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 4
    .parameter "messageId"
    .parameter "status"
    .parameter "data"

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;-><init>(I)V

    .line 1036
    iput-object p3, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    .line 1037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->date:I

    .line 1038
    iput p2, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->status:I

    .line 1039
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
    .line 1047
    invoke-direct {p0, p1}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 1048
    return-void
.end method


# virtual methods
.method public getDataAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    invoke-static {v0}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 1105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->status:I

    return v0
.end method

.method protected messageLength()I
    .locals 2

    .prologue
    .line 1052
    const/16 v0, 0x8

    .line 1053
    .local v0, length:I
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1054
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 1056
    :cond_0
    return v0
.end method

.method protected readMessage(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "msgLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-super {p0, p1, p2}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;->readMessage(Ljava/io/InputStream;I)V

    .line 1076
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1077
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->date:I

    .line 1078
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->status:I

    .line 1079
    const/16 v1, 0x8

    if-le p2, v1, :cond_0

    .line 1080
    add-int/lit8 v1, p2, -0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    .line 1081
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 1083
    :cond_0
    return-void
.end method

.method public setDup(Z)V
    .locals 2
    .parameter "dup"

    .prologue
    .line 1091
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PubAck messages don\'t use the DUP flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQos(Lio/rong/push/core/PushProtocalStack$QoS;)V
    .locals 2
    .parameter "qos"

    .prologue
    .line 1097
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PubAck messages don\'t use the QoS flags."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeMessage(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1061
    invoke-super {p0, p1}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;->writeMessage(Ljava/io/OutputStream;)V

    .line 1062
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1063
    .local v0, dos:Ljava/io/DataOutputStream;
    iget v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->date:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1064
    iget v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->status:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1065
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1066
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1068
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 1069
    return-void
.end method
