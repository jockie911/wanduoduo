.class Lcom/wanduoduo/fragment/OnLineFragment$1;
.super Ljava/lang/Object;
.source "OnLineFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/OnLineFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/OnLineFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/OnLineFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wanduoduo/fragment/OnLineFragment$1;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
    .locals 3
    .parameter "infoBean"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$1;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    const-string v0, "0"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIs_hide()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z
    invoke-static {v1, v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$002(Lcom/wanduoduo/fragment/OnLineFragment;Z)Z

    .line 98
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$1;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$000(Lcom/wanduoduo/fragment/OnLineFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$1;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/OnLineFragment;->ivInvisable:Landroid/widget/ImageView;

    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :goto_1
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$1;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/OnLineFragment;->ivInvisable:Landroid/widget/ImageView;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
