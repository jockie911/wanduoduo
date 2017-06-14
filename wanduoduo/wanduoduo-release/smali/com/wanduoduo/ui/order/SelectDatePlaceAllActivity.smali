.class public Lcom/wanduoduo/ui/order/SelectDatePlaceAllActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SelectDatePlaceAllActivity.java"


# instance fields
.field selectPlaceAllFragment:Lcom/wanduoduo/fragment/order/SelectDataPlaceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f04004f

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SelectDatePlaceAllActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u573a\u5730"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SelectDatePlaceAllActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e01ce

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/fragment/order/SelectDataPlaceFragment;

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SelectDatePlaceAllActivity;->selectPlaceAllFragment:Lcom/wanduoduo/fragment/order/SelectDataPlaceFragment;

    .line 21
    return-void
.end method
