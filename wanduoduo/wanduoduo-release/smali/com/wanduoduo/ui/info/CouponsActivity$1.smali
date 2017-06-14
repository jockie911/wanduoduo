.class Lcom/wanduoduo/ui/info/CouponsActivity$1;
.super Ljava/lang/Object;
.source "CouponsActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/CouponsActivity;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/CouponsActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/CouponsActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1;->this$0:Lcom/wanduoduo/ui/info/CouponsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1;->this$0:Lcom/wanduoduo/ui/info/CouponsActivity;

    new-instance v1, Lcom/wanduoduo/ui/info/CouponsActivity$1$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/CouponsActivity$1$2;-><init>(Lcom/wanduoduo/ui/info/CouponsActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/CouponsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1;->this$0:Lcom/wanduoduo/ui/info/CouponsActivity;

    new-instance v1, Lcom/wanduoduo/ui/info/CouponsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/info/CouponsActivity$1$1;-><init>(Lcom/wanduoduo/ui/info/CouponsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/CouponsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
