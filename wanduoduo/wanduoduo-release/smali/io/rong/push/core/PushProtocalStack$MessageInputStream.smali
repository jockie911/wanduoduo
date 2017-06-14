.class public Lio/rong/push/core/PushProtocalStack$MessageInputStream;
.super Ljava/lang/Object;
.source "PushProtocalStack.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInputStream"
.end annotation


# instance fields
.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    .line 667
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 715
    return-void
.end method

.method public readMessage()Lio/rong/push/core/PushProtocalStack$Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 670
    iget-object v4, p0, Lio/rong/push/core/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v0, v4

    .line 672
    .local v0, flags:B
    new-instance v1, Lio/rong/push/core/PushProtocalStack$Message$Header;

    invoke-direct {v1, v0}, Lio/rong/push/core/PushProtocalStack$Message$Header;-><init>(B)V

    .line 673
    .local v1, header:Lio/rong/push/core/PushProtocalStack$Message$Header;
    const/4 v2, 0x0

    .line 674
    .local v2, msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-virtual {v1}, Lio/rong/push/core/PushProtocalStack$Message$Header;->getType()Lio/rong/push/core/PushProtocalStack$Message$Type;

    move-result-object v4

    if-nez v4, :cond_0

    .line 710
    :goto_0
    return-object v3

    .line 677
    :cond_0
    const-string v4, "PushProtocalStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive message type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lio/rong/push/core/PushProtocalStack$Message$Header;->getType()Lio/rong/push/core/PushProtocalStack$Message$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-object v4, Lio/rong/push/core/PushProtocalStack$1;->$SwitchMap$io$rong$push$core$PushProtocalStack$Message$Type:[I

    invoke-virtual {v1}, Lio/rong/push/core/PushProtocalStack$Message$Header;->getType()Lio/rong/push/core/PushProtocalStack$Message$Type;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/push/core/PushProtocalStack$Message$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 705
    const-string v4, "PushProtocalStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No support for deserializing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lio/rong/push/core/PushProtocalStack$Message$Header;->getType()Lio/rong/push/core/PushProtocalStack$Message$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "messages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :pswitch_0
    new-instance v2, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$ConnAckMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 708
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    :goto_1
    iget-object v3, p0, Lio/rong/push/core/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 709
    iget-object v3, p0, Lio/rong/push/core/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Lio/rong/push/core/PushProtocalStack$Message;->read(Ljava/io/InputStream;)V

    move-object v3, v2

    .line 710
    goto :goto_0

    .line 683
    :pswitch_1
    new-instance v2, Lio/rong/push/core/PushProtocalStack$PublishMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$PublishMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 684
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    goto :goto_1

    .line 687
    :pswitch_2
    new-instance v2, Lio/rong/push/core/PushProtocalStack$PingRespMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$PingRespMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 688
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    goto :goto_1

    .line 690
    :pswitch_3
    new-instance v2, Lio/rong/push/core/PushProtocalStack$ConnectMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$ConnectMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 691
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    goto :goto_1

    .line 693
    :pswitch_4
    new-instance v2, Lio/rong/push/core/PushProtocalStack$PingReqMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$PingReqMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 694
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    goto :goto_1

    .line 696
    :pswitch_5
    new-instance v2, Lio/rong/push/core/PushProtocalStack$DisconnectMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$DisconnectMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 697
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    goto :goto_1

    .line 699
    :pswitch_6
    new-instance v2, Lio/rong/push/core/PushProtocalStack$QueryMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$QueryMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 700
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    goto :goto_1

    .line 702
    :pswitch_7
    new-instance v2, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;

    .end local v2           #msg:Lio/rong/push/core/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage;-><init>(Lio/rong/push/core/PushProtocalStack$Message$Header;)V

    .line 703
    .restart local v2       #msg:Lio/rong/push/core/PushProtocalStack$Message;
    goto :goto_1

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
