.class public Lcom/wanduoduo/ui/info/InfoWritingEvaluationCompleteActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoWritingEvaluationCompleteActivity.java"


# instance fields
.field civAvatar:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0122
        }
    .end annotation
.end field

.field tvNickname:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fa
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f040037

    return v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    .line 28
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationCompleteActivity;->tvTitle:Landroid/widget/TextView;

    const-string v4, "\u8bc4\u4ef7\u6210\u529f"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 30
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "nickname"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, nickname:Ljava/lang/String;
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationCompleteActivity;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "avatar"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, avatar:Ljava/lang/String;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationCompleteActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 34
    return-void
.end method
