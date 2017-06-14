.class Lio/rong/imlib/RongIMClient$101$1$3;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$101$1;->onParticipantsJoin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/rong/imlib/RongIMClient$101$1;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$101$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7190
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$101$1$3;->this$2:Lio/rong/imlib/RongIMClient$101$1;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$101$1$3;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7193
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$101$1$3;->this$2:Lio/rong/imlib/RongIMClient$101$1;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$101$1;->this$1:Lio/rong/imlib/RongIMClient$101;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$101;->val$listener:Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$101$1$3;->val$userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/rong/imlib/RongIMClient$RealTimeLocationListener;->onParticipantsJoin(Ljava/lang/String;)V

    .line 7194
    return-void
.end method
