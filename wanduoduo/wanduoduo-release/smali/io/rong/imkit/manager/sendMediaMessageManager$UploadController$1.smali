.class Lio/rong/imkit/manager/sendMediaMessageManager$UploadController$1;
.super Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
.source "sendMediaMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;


# direct methods
.method constructor <init>(Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController$1;->this$1:Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 191
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "message"
    .parameter "code"

    .prologue
    .line 195
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController$1;->this$1:Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;

    #calls: Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->polling()V
    invoke-static {v0}, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->access$200(Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;)V

    .line 196
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 0
    .parameter "message"
    .parameter "progress"

    .prologue
    .line 206
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 200
    iget-object v0, p0, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController$1;->this$1:Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;

    #calls: Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->polling()V
    invoke-static {v0}, Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;->access$200(Lio/rong/imkit/manager/sendMediaMessageManager$UploadController;)V

    .line 201
    return-void
.end method
