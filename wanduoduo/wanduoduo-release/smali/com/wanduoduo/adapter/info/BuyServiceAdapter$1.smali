.class Lcom/wanduoduo/adapter/info/BuyServiceAdapter$1;
.super Landroid/os/Handler;
.source "BuyServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/info/BuyServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$1;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 324
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    .local v0, position:I
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$1;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->setOrder_status(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$1;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->notifyDataSetChanged()V

    .line 329
    .end local v0           #position:I
    :cond_0
    return-void
.end method
