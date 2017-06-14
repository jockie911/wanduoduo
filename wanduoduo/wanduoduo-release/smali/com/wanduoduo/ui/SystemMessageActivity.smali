.class public Lcom/wanduoduo/ui/SystemMessageActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SystemMessageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f04005c

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 27
    iget-object v1, p0, Lcom/wanduoduo/ui/SystemMessageActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u7cfb\u7edf\u6d88\u606f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/wanduoduo/ui/SystemMessageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e01e4

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 31
    .local v0, subFm:Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/wanduoduo/ui/SystemMessageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e00f0

    new-instance v3, Lcom/wanduoduo/fragment/info/SystemMessageFragment;

    invoke-direct {v3}, Lcom/wanduoduo/fragment/info/SystemMessageFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 32
    return-void
.end method
