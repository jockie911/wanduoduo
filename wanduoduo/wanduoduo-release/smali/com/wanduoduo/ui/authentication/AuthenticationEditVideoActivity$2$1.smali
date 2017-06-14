.class Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2$1;
.super Ljava/lang/Object;
.source "AuthenticationEditVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2$1;->this$1:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    const-string v0, "\u89c6\u9891\u5220\u9664\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2$1;->this$1:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2$1;->this$1:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;

    iget-object v2, v2, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    const-class v3, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
