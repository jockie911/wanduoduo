.class public Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnReceiveMessageProgressEvent"
.end annotation


# instance fields
.field message:Lio/rong/imlib/model/Message;

.field progress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->progress:I

    return v0
.end method

.method public setMessage(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 104
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->message:Lio/rong/imlib/model/Message;

    .line 105
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 108
    iput p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->progress:I

    .line 109
    return-void
.end method
