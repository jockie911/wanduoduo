.class Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;
.super Ljava/lang/Object;
.source "LogInCompleteInfoActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    new-instance v1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1$1;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    const-class v3, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->finish()V

    .line 114
    return-void
.end method
