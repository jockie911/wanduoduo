.class Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "LogInFindPsdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInFindPsdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 202
    :sswitch_0
    const-string v0, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->type:I
    invoke-static {v0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->access$200(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    const-class v3, Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->finish()V

    goto :goto_0

    .line 209
    :sswitch_1
    const-string v0, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :sswitch_2
    const-string v0, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :sswitch_3
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
