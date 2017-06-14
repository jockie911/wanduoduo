.class Lio/rong/imlib/RongIMClient$101$1$5;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$101$1;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/rong/imlib/RongIMClient$101$1;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$101$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7214
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$101$1$5;->this$2:Lio/rong/imlib/RongIMClient$101$1;

    iput p2, p0, Lio/rong/imlib/RongIMClient$101$1$5;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7217
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$101$1$5;->this$2:Lio/rong/imlib/RongIMClient$101$1;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$101$1;->this$1:Lio/rong/imlib/RongIMClient$101;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$101;->val$listener:Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    iget v1, p0, Lio/rong/imlib/RongIMClient$101$1$5;->val$errorCode:I

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imlib/RongIMClient$RealTimeLocationListener;->onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 7218
    return-void
.end method
