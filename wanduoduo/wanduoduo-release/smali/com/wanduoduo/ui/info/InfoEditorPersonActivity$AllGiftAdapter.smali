.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoEditorPersonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllGiftAdapter"
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p2, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    .line 657
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 658
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 659
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->notifyDataSetChanged()V

    .line 660
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 674
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 679
    if-nez p2, :cond_0

    .line 680
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040099

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 681
    :cond_0
    const v3, 0x7f0e0298

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 682
    .local v0, ivGiftPic:Landroid/widget/ImageView;
    const v3, 0x7f0e0299

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 683
    .local v2, tvGiftName:Landroid/widget/TextView;
    const v3, 0x7f0e029a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 685
    .local v1, tvGiftCharm:Landroid/widget/TextView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 686
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getCharm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    return-object p2
.end method
