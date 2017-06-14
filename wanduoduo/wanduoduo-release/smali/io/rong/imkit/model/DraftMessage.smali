.class public Lio/rong/imkit/model/DraftMessage;
.super Ljava/lang/Object;
.source "DraftMessage.java"


# instance fields
.field private content:Ljava/lang/String;

.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/DraftMessage;
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "msgContent"

    .prologue
    .line 13
    new-instance v0, Lio/rong/imkit/model/DraftMessage;

    invoke-direct {v0}, Lio/rong/imkit/model/DraftMessage;-><init>()V

    .line 14
    .local v0, obj:Lio/rong/imkit/model/DraftMessage;
    iput-object p2, v0, Lio/rong/imkit/model/DraftMessage;->content:Ljava/lang/String;

    .line 15
    iput-object p0, v0, Lio/rong/imkit/model/DraftMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 16
    iput-object p1, v0, Lio/rong/imkit/model/DraftMessage;->targetId:Ljava/lang/String;

    .line 17
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/rong/imkit/model/DraftMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lio/rong/imkit/model/DraftMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imkit/model/DraftMessage;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 21
    iput-object p1, p0, Lio/rong/imkit/model/DraftMessage;->content:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 36
    iput-object p1, p0, Lio/rong/imkit/model/DraftMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 37
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 29
    iput-object p1, p0, Lio/rong/imkit/model/DraftMessage;->targetId:Ljava/lang/String;

    .line 30
    return-void
.end method
