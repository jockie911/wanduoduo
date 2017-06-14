.class public Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayerSkillChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private drawableResIds:[I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private playerSkillChooseActivity:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;)V
    .locals 1
    .parameter "playerSkillChooseActivity"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->drawableResIds:[I

    .line 33
    iput-object p1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->playerSkillChooseActivity:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    .line 34
    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x9ct 0x2t 0x2t 0x7ft
        0x9bt 0x2t 0x2t 0x7ft
        0x99t 0x2t 0x2t 0x7ft
        0x9at 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;)Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->playerSkillChooseActivity:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    return-object v0
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
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "contentView"
    .parameter "parent"

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400a6

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    :cond_0
    #calls: Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;

    move-result-object v0

    .line 68
    .local v0, holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    new-instance v1, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;

    invoke-direct {v1}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;-><init>()V

    .line 69
    .local v1, itemAdapter:Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;
    iget-object v2, v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;->mgvPlayerSkillChoose:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v2, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v2, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;->addData(Ljava/util/List;Z)V

    .line 72
    iget-object v2, v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;->ivPlayerSkillChoose:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->drawableResIds:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v2, v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;->mgvPlayerSkillChoose:Lcom/wanduoduo/widget/MyGridView;

    new-instance v3, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;

    invoke-direct {v3, p0, p3, p1}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;-><init>(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v3}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    return-object p2
.end method
