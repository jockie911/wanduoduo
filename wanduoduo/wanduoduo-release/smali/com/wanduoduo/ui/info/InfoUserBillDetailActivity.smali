.class public Lcom/wanduoduo/ui/info/InfoUserBillDetailActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoUserBillDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f040033

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoUserBillDetailActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u660e\u7ec6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoUserBillDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 20
    return-void
.end method
