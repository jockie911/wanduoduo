.class final Lio/rong/imlib/NativeClient$28;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$ExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lio/rong/imlib/NativeClient$ICodeListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient$ICodeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2250
    iput-object p1, p0, Lio/rong/imlib/NativeClient$28;->val$listener:Lio/rong/imlib/NativeClient$ICodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter "status"
    .parameter "desc"

    .prologue
    .line 2254
    iget-object v0, p0, Lio/rong/imlib/NativeClient$28;->val$listener:Lio/rong/imlib/NativeClient$ICodeListener;

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lio/rong/imlib/NativeClient$28;->val$listener:Lio/rong/imlib/NativeClient$ICodeListener;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$ICodeListener;->onChanged(I)V

    .line 2256
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lio/rong/imlib/NativeClient;->access$800()Lio/rong/imlib/NativeClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2257
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$800()Lio/rong/imlib/NativeClient;

    move-result-object v0

    #calls: Lio/rong/imlib/NativeClient;->stopCRHeartBeat()V
    invoke-static {v0}, Lio/rong/imlib/NativeClient;->access$900(Lio/rong/imlib/NativeClient;)V

    .line 2259
    :cond_1
    return-void
.end method
