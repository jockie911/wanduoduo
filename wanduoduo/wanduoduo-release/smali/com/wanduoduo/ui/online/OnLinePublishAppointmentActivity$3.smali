.class Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$3;
.super Lcom/wanduoduo/widget/MyHandler;
.source "OnLinePublishAppointmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$3;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 505
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 506
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$3;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    #calls: Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sendPubAppoint()V
    invoke-static {v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->access$300(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 509
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 510
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$3;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    #calls: Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->access$400(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;Ljava/lang/String;)Z

    .line 511
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$3;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->finish()V

    goto :goto_0
.end method
