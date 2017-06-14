.class Lcom/wanduoduo/base/BaseListRefreshFragment$2;
.super Ljava/lang/Object;
.source "BaseListRefreshFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseListRefreshFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseListRefreshFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$2;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 125
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$2;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-boolean v0, v0, Lcom/wanduoduo/base/BaseListRefreshFragment;->isRefreshData:Z

    if-eqz v0, :cond_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$2;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    #calls: Lcom/wanduoduo/base/BaseListRefreshFragment;->getData(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->access$200(Lcom/wanduoduo/base/BaseListRefreshFragment;Ljava/lang/String;)V

    .line 120
    return-void
.end method
