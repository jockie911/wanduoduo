.class public Lio/rong/push/core/PushProtocalStack$QueryMessage;
.super Lio/rong/push/core/PushProtocalStack$RetryableMessage;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMessage"
.end annotation


# instance fields
.field private data:[B

.field private signature:J

.field private targetId:Ljava/lang/String;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V
    .locals 0
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 956
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "topic"
    .parameter "msg"
    .parameter "targetId"

    .prologue
    .line 943
    invoke-static {p2}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lio/rong/push/core/PushProtocalStack$QueryMessage;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 944
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .parameter "topic"
    .parameter "data"
    .parameter "targetId"

    .prologue
    .line 947
    sget-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERY:Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Type;)V

    .line 948
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->topic:Ljava/lang/String;

    .line 949
    iput-object p3, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->targetId:Ljava/lang/String;

    .line 950
    iput-object p2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->data:[B

    .line 951
    const-wide/16 v0, 0xff

    iput-wide v0, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->signature:J

    .line 952
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->data:[B

    return-object v0
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method protected messageLength()I
    .locals 2

    .prologue
    .line 960
    const/16 v0, 0x8

    .line 961
    .local v0, length:I
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->topic:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 962
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->targetId:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 963
    add-int/lit8 v0, v0, 0x2

    .line 964
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 965
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
    .line 983
    const/4 v1, 0x0

    .line 984
    .local v1, pos:I
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 985
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->signature:J

    .line 986
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->topic:Ljava/lang/String;

    .line 987
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->targetId:Ljava/lang/String;

    .line 988
    add-int/lit8 v1, v1, 0x8

    .line 989
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->topic:Ljava/lang/String;

    invoke-static {v2}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v1, v2, 0x8

    .line 990
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->targetId:Ljava/lang/String;

    invoke-static {v2}, Lio/rong/push/core/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    .line 991
    invoke-super {p0, p1, p2}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;->readMessage(Ljava/io/InputStream;I)V

    .line 992
    add-int/lit8 v1, v1, 0x2

    .line 993
    sub-int v2, p2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->data:[B

    .line 994
    iget-object v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->data:[B

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 995
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
    .line 970
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 971
    .local v0, dos:Ljava/io/DataOutputStream;
    iget-wide v2, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->signature:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 972
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 975
    invoke-super {p0, p1}, Lio/rong/push/core/PushProtocalStack$RetryableMessage;->writeMessage(Ljava/io/OutputStream;)V

    .line 976
    iget-object v1, p0, Lio/rong/push/core/PushProtocalStack$QueryMessage;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 977
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 978
    return-void
.end method
