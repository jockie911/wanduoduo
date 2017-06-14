.class Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$2;
.super Lcom/wanduoduo/widget/MyHandler;
.source "AuthenticationPlayVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$2;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 120
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 122
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 123
    const-string v1, "\u60a8\u7684\u89c6\u9891\u5df2\u6210\u529f\u63d0\u4ea4\u5ba1\u6838\uff0c\u6211\u4eec\u5c06\u572824\u5c0f\u65f6\u4e4b\u5185\u5ba1\u6838\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u3002"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$2;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    const-class v2, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v1, "path"

    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$2;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->access$100(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$2;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
