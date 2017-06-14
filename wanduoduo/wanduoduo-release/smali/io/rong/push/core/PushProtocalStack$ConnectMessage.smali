.class public Lio/rong/push/core/PushProtocalStack$ConnectMessage;
.super Lio/rong/push/core/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectMessage"
.end annotation


# static fields
.field private static CONNECT_HEADER_SIZE:I


# instance fields
.field private cleanSession:Z

.field private clientId:Ljava/lang/String;

.field private hasPassword:Z

.field private hasUsername:Z

.field private hasWill:Z

.field private keepAlive:I

.field private password:Ljava/lang/String;

.field private protocolId:Ljava/lang/String;

.field private protocolVersion:B

.field private retainWill:Z

.field private username:Ljava/lang/String;

.field private will:Ljava/lang/String;

.field private willQoS:Lio/rong/push/core/PushProtocalStack$QoS;

.field private willTopic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0xc

    sput v0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->CONNECT_HEADER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/core/PushProtocalStack$Message;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Type;)V

    .line 175
    const-string v0, "MQIsdp"

    iput-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 176
    const/4 v0, 0x3

    iput-byte v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 192
    return-void
.end method

.method public constructor <init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V
    .locals 1
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lio/rong/push/core/PushProtocalStack$Message;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 175
    const-string v0, "MQIsdp"

    iput-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 176
    const/4 v0, 0x3

    iput-byte v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 3
    .parameter "clientId"
    .parameter "cleanSession"
    .parameter "keepAlive"

    .prologue
    .line 199
    sget-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/core/PushProtocalStack$Message;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Type;)V

    .line 175
    const-string v0, "MQIsdp"

    iput-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 176
    const/4 v0, 0x3

    iput-byte v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client id cannot be null and must be at most 64 characters long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    .line 204
    iput-boolean p2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->cleanSession:Z

    .line 205
    iput p3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->keepAlive:I

    .line 206
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepAlive()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->keepAlive:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()B
    .locals 1

    .prologue
    .line 335
    iget-byte v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolVersion:B

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    return-object v0
.end method

.method public getWillQoS()Lio/rong/push/core/PushProtocalStack$QoS;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/core/PushProtocalStack$QoS;

    return-object v0
.end method

.method public getWillTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    return-object v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasPassword:Z

    return v0
.end method

.method public hasUsername()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasUsername:Z

    return v0
.end method

.method public hasWill()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasWill:Z

    return v0
.end method

.method public isCleanSession()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->cleanSession:Z

    return v0
.end method

.method public isWillRetained()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->retainWill:Z

    return v0
.end method

.method protected messageLength()I
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1

    .line 211
    .local v0, payloadSize:I
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 212
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 213
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 214
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 215
    sget v1, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->CONNECT_HEADER_SIZE:I

    add-int/2addr v1, v0

    return v1
.end method

.method protected readMessage(Ljava/io/InputStream;I)V
    .locals 5
    .parameter "in"
    .parameter "msgLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    .local v1, dis:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 222
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 223
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 224
    .local v0, cFlags:B
    and-int/lit16 v2, v0, 0x80

    if-lez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasUsername:Z

    .line 225
    and-int/lit8 v2, v0, 0x40

    if-lez v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasPassword:Z

    .line 226
    and-int/lit8 v2, v0, 0x20

    if-lez v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->retainWill:Z

    .line 227
    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lio/rong/push/core/PushProtocalStack$QoS;->valueOf(I)Lio/rong/push/core/PushProtocalStack$QoS;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/core/PushProtocalStack$QoS;

    .line 228
    and-int/lit8 v2, v0, 0x4

    if-lez v2, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasWill:Z

    .line 229
    and-int/lit8 v2, v0, 0x20

    if-lez v2, :cond_7

    :goto_4
    iput-boolean v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->cleanSession:Z

    .line 230
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->keepAlive:I

    .line 231
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    .line 232
    iget-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasWill:Z

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    .line 236
    :cond_0
    iget-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasUsername:Z

    if-eqz v2, :cond_1

    .line 238
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :cond_1
    :goto_5
    iget-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasPassword:Z

    if-eqz v2, :cond_2

    .line 245
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :cond_2
    :goto_6
    return-void

    :cond_3
    move v2, v4

    .line 224
    goto :goto_0

    :cond_4
    move v2, v4

    .line 225
    goto :goto_1

    :cond_5
    move v2, v4

    .line 226
    goto :goto_2

    :cond_6
    move v2, v4

    .line 228
    goto :goto_3

    :cond_7
    move v3, v4

    .line 229
    goto :goto_4

    .line 246
    :catch_0
    move-exception v2

    goto :goto_6

    .line 239
    :catch_1
    move-exception v2

    goto :goto_5
