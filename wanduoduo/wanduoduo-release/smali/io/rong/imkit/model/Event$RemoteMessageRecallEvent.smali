.class public Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteMessageRecallEvent"
.end annotation


# instance fields
.field private mMessageId:I

.field private mRecallNotificationMessage:Lio/rong/message/RecallNotificationMessage;

.field private mRecallSuccess:Z


# direct methods
.method public constructor <init>(ILio/rong/message/RecallNotificationMessage;Z)V
    .locals 0
    .parameter "messageId"
    .parameter "recallNotificationMessage"
    .parameter "recallSuccess"

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput p1, p0, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->mMessageId:I

    .line 879
    iput-object p2, p0, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->mRecallNotificationMessage:Lio/rong/message/RecallNotificationMessage;

    .line 880
    iput-boolean p3, p0, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->mRecallSuccess:Z

    .line 881
    return-void
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->mMessageId:I

    return v0
.end method

.method public getRecallNotificationMessage()Lio/rong/message/RecallNotificationMessage;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->mRecallNotificationMessage:Lio/rong/message/RecallNotificationMessage;

    return-object v0
.end method

.method public isRecallSuccess()Z
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->mRecallSuccess:Z

    return v0
.end method
