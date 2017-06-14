.class public Lio/rong/imkit/model/Event$OnReceiveMessageEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnReceiveMessageEvent"
.end annotation


# instance fields
.field left:I

.field message:Lio/rong/imlib/model/Message;


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Message;I)V
    .locals 0
    .parameter "message"
    .parameter "left"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->message:Lio/rong/imlib/model/Message;

    .line 68
    iput p2, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->left:I

    .line 69
    return-void
.end method


# virtual methods
.method public getLeft()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->left:I

    return v0
.end method

.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method

.method public setLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 84
    iput p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->left:I

    .line 85
    return-void
.end method

.method public setMessage(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 76
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->message:Lio/rong/imlib/model/Message;

    .line 77
    return-void
.end method
