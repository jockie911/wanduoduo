.class Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$1;
.super Ljava/lang/Object;
.source "InfoVipChongZhiActivity.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 4
    .parameter "data"
    .parameter "function"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    const-class v3, Lcom/wanduoduo/ui/info/InfoVipActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
