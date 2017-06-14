.class public Lcom/wanduoduo/ui/info/InfoSettingPsdActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoSettingPsdActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f040032

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 17
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoSettingPsdActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoSettingPsdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
