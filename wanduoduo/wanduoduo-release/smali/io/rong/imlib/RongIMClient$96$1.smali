.class Lio/rong/imlib/RongIMClient$96$1;
.super Lio/rong/imlib/IGetNotificationQuietHoursCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$96;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$96;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$96;)V
    .locals 0
    .parameter

    .prologue
    .line 5346
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$96$1;->this$1:Lio/rong/imlib/RongIMClient$96;

    invoke-direct {p0}, Lio/rong/imlib/IGetNotificationQuietHoursCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 5356
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$96$1;->this$1:Lio/rong/imlib/RongIMClient$96;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$96;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    if-eqz v0, :cond_0

    .line 5357
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$96$1;->this$1:Lio/rong/imlib/RongIMClient$96;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$96;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5359
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 1
    .parameter "startTime"
    .parameter "spanMin"

    .prologue
    .line 5349
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$96$1;->this$1:Lio/rong/imlib/RongIMClient$96;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$96;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    if-eqz v0, :cond_0

    .line 5350
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$96$1;->this$1:Lio/rong/imlib/RongIMClient$96;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$96;->val$callback:Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;->onSuccess(Ljava/lang/String;I)V

    .line 5352
    :cond_0
    return-void
.end method
