.class public Lcom/wanduoduo/adapter/SystemMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "SystemMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/SystemMessageAdapter;->mData:Ljava/util/List;

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
            "<",
            "Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/wanduoduo/adapter/SystemMessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    :cond_0
    if-eqz p1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/wanduoduo/adapter/SystemMessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/SystemMessageAdapter;->notifyDataSetChanged()V

    .line 32
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wanduoduo/adapter/SystemMessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400b3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    :cond_0
    #calls: Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;

    move-result-object v0

    .line 56
    .local v0, holder:Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;
    iget-object v2, v0, Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/SystemMessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystem_content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, v0, Lcom/wanduoduo/adapter/SystemMessageAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/SystemMessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystem_create_time()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/TimeShowUtils;->getStandardDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-object p2
.end method
