.class Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;
.super Lio/rong/imlib/stateMachine/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/stateMachine/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/stateMachine/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;->this$0:Lio/rong/imlib/stateMachine/StateMachine$SmHandler;

    invoke-direct {p0}, Lio/rong/imlib/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/stateMachine/StateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;-><init>(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method