.class Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$3;
.super Ljava/lang/Object;
.source "LogInCompleteInfoActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 223
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$3;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 232
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$3;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    const/4 v1, 0x1

    #setter for: Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->isHavaAvatar:Z
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->access$002(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;Z)Z

    .line 227
    return-void
.end method
