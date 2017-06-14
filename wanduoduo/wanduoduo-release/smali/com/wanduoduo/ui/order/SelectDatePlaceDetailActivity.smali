.class public Lcom/wanduoduo/ui/order/SelectDatePlaceDetailActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SelectDatePlaceDetailActivity.java"


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
    .line 10
    const v0, 0x7f040050

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SelectDatePlaceDetailActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u573a\u5730"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method
