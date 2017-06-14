.class public Lcom/wanduoduo/receiver/MessageNotificationReceiver;
.super Lio/rong/push/notification/PushMessageReceiver;
.source "MessageNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lio/rong/push/notification/PushMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationMessageArrived(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)Z
    .locals 1
    .parameter "context"
    .parameter "pushNotificationMessage"

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)Z
    .locals 1
    .parameter "context"
    .parameter "pushNotificationMessage"

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method
