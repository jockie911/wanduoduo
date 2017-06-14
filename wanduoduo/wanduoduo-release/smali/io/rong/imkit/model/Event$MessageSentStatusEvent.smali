.class public Lio/rong/imkit/model/Event$MessageSentStatusEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageSentStatusEvent"
.end annotation


# instance fields
.field messageId:I

.field sentStatus:Lio/rong/imlib/model/Message$SentStatus;


# direct methods
.method public constructor <init>(ILio/rong/imlib/model/Message$SentStatus;)V
    .locals 0
    .parameter "messageId"
    .parameter "sentStatus"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p1, p0, Lio/rong/imkit/model/Event$MessageSentStatusEvent;->messageId:I

    .line 215
    iput-object p2, p0, Lio/rong/imkit/model/Event$MessageSentStatusEvent;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 216
    return-void
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lio/rong/imkit/model/Event$MessageSentStatusEvent;->messageId:I

    return v0
.end method

.method public getSentStatus()Lio/rong/imlib/model/Message$SentStatus;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lio/rong/imkit/model/Event$MessageSentStatusEvent;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method

.method public setMessageId(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 223
    iput p1, p0, Lio/rong/imkit/model/Event$MessageSentStatusEvent;->messageId:I

    .line 224
    return-void
.end method

.method public setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V
    .locals 0
    .parameter "sentStatus"

    .prologue
    .line 231
    iput-object p1, p0, Lio/rong/imkit/model/Event$MessageSentStatusEvent;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 232
    return-void
.end method
