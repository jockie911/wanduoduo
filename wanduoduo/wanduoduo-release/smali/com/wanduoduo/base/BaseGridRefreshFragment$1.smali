.class Lcom/wanduoduo/base/BaseGridRefreshFragment$1;
.super Landroid/os/Handler;
.source "BaseGridRefreshFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseGridRefreshFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseGridRefreshFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    iget-object v2, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    invoke-virtual {v2, v0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->parseData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->updateAdapter(Ljava/lang/Object;)V

    .line 77
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method
