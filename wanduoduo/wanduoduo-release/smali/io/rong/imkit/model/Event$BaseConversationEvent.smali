.class public Lio/rong/imkit/model/Event$BaseConversationEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseConversationEvent"
.end annotation


# instance fields
.field protected mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field protected mTargetId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lio/rong/imkit/model/Event$BaseConversationEvent;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lio/rong/imkit/model/Event$BaseConversationEvent;->mTargetId:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter "conversationType"

    .prologue
    .line 555
    iput-object p1, p0, Lio/rong/imkit/model/Event$BaseConversationEvent;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 556
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 563
    iput-object p1, p0, Lio/rong/imkit/model/Event$BaseConversationEvent;->mTargetId:Ljava/lang/String;

    .line 564
    return-void
.end method
