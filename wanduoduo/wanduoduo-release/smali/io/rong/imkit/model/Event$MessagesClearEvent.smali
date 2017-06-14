.class public Lio/rong/imkit/model/Event$MessagesClearEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagesClearEvent"
.end annotation


# instance fields
.field targetId:Ljava/lang/String;

.field type:Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lio/rong/imkit/model/Event$MessagesClearEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 263
    iput-object p2, p0, Lio/rong/imkit/model/Event$MessagesClearEvent;->targetId:Ljava/lang/String;

    .line 264
    return-void
.end method


# virtual methods
.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lio/rong/imkit/model/Event$MessagesClearEvent;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lio/rong/imkit/model/Event$MessagesClearEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 279
    iput-object p1, p0, Lio/rong/imkit/model/Event$MessagesClearEvent;->targetId:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 271
    iput-object p1, p0, Lio/rong/imkit/model/Event$MessagesClearEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 272
    return-void
.end method
