.class public Lcom/wanduoduo/ui/Conversation1Activity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "Conversation1Activity.java"


# instance fields
.field private userNickName:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/Conversation1Activity;->userNickName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f040027

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/wanduoduo/ui/Conversation1Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/wanduoduo/ui/Conversation1Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "targetId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/Conversation1Activity;->user_id:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/wanduoduo/ui/Conversation1Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/Conversation1Activity;->userNickName:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/Conversation1Activity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/Conversation1Activity;->userNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method
