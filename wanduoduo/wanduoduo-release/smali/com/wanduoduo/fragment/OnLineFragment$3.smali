.class Lcom/wanduoduo/fragment/OnLineFragment$3;
.super Ljava/lang/Object;
.source "OnLineFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/OnLineFragment;->setSelfHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/OnLineFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/OnLineFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/wanduoduo/fragment/OnLineFragment$3;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 198
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$3;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/OnLineFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method
