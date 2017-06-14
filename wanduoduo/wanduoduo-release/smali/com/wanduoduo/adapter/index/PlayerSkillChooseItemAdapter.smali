.class public Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayerSkillChooseItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, data_list_child:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;>;"
    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    :cond_0
    if-nez p1, :cond_1

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "contentView"
    .parameter "parent"

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040096

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    :cond_0
    #calls: Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;

    move-result-object v0

    .line 60
    .local v0, holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    iget-object v2, v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;->itemTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object p2
.end method
