.class public Lcom/wanduoduo/ui/index/DetailWebViewActivity;
.super Lcom/wanduoduo/base/BaseWebViewActivity;
.source "DetailWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 5

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/DetailWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 14
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/DetailWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/index/DetailWebViewActivity;->setURL(Ljava/lang/String;)V

    .line 30
    invoke-super {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->initData()V

    .line 31
    return-void

    .line 16
    .end local v1           #url:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/wanduoduo/ui/index/DetailWebViewActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u73a9\u591a\u591a\u5e73\u53f0\u884c\u4e3a\u89c4\u8303"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 19
    :pswitch_1
    iget-object v2, p0, Lcom/wanduoduo/ui/index/DetailWebViewActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u670d\u52a1\u6559\u7a0b"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 22
    :pswitch_2
    iget-object v2, p0, Lcom/wanduoduo/ui/index/DetailWebViewActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u7ea6\u73a9\u8bf4\u660e\u793a\u4f8b"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :pswitch_3
    iget-object v2, p0, Lcom/wanduoduo/ui/index/DetailWebViewActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u9884\u7ea6\u534f\u8bae"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
