.class Lio/rong/imlib/IRongCallback$MediaMessageUploader$1;
.super Ljava/lang/Object;
.source "IRongCallback.java"

# interfaces
.implements Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/IRongCallback$MediaMessageUploader;->success(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/IRongCallback$MediaMessageUploader;


# direct methods
.method constructor <init>(Lio/rong/imlib/IRongCallback$MediaMessageUploader;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lio/rong/imlib/IRongCallback$MediaMessageUploader$1;->this$0:Lio/rong/imlib/IRongCallback$MediaMessageUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 127
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 137
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 0
    .parameter "message"
    .parameter "progress"

    .prologue
    .line 122
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 132
    return-void
.end method
