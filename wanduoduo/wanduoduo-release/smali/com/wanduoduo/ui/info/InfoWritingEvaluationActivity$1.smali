.class Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$1;
.super Ljava/lang/Object;
.source "InfoWritingEvaluationActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 81
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    const-class v2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationCompleteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->finish()V

    .line 77
    return-void
.end method
