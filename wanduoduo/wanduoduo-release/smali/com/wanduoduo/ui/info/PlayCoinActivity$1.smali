.class Lcom/wanduoduo/ui/info/PlayCoinActivity$1;
.super Ljava/lang/Object;
.source "PlayCoinActivity.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/PlayCoinActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/PlayCoinActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/PlayCoinActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/wanduoduo/ui/info/PlayCoinActivity$1;->this$0:Lcom/wanduoduo/ui/info/PlayCoinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 3
    .parameter "data"
    .parameter "function"

    .prologue
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/PlayCoinActivity$1;->this$0:Lcom/wanduoduo/ui/info/PlayCoinActivity;

    const-class v2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Lcom/wanduoduo/ui/info/PlayCoinActivity$1;->this$0:Lcom/wanduoduo/ui/info/PlayCoinActivity;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/info/PlayCoinActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
