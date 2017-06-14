.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiviItemContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZanAdapter"
.end annotation


# instance fields
.field private count:I

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p2, like_users:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 453
    iput p3, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;->count:I

    .line 454
    iput-object p2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;->mData:Ljava/util/List;

    .line 455
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;->notifyDataSetChanged()V

    .line 456
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 470
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 475
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040092

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 476
    const v1, 0x7f0e0122

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/widget/CircleImageView;

    .line 477
    .local v0, circleImageView:Lcom/wanduoduo/widget/CircleImageView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 478
    return-object p2
.end method
