.class public Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMessageSendErrorEvent"
.end annotation


# instance fields
.field errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

.field message:Lio/rong/imlib/model/Message;


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->message:Lio/rong/imlib/model/Message;

    .line 118
    iput-object p2, p0, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

    .line 119
    return-void
.end method


# virtual methods
.method public getErrorCode()Lio/rong/imlib/RongIMClient$ErrorCode;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

    return-object v0
.end method

.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method

.method public setErrorCode(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 134
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

    .line 135
    return-void
.end method

.method public setMessage(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 126
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->message:Lio/rong/imlib/model/Message;

    .line 127
    return-void
.end method