.end method

.method public setCredentials(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is not valid to supply a password without supplying a username."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    .line 293
    iput-object p2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasUsername:Z

    .line 295
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasPassword:Z

    .line 297
    return-void

    :cond_2
    move v0, v2

    .line 294
    goto :goto_0

    :cond_3
    move v1, v2

    .line 295
    goto :goto_1
.end method

.method public setDup(Z)V
    .locals 2
    .parameter "dup"

    .prologue
    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNECT messages don\'t use the DUP flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQos(Lio/rong/push/core/PushProtocalStack$QoS;)V
    .locals 2
    .parameter "qos"

    .prologue
    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNECT messages don\'t use the QoS flags."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetained(Z)V
    .locals 2
    .parameter "retain"

    .prologue
    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNECT messages don\'t use the RETAIN flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWill(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "willTopic"
    .parameter "will"

    .prologue
    .line 300
    sget-object v0, Lio/rong/push/core/PushProtocalStack$QoS;->AT_MOST_ONCE:Lio/rong/push/core/PushProtocalStack$QoS;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->setWill(Ljava/lang/String;Ljava/lang/String;Lio/rong/push/core/PushProtocalStack$QoS;Z)V

    .line 301
    return-void
.end method

.method public setWill(Ljava/lang/String;Ljava/lang/String;Lio/rong/push/core/PushProtocalStack$QoS;Z)V
    .locals 4
    .parameter "willTopic"
    .parameter "will"
    .parameter "willQoS"
    .parameter "retainWill"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    if-nez p1, :cond_1

    move v3, v0

    :goto_0
    if-nez p2, :cond_2

    move v2, v0

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_0

    if-nez p2, :cond_3

    move v3, v0

    :goto_2
    if-nez p3, :cond_4

    move v2, v0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set willTopic, will or willQoS value independently"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v1

    .line 304
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    .line 308
    :cond_5
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    .line 309
    iput-object p2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    .line 310
    iput-object p3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/core/PushProtocalStack$QoS;

    .line 311
    iput-boolean p4, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->retainWill:Z

    .line 312
    if-eqz p1, :cond_6

    :goto_4
    iput-boolean v0, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasWill:Z

    .line 313
    return-void

    :cond_6
    move v0, v1

    .line 312
    goto :goto_4
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
    const/4 v2, 0x0

    .line 255
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 256
    .local v0, dos:Ljava/io/DataOutputStream;
    iget-object v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 257
    iget-byte v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->protocolVersion:B

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 258
    iget-boolean v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->cleanSession:Z

    if-eqz v3, :cond_4

    const/4 v1, 0x2

    .line 259
    .local v1, flags:I
    :goto_0
    iget-boolean v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasWill:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    :goto_1
    or-int/2addr v1, v3

    .line 260
    iget-object v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/core/PushProtocalStack$QoS;

    if-nez v3, :cond_6

    move v3, v2

    :goto_2
    or-int/2addr v1, v3

    .line 261
    iget-boolean v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->retainWill:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x20

    :goto_3
    or-int/2addr v1, v3

    .line 262
    iget-boolean v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasPassword:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x40

    :goto_4
    or-int/2addr v1, v3

    .line 263
    iget-boolean v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasUsername:Z

    if-eqz v3, :cond_0

    const/16 v2, 0x80

    :cond_0
    or-int/2addr v1, v2

    .line 264
    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 265
    iget v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->keepAlive:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 267
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 268
    iget-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasWill:Z

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 272
    :cond_1
    iget-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasUsername:Z

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 275
    :cond_2
    iget-boolean v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->hasPassword:Z

    if-eqz v2, :cond_3

    .line 276
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 279
    :cond_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 280
    return-void

    .end local v1           #flags:I
    :cond_4
    move v1, v2

    .line 258
    goto :goto_0

    .restart local v1       #flags:I
    :cond_5
    move v3, v2

    .line 259
    goto :goto_1

    .line 260
    :cond_6
    iget-object v3, p0, Lio/rong/push/core/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/core/PushProtocalStack$QoS;

    iget v3, v3, Lio/rong/push/core/PushProtocalStack$QoS;->val:I

    shl-int/lit8 v3, v3, 0x3

    goto :goto_2

    :cond_7
    move v3, v2

    .line 261
    goto :goto_3

    :cond_8
    move v3, v2

    .line 262
    goto :goto_4
.end method
