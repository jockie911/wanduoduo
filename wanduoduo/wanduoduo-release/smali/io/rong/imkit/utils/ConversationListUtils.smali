.class public Lio/rong/imkit/utils/ConversationListUtils;
.super Ljava/lang/Object;
.source "ConversationListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPositionForCancleTop(ILio/rong/imkit/widget/adapter/BaseAdapter;)I
    .locals 8
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imkit/widget/adapter/BaseAdapter",
            "<",
            "Lio/rong/imkit/model/UIConversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, mAdapter:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<Lio/rong/imkit/model/UIConversation;>;"
    invoke-virtual {p1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    .line 47
    .local v0, count:I
    const/4 v2, 0x0

    .line 49
    .local v2, tap:I
    if-le p0, v0, :cond_0

    .line 50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the index for the position is error!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    add-int/lit8 v1, p0, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 54
    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    add-int v3, p0, v2

    return v3
.end method

.method public static findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I
    .locals 8
    .parameter "uiconversation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imkit/model/UIConversation;",
            "Lio/rong/imkit/widget/adapter/BaseAdapter",
            "<",
            "Lio/rong/imkit/model/UIConversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 8
    .local p1, mAdapter:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<Lio/rong/imkit/model/UIConversation;>;"
    invoke-virtual {p1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    .line 9
    .local v0, count:I
    const/4 v2, 0x0

    .line 11
    .local v2, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 19
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_2
    return v2
.end method

.method public static findPositionForSetTop(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I
    .locals 8
    .parameter "uiconversation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imkit/model/UIConversation;",
            "Lio/rong/imkit/widget/adapter/BaseAdapter",
            "<",
            "Lio/rong/imkit/model/UIConversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, mAdapter:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<Lio/rong/imkit/model/UIConversation;>;"
    invoke-virtual {p1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    .line 30
    .local v0, count:I
    const/4 v2, 0x0

    .line 32
    .local v2, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return v2
.end method
