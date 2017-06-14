.class Lcom/wanduoduo/ui/login/LogInActivity$2$1;
.super Ljava/lang/Object;
.source "LogInActivity.java"

# interfaces
.implements Lio/rong/imkit/RongIM$UserInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInActivity$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/login/LogInActivity$2;

.field final synthetic val$userid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInActivity$2$1;->this$1:Lcom/wanduoduo/ui/login/LogInActivity$2;

    iput-object p2, p0, Lcom/wanduoduo/ui/login/LogInActivity$2$1;->val$userid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
    .locals 4
    .parameter "s"

    .prologue
    .line 218
    new-instance v0, Lio/rong/imlib/model/UserInfo;

    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInActivity$2$1;->val$userid:Ljava/lang/String;

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInActivity$2$1;->this$1:Lcom/wanduoduo/ui/login/LogInActivity$2;

    iget-object v2, v2, Lcom/wanduoduo/ui/login/LogInActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInActivity;->nicknam:Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInActivity;->access$100(Lcom/wanduoduo/ui/login/LogInActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInActivity$2$1;->this$1:Lcom/wanduoduo/ui/login/LogInActivity$2;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInActivity;->avatar:Ljava/lang/String;
    invoke-static {v3}, Lcom/wanduoduo/ui/login/LogInActivity;->access$000(Lcom/wanduoduo/ui/login/LogInActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method
