.class public Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiviItemDiscussAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

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
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, comment_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;>;"
    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->notifyDataSetChanged()V

    .line 38
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v2, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040091

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    :cond_0
    #calls: Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;

    move-result-object v0

    .line 60
    .local v0, holder:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    iget-object v3, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->tvNickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->getVip_level()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 68
    iget-object v1, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :goto_1
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/TimeShowUtils;->getStandardDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 74
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    new-instance v2, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$1;

    invoke-direct {v2, p0, p3, p1}, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$1;-><init>(Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object p2

    .line 63
    :pswitch_0
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string v2, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const-string v2, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 64
    :pswitch_4
    iget-object v1, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020344

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 65
    :pswitch_5
    iget-object v1, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020345

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 66
    :pswitch_6
    iget-object v1, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020346

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 67
    :pswitch_7
    iget-object v1, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020347

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
