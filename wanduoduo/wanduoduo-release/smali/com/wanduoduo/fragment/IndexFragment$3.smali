.class Lcom/wanduoduo/fragment/IndexFragment$3;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/IndexFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/IndexFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment$3;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
    .locals 4
    .parameter "infoBean"

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$3;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/IndexFragment$3;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wanduoduo/fragment/IndexFragment;->access$100(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->startActivity(Landroid/content/Intent;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$3;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/IndexFragment$3;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wanduoduo/fragment/IndexFragment;->access$200(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
