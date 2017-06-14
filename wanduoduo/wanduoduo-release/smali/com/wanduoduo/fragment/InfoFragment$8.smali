.class Lcom/wanduoduo/fragment/InfoFragment$8;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/InfoFragment;->userAvatartUpLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/InfoFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/InfoFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment$8;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 409
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment$8;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/InfoFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 404
    return-void
.end method
