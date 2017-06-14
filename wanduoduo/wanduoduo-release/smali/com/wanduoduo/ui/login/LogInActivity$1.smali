.class Lcom/wanduoduo/ui/login/LogInActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "LogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 148
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 153
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, errMsg:Ljava/lang/String;
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 155
    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
