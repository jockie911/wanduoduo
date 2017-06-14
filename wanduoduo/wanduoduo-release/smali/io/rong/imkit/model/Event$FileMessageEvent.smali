.class public Lio/rong/imkit/model/Event$FileMessageEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileMessageEvent"
.end annotation


# instance fields
.field callBackType:I

.field errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

.field message:Lio/rong/imlib/model/Message;

.field progress:I


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Message;IILio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "message"
    .parameter "progress"
    .parameter "callBackType"
    .parameter "errorCode"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->message:Lio/rong/imlib/model/Message;

    .line 26
    iput p2, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->progress:I

    .line 27
    iput p3, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->callBackType:I

    .line 28
    iput-object p4, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

    .line 29
    return-void
.end method


# virtual methods
.method public getCallBackType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->callBackType:I

    return v0
.end method

.method public getErrorCode()Lio/rong/imlib/RongIMClient$ErrorCode;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

    return-object v0
.end method

.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->progress:I

    return v0
.end method

.method public setCallBackType(I)V
    .locals 0
    .parameter "callBackType"

    .prologue
    .line 51
    iput p1, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->callBackType:I

    .line 52
    return-void
.end method

.method public setErrorCode(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 58
    iput-object p1, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->errorCode:Lio/rong/imlib/RongIMClient$ErrorCode;

    .line 59
    return-void
.end method

.method public setMessage(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 35
    iput-object p1, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->message:Lio/rong/imlib/model/Message;

    .line 36
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 43
    iput p1, p0, Lio/rong/imkit/model/Event$FileMessageEvent;->progress:I

    .line 44
    return-void
.end method
