.class Lio/rong/imlib/RongIMClient$ConnectRunnable;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectRunnable"
.end annotation


# instance fields
.field connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)V
    .locals 0
    .parameter "token"
    .parameter "connectCallback"

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$ConnectRunnable;->token:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lio/rong/imlib/RongIMClient$ConnectRunnable;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    .line 234
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "RongIMClient"

    const-string v1, "ConnectRunnable do connect!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$ConnectRunnable;->token:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$ConnectRunnable;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;

    .line 240
    return-void
.end method
