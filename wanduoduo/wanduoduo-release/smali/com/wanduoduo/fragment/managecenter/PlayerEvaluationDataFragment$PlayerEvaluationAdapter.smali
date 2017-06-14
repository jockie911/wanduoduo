.class Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayerEvaluationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerEvaluationAdapter"
.end annotation


# instance fields
.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->this$0:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;-><init>(Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "isReFreshData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 117
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400ac

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 119
    :cond_0
    #calls: Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->access$100(Landroid/view/View;)Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;

    move-result-object v0

    .line 120
    .local v0, holder:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->relDetailSkill:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    const-string v2, "0"

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getIs_show()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->civEvalutionActor:Lcom/wanduoduo/widget/CircleImageView;

    const v2, 0x7f02014e

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/CircleImageView;->setBackgroundResource(I)V

    .line 123
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->tvNickname:Landroid/widget/TextView;

    const-string v2, "\u533f\u540d\u7528\u6237"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    iget-object v2, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->evalucation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const-string v2, "1"

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getStar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->ivStar:Landroid/widget/ImageView;

    const v2, 0x7f0202a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-object p2

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->this$0:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;

    invoke-virtual {v1}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getComment_user()Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->civEvalutionActor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 126
    iget-object v2, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->tvNickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getComment_user()Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    :cond_3
    const-string v2, "2"

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getStar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->ivStar:Landroid/widget/ImageView;

    const v2, 0x7f0202a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 134
    :cond_4
    const-string v2, "3"

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getStar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->ivStar:Landroid/widget/ImageView;

    const v2, 0x7f0202a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 137
    :cond_5
    const-string v2, "4"

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getStar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->ivStar:Landroid/widget/ImageView;

    const v2, 0x7f0202a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 140
    :cond_6
    const-string v2, "5"

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->getStar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->ivStar:Landroid/widget/ImageView;

    const v2, 0x7f0202a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method
