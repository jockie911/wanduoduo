.class Lcom/wanduoduo/fragment/IndexFragment$2;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/IndexFragment;->initData()V
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
    .line 132
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment$2;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
    .locals 3
    .parameter "infoBean"

    .prologue
    const/4 v2, 0x1

    .line 135
    const-string v0, "1"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdentify_ok()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$2;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/IndexFragment;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u6280\u80fd\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$2;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/IndexFragment;->tvRightTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$2;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/IndexFragment;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u6210\u4e3a\u73a9\u5bb6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$2;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/IndexFragment;->tvRightTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
