.class Lio/rong/imlib/NativeClient$38;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$SetBlacklistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->getBlacklist(Lio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2637
    iput-object p1, p0, Lio/rong/imlib/NativeClient$38;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$38;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 2654
    iget-object v0, p0, Lio/rong/imlib/NativeClient$38;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v0, :cond_0

    .line 2655
    iget-object v0, p0, Lio/rong/imlib/NativeClient$38;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    .line 2657
    :cond_0
    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "userIds"

    .prologue
    .line 2641
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2642
    iget-object v0, p0, Lio/rong/imlib/NativeClient$38;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lio/rong/imlib/NativeClient$38;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 2650
    :cond_0
    :goto_0
    return-void

    .line 2646
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient$38;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lio/rong/imlib/NativeClient$38;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
