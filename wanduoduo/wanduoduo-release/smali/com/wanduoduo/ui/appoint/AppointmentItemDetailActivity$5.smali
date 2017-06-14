.class Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$5;
.super Lcom/wanduoduo/widget/MyHandler;
.source "AppointmentItemDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$5;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$5;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    #calls: Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->dealWithData()V
    invoke-static {v0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->access$400(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    .line 226
    :cond_0
    return-void
.end method
