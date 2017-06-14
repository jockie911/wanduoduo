.class public Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoZFAnquanActivity.java"


# instance fields
.field private TYPE_NEW:I

.field private TYPE_OLD:I

.field relChangePsd:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e012a
        }
    .end annotation
.end field

.field relForgetPsd:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e012b
        }
    .end annotation
.end field

.field relSetPsd:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0129
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->TYPE_NEW:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->TYPE_OLD:I

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f040038

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->type:I

    .line 37
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->type:I

    iget v1, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->TYPE_NEW:I

    if-ne v0, v1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relSetPsd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->type:I

    iget v1, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->TYPE_OLD:I

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relChangePsd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relForgetPsd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0129,
            0x7f0e012a,
            0x7f0e012b
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-void

    .line 50
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/InfoSettingPsdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f0e0129
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
