.class Lcom/wanduoduo/ui/info/InfoVipActivity$1;
.super Ljava/lang/Object;
.source "InfoVipActivity.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoVipActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoVipActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoVipActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoVipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 4
    .parameter "data"
    .parameter "function"

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoVipActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoVipActivity;

    const-class v2, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "coin"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoVipActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoVipActivity;

    invoke-virtual {v2}, Lcom/wanduoduo/ui/info/InfoVipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "coin"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoVipActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoVipActivity;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/info/InfoVipActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method
