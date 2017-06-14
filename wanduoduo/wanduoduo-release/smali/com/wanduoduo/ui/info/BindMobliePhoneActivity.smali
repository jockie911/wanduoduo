.class public Lcom/wanduoduo/ui/info/BindMobliePhoneActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "BindMobliePhoneActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 11
    const v0, 0x7f040026

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wanduoduo/ui/info/BindMobliePhoneActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/BindMobliePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method
