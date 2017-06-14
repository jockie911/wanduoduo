.class public Lio/rong/imkit/model/Event$ClearConversationEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearConversationEvent"
.end annotation


# instance fields
.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/model/Event$ClearConversationEvent;->typeList:Ljava/util/List;

    return-void
.end method

.method public static varargs obtain([Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/Event$ClearConversationEvent;
    .locals 1
    .parameter "conversationTypes"

    .prologue
    .line 817
    new-instance v0, Lio/rong/imkit/model/Event$ClearConversationEvent;

    invoke-direct {v0}, Lio/rong/imkit/model/Event$ClearConversationEvent;-><init>()V

    .line 818
    .local v0, clearConversationEvent:Lio/rong/imkit/model/Event$ClearConversationEvent;
    invoke-virtual {v0, p0}, Lio/rong/imkit/model/Event$ClearConversationEvent;->setTypes([Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 819
    return-object v0
.end method


# virtual methods
.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lio/rong/imkit/model/Event$ClearConversationEvent;->typeList:Ljava/util/List;

    return-object v0
.end method

.method public setTypes([Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 5
    .parameter "types"

    .prologue
    .line 823
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 829
    :cond_0
    return-void

    .line 825
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/model/Event$ClearConversationEvent;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 826
    move-object v0, p1

    .local v0, arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 827
    .local v3, type:Lio/rong/imlib/model/Conversation$ConversationType;
    iget-object v4, p0, Lio/rong/imkit/model/Event$ClearConversationEvent;->typeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
