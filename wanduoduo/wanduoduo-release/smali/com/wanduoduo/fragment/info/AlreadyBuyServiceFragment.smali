.class public Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "AlreadyBuyServiceFragment.java"


# instance fields
.field tvAll:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e021f
        }
    .end annotation
.end field

.field tvDiscuss:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0225
        }
    .end annotation
.end field

.field tvIng:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0222
        }
    .end annotation
.end field

.field vAll:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0220
        }
    .end annotation
.end field

.field vDiscuss:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0226
        }
    .end annotation
.end field

.field vIng:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0223
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    return-void
.end method

.method private setTvColor(Landroid/widget/TextView;)V
    .locals 4
    .parameter "tv"

    .prologue
    const v3, 0x7f0d002b

    const/4 v2, 0x4

    .line 77
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvIng:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvDiscuss:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vAll:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vIng:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vDiscuss:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;

    const-string v2, "0"

    invoke-direct {v1, v3, v2}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;

    const-string v2, "1"

    invoke-direct {v1, v3, v2}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;

    const-string v2, "2"

    invoke-direct {v1, v3, v2}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-super {p0}, Lcom/wanduoduo/base/BaseFragment;->getFragment()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 35
    const v0, 0x7f040074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->dealWithFragment()V

    .line 41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00c7,
            0x7f0e0221,
            0x7f0e0224
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    iget v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->currentSelectedPosition:I

    iput v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->beforeSelectedPosition:I

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 48
    :sswitch_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvAll:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->setTvColor(Landroid/widget/TextView;)V

    .line 49
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vAll:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iput v1, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->currentSelectedPosition:I

    .line 51
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->dealWithFragment()V

    goto :goto_0

    .line 54
    :sswitch_1
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvIng:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->setTvColor(Landroid/widget/TextView;)V

    .line 55
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vIng:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->currentSelectedPosition:I

    .line 57
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->dealWithFragment()V

    goto :goto_0

    .line 60
    :sswitch_2
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvDiscuss:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->setTvColor(Landroid/widget/TextView;)V

    .line 61
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vDiscuss:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->currentSelectedPosition:I

    .line 63
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->dealWithFragment()V

    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00c7 -> :sswitch_0
        0x7f0e0221 -> :sswitch_1
        0x7f0e0224 -> :sswitch_2
    .end sparse-switch
.end method
