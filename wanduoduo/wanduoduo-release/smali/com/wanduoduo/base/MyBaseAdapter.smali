.class public abstract Lcom/wanduoduo/base/MyBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyBaseAdapter.java"


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
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, this:Lcom/wanduoduo/base/MyBaseAdapter;,"Lcom/wanduoduo/base/MyBaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/base/MyBaseAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "isRefreshData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/wanduoduo/base/MyBaseAdapter;,"Lcom/wanduoduo/base/MyBaseAdapter<TT;>;"
    .local p1, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz p2, :cond_0

    .line 18
    iget-object v0, p0, Lcom/wanduoduo/base/MyBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/wanduoduo/base/MyBaseAdapter;->mData:Ljava/util/List;

    .line 20
    invoke-virtual {p0}, Lcom/wanduoduo/base/MyBaseAdapter;->notifyDataSetChanged()V

    .line 21
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 24
    .local p0, this:Lcom/wanduoduo/base/MyBaseAdapter;,"Lcom/wanduoduo/base/MyBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/wanduoduo/base/MyBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    invoke-virtual {p0}, Lcom/wanduoduo/base/MyBaseAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/wanduoduo/base/MyBaseAdapter;,"Lcom/wanduoduo/base/MyBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/wanduoduo/base/MyBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/wanduoduo/base/MyBaseAdapter;,"Lcom/wanduoduo/base/MyBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/wanduoduo/base/MyBaseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 40
    .local p0, this:Lcom/wanduoduo/base/MyBaseAdapter;,"Lcom/wanduoduo/base/MyBaseAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
