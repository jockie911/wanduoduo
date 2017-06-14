.class public abstract Lio/rong/imkit/widget/adapter/BaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mMentionMemberSelectListener:Lio/rong/imkit/mention/IMemberMentionedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public add(Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public addCollection(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-void
.end method

.method public varargs addCollection([Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, collection:[Ljava/lang/Object;,"[TT;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 70
    .local v3, t:Ljava/lang/Object;,"TT;"
    iget-object v4, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3           #t:Ljava/lang/Object;,"TT;"
    :cond_0
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    return-void
.end method

.method public findPosition(J)I
    .locals 7
    .parameter "id"

    .prologue
    .line 52
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    .line 53
    .local v0, index:I
    const/4 v2, -0x1

    .local v2, position:I
    move v1, v0

    .line 54
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    if-lez v1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 56
    move v2, v0

    .line 60
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method public findPosition(Ljava/lang/Object;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, message:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    .line 41
    .local v0, index:I
    const/4 v2, -0x1

    .local v2, position:I
    move v1, v0

    .line 42
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    if-lez v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    move v2, v0

    .line 48
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method protected findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 110
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    if-eqz p2, :cond_0

    .line 117
    move-object v0, p2

    .line 121
    .local v0, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->bindView(Landroid/view/View;ILjava/lang/Object;)V

    .line 122
    return-object v0

    .line 119
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p3}, Lio/rong/imkit/widget/adapter/BaseAdapter;->newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public remove(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 83
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 87
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    return-void
.end method

.method public setOnItemClickListener(Lio/rong/imkit/mention/IMemberMentionedListener;)V
    .locals 0
    .parameter "mentionMemberSelectListener"

    .prologue
    .line 31
    .local p0, this:Lio/rong/imkit/widget/adapter/BaseAdapter;,"Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mMentionMemberSelectListener:Lio/rong/imkit/mention/IMemberMentionedListener;

    .line 32
    return-void
.end method
