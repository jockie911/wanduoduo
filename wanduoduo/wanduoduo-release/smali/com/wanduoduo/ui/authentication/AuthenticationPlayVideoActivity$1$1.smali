.class Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1$1;
.super Ljava/lang/Object;
.source "AuthenticationPlayVideoActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1$1;->this$1:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 85
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1$1;->this$1:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 80
    return-void
.end method
