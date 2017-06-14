.class Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;
.super Ljava/lang/Object;
.source "OnLinePublishAppointmentActivity.java"

# interfaces
.implements Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->setPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelect(Ljava/util/Date;)V
    .locals 6
    .parameter "date"

    .prologue
    .line 534
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 535
    .local v0, currentDate:J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 536
    const-string v2, "\u65e5\u671f\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    const-wide/16 v4, 0x0

    #setter for: Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->starttime:J
    invoke-static {v2, v4, v5}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->access$502(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;J)J

    .line 538
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvItemSelectTime:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    #setter for: Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->starttime:J
    invoke-static {v2, v4, v5}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->access$502(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;J)J

    .line 541
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvItemSelectTime:Landroid/widget/TextView;

    const-string v3, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
