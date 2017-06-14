.class Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$1;
.super Ljava/lang/Object;
.source "OnLinePublishAppointmentActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->initData()V
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
    .line 161
    iput-object p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$1;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationSuccess(Lcom/baidu/location/BDLocation;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$1;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    #setter for: Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->lat:D
    invoke-static {v0, v2, v3}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->access$002(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;D)D

    .line 165
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$1;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    #setter for: Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->lng:D
    invoke-static {v0, v2, v3}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->access$102(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;D)D

    .line 166
    return-void
.end method
