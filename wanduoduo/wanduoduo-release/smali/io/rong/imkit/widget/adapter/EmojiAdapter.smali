.class public Lio/rong/imkit/widget/adapter/EmojiAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiAdapter.java"


# static fields
.field private static final EMOJI_PER_PAGE:I = 0x14


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStartIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "startIndex"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/EmojiAdapter;->mContext:Landroid/content/Context;

    .line 20
    iput p2, p0, Lio/rong/imkit/widget/adapter/EmojiAdapter;->mStartIndex:I

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->getEmojiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiAdapter;->mStartIndex:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 26
    .local v0, count:I
    const/16 v1, 0x15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 27
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 32
    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->getEmojiList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiAdapter;->mStartIndex:I

    add-int/2addr v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/Emoji;

    .line 33
    .local v0, e:Lio/rong/imkit/model/Emoji;
    invoke-virtual {v0}, Lio/rong/imkit/model/Emoji;->getRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    iget v0, p0, Lio/rong/imkit/widget/adapter/EmojiAdapter;->mStartIndex:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    iget-object v4, p0, Lio/rong/imkit/widget/adapter/EmojiAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$layout;->rc_emoji_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    :cond_0
    sget v4, Lio/rong/imkit/R$id;->rc_emoji_item:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .local v2, emoji:Landroid/widget/ImageView;
    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->getEmojiList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    .local v0, count:I
    iget v4, p0, Lio/rong/imkit/widget/adapter/EmojiAdapter;->mStartIndex:I

    add-int v3, p1, v4

    .line 48
    .local v3, index:I
    const/16 v4, 0x14

    if-eq p1, v4, :cond_1

    if-ne v3, v0, :cond_3

    .line 49
    :cond_1
    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_delete:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    :cond_2
    :goto_0
    return-object p2

    .line 50
    :cond_3
    if-ge v3, v0, :cond_2

    .line 51
    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->getEmojiList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/Emoji;

    .line 52
    .local v1, e:Lio/rong/imkit/model/Emoji;
    invoke-virtual {v1}, Lio/rong/imkit/model/Emoji;->getRes()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
