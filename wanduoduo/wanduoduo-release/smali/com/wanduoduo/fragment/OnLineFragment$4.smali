.class Lcom/wanduoduo/fragment/OnLineFragment$4;
.super Ljava/lang/Object;
.source "OnLineFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/OnLineFragment;->sendRocket()V
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
    .line 213
    iput-object p1, p0, Lcom/wanduoduo/fragment/OnLineFragment$4;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 223
    .local v0, obtain:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 224
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$4;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$4;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/OnLineFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 217
    return-void
.end method
