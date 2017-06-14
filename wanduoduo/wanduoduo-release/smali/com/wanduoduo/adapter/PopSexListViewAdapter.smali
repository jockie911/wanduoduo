.class public Lcom/wanduoduo/adapter/PopSexListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopSexListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "selectedPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    iput p2, p0, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->selectedPosition:I

    .line 30
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    #calls: Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;

    move-result-object v0

    .line 53
    .local v0, holder:Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    iget-object v2, v0, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->tvSexAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget v1, p0, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->selectedPosition:I

    if-ne p1, v1, :cond_1

    .line 55
    iget-object v1, v0, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->ivIsChecked:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v1, v0, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->tvSexAll:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    :goto_0
    return-object p2

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->ivIsChecked:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v1, v0, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->tvSexAll:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
