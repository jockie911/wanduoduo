.class public Lcom/wanduoduo/ui/info/InfoDifferentActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoDifferentActivity.java"


# instance fields
.field llBaseTitleBar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ec
        }
    .end annotation
.end field

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initReplaceContent(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fm"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 42
    return-void
.end method

.method private initTitle()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 45
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->type:I

    sget v1, Lcom/wanduoduo/istatic/IConsName;->INFO_ALREADY_BUY_SERVICE:I

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6211\u7ea6\u7684\u8fbe\u4eba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->initReplaceContent(Landroid/support/v4/app/Fragment;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->type:I

    sget v1, Lcom/wanduoduo/istatic/IConsName;->INFO_MY_LIKE:I

    if-ne v0, v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/InfoLikeFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->initReplaceContent(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 51
    :cond_2
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->type:I

    if-ne v0, v2, :cond_3

    .line 52
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u4f59\u989d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u660e\u7ec6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->initReplaceContent(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 55
    :cond_3
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->type:I

    sget v1, Lcom/wanduoduo/istatic/IConsName;->INFO_WATCH:I

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/InfoWatchFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->initReplaceContent(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f04002a

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->type:I

    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->initTitle()V

    .line 38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01ef

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/InfoUserBillDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_0
    return-void
.end method
