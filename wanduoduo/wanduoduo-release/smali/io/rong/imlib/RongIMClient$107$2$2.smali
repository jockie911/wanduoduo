.class Lio/rong/imlib/RongIMClient$107$2$2;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$107$2;->onProgress(Lio/rong/imlib/model/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/rong/imlib/RongIMClient$107$2;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$107$2;Lio/rong/imlib/model/Message;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7792
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$107$2$2;->this$2:Lio/rong/imlib/RongIMClient$107$2;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$107$2$2;->val$message:Lio/rong/imlib/model/Message;

    iput p3, p0, Lio/rong/imlib/RongIMClient$107$2$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7795
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2$2;->this$2:Lio/rong/imlib/RongIMClient$107$2;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$107$2$2;->val$message:Lio/rong/imlib/model/Message;

    iget v2, p0, Lio/rong/imlib/RongIMClient$107$2$2;->val$progress:I

    invoke-interface {v0, v1, v2}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onProgress(Lio/rong/imlib/model/Message;I)V

    .line 7796
    return-void
.end method
