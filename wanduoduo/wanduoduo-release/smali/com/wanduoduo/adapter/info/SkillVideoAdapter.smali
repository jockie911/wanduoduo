.class public Lcom/wanduoduo/adapter/info/SkillVideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "SkillVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;
    }
.end annotation


# instance fields
.field mUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onDeleteListen:Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;)V
    .locals 1
    .parameter "onDeleteListen"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->mUrlList:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->onDeleteListen:Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/adapter/info/SkillVideoAdapter;)Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->onDeleteListen:Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->mUrlList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, urlLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->mUrlList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->notifyDataSetChanged()V

    .line 32
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 41
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->mUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 44
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->mUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0400a8

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v3, 0x7f0e02c5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 62
    .local v2, ivPlay:Landroid/widget/ImageView;
    const v3, 0x7f0e02c4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, ivPicDelete:Landroid/widget/ImageView;
    const v3, 0x7f0e02c3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 64
    .local v0, gvItenIv:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;
    const-string v3, "#666666"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->setBackgroundColor(I)V

    .line 66
    iget-object v3, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->mUrlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 67
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :goto_0
    new-instance v3, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$1;

    invoke-direct {v3, p0, p3, p1}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$1;-><init>(Lcom/wanduoduo/adapter/info/SkillVideoAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v3, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;-><init>(Lcom/wanduoduo/adapter/info/SkillVideoAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-object p2

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 71
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    const-string v3, "#00ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->setBackgroundColor(I)V

    .line 74
    const v3, 0x7f020157

    invoke-virtual {v0, v3}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
