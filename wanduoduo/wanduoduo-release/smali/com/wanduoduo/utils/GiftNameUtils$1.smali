.class final Lcom/wanduoduo/utils/GiftNameUtils$1;
.super Ljava/lang/Object;
.source "GiftNameUtils.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/utils/GiftNameUtils;->getTagName(Ljava/lang/String;Landroid/os/Handler;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$myHandler:Landroid/os/Handler;

.field final synthetic val$tagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wanduoduo/utils/GiftNameUtils$1;->val$tagId:Ljava/lang/String;

    iput-object p2, p0, Lcom/wanduoduo/utils/GiftNameUtils$1;->val$myHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 44
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 27
    const-class v4, Lcom/wanduoduo/bean/IndexTagListBean;

    invoke-static {p1, v4}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/IndexTagListBean;

    .line 28
    .local v2, indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;
    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexTagListBean;->getData()Lcom/wanduoduo/bean/IndexTagListBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    .line 29
    .local v0, dataListBean:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    .line 30
    .local v1, dataListChildBean:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/wanduoduo/utils/GiftNameUtils$1;->val$tagId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 31
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 32
    .local v3, obtain:Landroid/os/Message;
    const/16 v4, 0x22b8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 33
    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    iget-object v4, p0, Lcom/wanduoduo/utils/GiftNameUtils$1;->val$myHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .end local v0           #dataListBean:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;
    .end local v1           #dataListChildBean:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
    .end local v3           #obtain:Landroid/os/Message;
    :cond_2
    return-void
.end method
