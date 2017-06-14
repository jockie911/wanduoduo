.class Lio/rong/imlib/NativeClient$32;
.super Ljava/util/TimerTask;
.source "NativeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->startCRHeartBeatIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;)V
    .locals 0
    .parameter

    .prologue
    .line 2372
    iput-object p1, p0, Lio/rong/imlib/NativeClient$32;->this$0:Lio/rong/imlib/NativeClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2375
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0}, Lio/rong/imlib/NativeObject;->ping()V

    .line 2376
    const-string v0, "NativeClient"

    const-string v1, "-heart beat-"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    return-void
.end method
