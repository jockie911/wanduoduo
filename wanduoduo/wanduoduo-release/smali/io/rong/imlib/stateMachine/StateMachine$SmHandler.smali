.class Lio/rong/imlib/stateMachine/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/stateMachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;,
        Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;,
        Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lio/rong/imlib/stateMachine/State;

.field private mHaltingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lio/rong/imlib/stateMachine/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;

.field private mSm:Lio/rong/imlib/stateMachine/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lio/rong/imlib/stateMachine/State;",
            "Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 682
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lio/rong/imlib/stateMachine/StateMachine;)V
    .locals 2
    .parameter "looper"
    .parameter "sm"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1170
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 676
    iput-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mHasQuit:Z

    .line 679
    iput-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    .line 688
    new-instance v0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

    invoke-direct {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;-><init>(Lio/rong/imlib/stateMachine/StateMachine$1;)V

    iput-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mLogRecords:Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

    .line 697
    const/4 v0, -0x1

    iput v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 706
    new-instance v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;-><init>(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/stateMachine/StateMachine$1;)V

    iput-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mHaltingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;

    .line 709
    new-instance v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;-><init>(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/stateMachine/StateMachine$1;)V

    iput-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mQuittingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;

    .line 739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1171
    iput-object p2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    .line 1173
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mHaltingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->addState(Lio/rong/imlib/stateMachine/State;Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1174
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mQuittingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->addState(Lio/rong/imlib/stateMachine/State;Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1175
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lio/rong/imlib/stateMachine/StateMachine;Lio/rong/imlib/stateMachine/StateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 673
    invoke-direct {p0, p1, p2}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lio/rong/imlib/stateMachine/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Lio/rong/imlib/stateMachine/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->getCurrentState()Lio/rong/imlib/stateMachine/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mHaltingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1400(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic access$1600(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Lio/rong/imlib/stateMachine/StateMachine$LogRecords;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mLogRecords:Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

    return-object v0
.end method

.method static synthetic access$1800(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    iget v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    return v0
.end method

.method static synthetic access$2000(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Lio/rong/imlib/stateMachine/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    return-object v0
.end method

.method static synthetic access$2100(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$2300(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static synthetic access$2400(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2600(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$300(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Lio/rong/imlib/stateMachine/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/stateMachine/State;Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 673
    invoke-direct {p0, p1, p2}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->addState(Lio/rong/imlib/stateMachine/State;Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/stateMachine/State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->setInitialState(Lio/rong/imlib/stateMachine/State;)V

    return-void
.end method

.method private final addState(Lio/rong/imlib/stateMachine/State;Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .locals 6
    .parameter "state"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 1133
    iget-boolean v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    .line 1134
    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: E state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",parent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1137
    :cond_0
    const/4 v0, 0x0

    .line 1138
    .local v0, parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    if-eqz p2, :cond_1

    .line 1139
    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    check-cast v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1140
    .restart local v0       #parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    if-nez v0, :cond_1

    .line 1142
    invoke-direct {p0, p2, v5}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->addState(Lio/rong/imlib/stateMachine/State;Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 1145
    :cond_1
    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1146
    .local v1, stateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    if-nez v1, :cond_2

    .line 1147
    new-instance v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .end local v1           #stateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;-><init>(Lio/rong/imlib/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/stateMachine/StateMachine$1;)V

    .line 1148
    .restart local v1       #stateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_2
    iget-object v2, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    if-eq v2, v0, :cond_4

    .line 1154
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1134
    .end local v0           #parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .end local v1           #stateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    :cond_3
    invoke-virtual {p2}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1156
    .restart local v0       #parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .restart local v1       #stateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    :cond_4
    iput-object p1, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    .line 1157
    iput-object v0, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1158
    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1159
    iget-boolean v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1160
    :cond_5
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 900
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    #getter for: Lio/rong/imlib/stateMachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lio/rong/imlib/stateMachine/StateMachine;->access$400(Lio/rong/imlib/stateMachine/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 903
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    #setter for: Lio/rong/imlib/stateMachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->access$402(Lio/rong/imlib/stateMachine/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 906
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    #setter for: Lio/rong/imlib/stateMachine/StateMachine;->mSmHandler:Lio/rong/imlib/stateMachine/StateMachine$SmHandler;
    invoke-static {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->access$502(Lio/rong/imlib/stateMachine/StateMachine;Lio/rong/imlib/stateMachine/StateMachine$SmHandler;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler;

    .line 907
    iput-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    .line 908
    iput-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 909
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mLogRecords:Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

    invoke-virtual {v0}, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->cleanup()V

    .line 910
    iput-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 911
    iput-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 912
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 913
    iput-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mInitialState:Lio/rong/imlib/stateMachine/State;

    .line 914
    iput-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    .line 915
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mHasQuit:Z

    .line 917
    return-void
.end method

.method private final completeConstruction()V
    .locals 8

    .prologue
    .line 923
    iget-boolean v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    const-string v6, "completeConstruction: E"

    invoke-virtual {v5, v6}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 929
    :cond_0
    const/4 v3, 0x0

    .line 930
    .local v3, maxDepth:I
    iget-object v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 931
    .local v4, si:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    const/4 v0, 0x0

    .line 932
    .local v0, depth:I
    move-object v1, v4

    .local v1, i:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    :goto_1
    if-eqz v1, :cond_2

    .line 933
    iget-object v1, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 932
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 935
    :cond_2
    if-ge v3, v0, :cond_1

    .line 936
    move v3, v0

    goto :goto_0

    .line 939
    .end local v0           #depth:I
    .end local v1           #i:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .end local v4           #si:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    :cond_3
    iget-boolean v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeConstruction: maxDepth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 941
    :cond_4
    new-array v5, v3, [Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 942
    new-array v5, v3, [Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 943
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->setupInitialStateStack()V

    .line 946
    const/4 v5, -0x2

    sget-object v6, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 948
    iget-boolean v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    const-string v6, "completeConstruction: X"

    invoke-virtual {v5, v6}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 949
    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1191
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1195
    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1197
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lio/rong/imlib/stateMachine/IState;
    .locals 2

    .prologue
    .line 1120
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4
    .parameter "stateStackEnteringIndex"

    .prologue
    .line 1005
    move v0, p1

    .local v0, i:I
    :goto_0
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_1

    .line 1006
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v3}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1007
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v1}, Lio/rong/imlib/stateMachine/State;->enter()V

    .line 1008
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;)V
    .locals 4
    .parameter "commonStateInfo"

    .prologue
    .line 992
    :goto_0
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_1

    .line 993
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    .line 994
    .local v0, curState:Lio/rong/imlib/stateMachine/State;
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 995
    :cond_0
    invoke-virtual {v0}, Lio/rong/imlib/stateMachine/State;->exit()V

    .line 996
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 997
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .line 999
    .end local v0           #curState:Lio/rong/imlib/stateMachine/State;
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .prologue
    .line 1219
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 1214
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .prologue
    .line 1022
    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1023
    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1024
    .local v0, curMsg:Landroid/os/Message;
    iget-boolean v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1025
    :cond_0
    invoke-virtual {p0, v0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1022
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1027
    .end local v0           #curMsg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1028
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    .prologue
    .line 1038
    iget v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 1039
    .local v2, startingIndex:I
    iget v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v0, v3, -0x1

    .line 1040
    .local v0, i:I
    move v1, v2

    .line 1041
    .local v1, j:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1042
    iget-boolean v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1043
    :cond_0
    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 1044
    add-int/lit8 v1, v1, 0x1

    .line 1045
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1048
    :cond_1
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1049
    iget-boolean v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_2

    .line 1050
    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v6, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v5}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1054
    :cond_2
    return v2
.end method

.method private performTransitions(Lio/rong/imlib/stateMachine/State;Landroid/os/Message;)V
    .locals 11
    .parameter "msgProcessedState"
    .parameter "msg"

    .prologue
    .line 816
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v5, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    .line 823
    .local v5, orgState:Lio/rong/imlib/stateMachine/State;
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    const/4 v9, 0x1

    .line 825
    .local v9, recordLogMsg:Z
    :goto_0
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mLogRecords:Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

    invoke-virtual {v0}, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 827
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mLogRecords:Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    iget-object v4, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lio/rong/imlib/stateMachine/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->add(Lio/rong/imlib/stateMachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;)V

    .line 837
    :cond_0
    :goto_1
    iget-object v8, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    .line 838
    .local v8, destState:Lio/rong/imlib/stateMachine/State;
    if-eqz v8, :cond_5

    .line 843
    :goto_2
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    const-string v1, "handleMessage: new destination call exit/enter"

    invoke-virtual {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 850
    :cond_1
    invoke-direct {p0, v8}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    move-result-object v7

    .line 851
    .local v7, commonStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    invoke-direct {p0, v7}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->invokeExitMethods(Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;)V

    .line 852
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v10

    .line 853
    .local v10, stateStackEnteringIndex:I
    invoke-direct {p0, v10}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 861
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 863
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    if-eq v8, v0, :cond_4

    .line 865
    iget-object v8, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    .line 870
    goto :goto_2

    .line 823
    .end local v7           #commonStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .end local v8           #destState:Lio/rong/imlib/stateMachine/State;
    .end local v9           #recordLogMsg:Z
    .end local v10           #stateStackEnteringIndex:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 831
    .restart local v9       #recordLogMsg:Z
    :cond_3
    if-eqz v9, :cond_0

    .line 833
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mLogRecords:Lio/rong/imlib/stateMachine/StateMachine$LogRecords;

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    iget-object v4, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lio/rong/imlib/stateMachine/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->add(Lio/rong/imlib/stateMachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;)V

    goto :goto_1

    .line 871
    .restart local v7       #commonStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .restart local v8       #destState:Lio/rong/imlib/stateMachine/State;
    .restart local v10       #stateStackEnteringIndex:I
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    .line 878
    .end local v7           #commonStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .end local v10           #stateStackEnteringIndex:I
    :cond_5
    if-eqz v8, :cond_6

    .line 879
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mQuittingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;

    if-ne v8, v0, :cond_7

    .line 883
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    invoke-virtual {v0}, Lio/rong/imlib/stateMachine/StateMachine;->onQuitting()V

    .line 884
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->cleanupAfterQuitting()V

    .line 894
    :cond_6
    :goto_3
    return-void

    .line 885
    :cond_7
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mHaltingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$HaltingState;

    if-ne v8, v0, :cond_6

    .line 891
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    invoke-virtual {v0}, Lio/rong/imlib/stateMachine/StateMachine;->onHalting()V

    goto :goto_3
.end method

.method private final processMsg(Landroid/os/Message;)Lio/rong/imlib/stateMachine/State;
    .locals 4
    .parameter "msg"

    .prologue
    .line 958
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v1, v2

    .line 959
    .local v0, curStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v3}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 963
    :cond_0
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mQuittingState:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V

    .line 983
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    :goto_1
    return-object v1

    .line 978
    :cond_2
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_3

    .line 979
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v3}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 966
    :cond_3
    iget-object v1, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->state:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v1, p1}, Lio/rong/imlib/stateMachine/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 970
    iget-object v0, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 971
    if-nez v0, :cond_2

    .line 975
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    invoke-virtual {v1, p1}, Lio/rong/imlib/stateMachine/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 983
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final quit()V
    .locals 2

    .prologue
    .line 1202
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1203
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1204
    return-void
.end method

.method private final quitNow()V
    .locals 2

    .prologue
    .line 1208
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1209
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1210
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0
    .parameter "dbg"

    .prologue
    .line 1224
    iput-boolean p1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    .line 1225
    return-void
.end method

.method private final setInitialState(Lio/rong/imlib/stateMachine/State;)V
    .locals 3
    .parameter "initialState"

    .prologue
    .line 1179
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1180
    :cond_0
    iput-object p1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mInitialState:Lio/rong/imlib/stateMachine/State;

    .line 1181
    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 4

    .prologue
    .line 1093
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mInitialState:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v3}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1097
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mInitialState:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1098
    .local v0, curStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_0
    if-eqz v0, :cond_1

    .line 1099
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1100
    iget-object v0, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1098
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_0

    .line 1104
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1106
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    .line 1107
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lio/rong/imlib/stateMachine/State;)Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    .locals 4
    .parameter "destState"

    .prologue
    .line 1075
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1076
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1078
    .local v0, curStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStack:[Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1079
    iget-object v0, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;

    .line 1080
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    .line 1082
    :cond_1
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 1083
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1086
    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    .locals 3
    .parameter "destState"

    .prologue
    .line 1185
    check-cast p1, Lio/rong/imlib/stateMachine/State;

    .end local p1
    iput-object p1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    .line 1186
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo: destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDestState:Lio/rong/imlib/stateMachine/State;

    invoke-virtual {v2}, Lio/rong/imlib/stateMachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1187
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 779
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v1, :cond_1

    .line 780
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: E msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 783
    :cond_0
    iput-object p1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, msgProcessedState:Lio/rong/imlib/stateMachine/State;
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-eqz v1, :cond_2

    .line 789
    invoke-direct {p0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lio/rong/imlib/stateMachine/State;

    move-result-object v0

    .line 799
    :goto_0
    invoke-direct {p0, v0, p1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->performTransitions(Lio/rong/imlib/stateMachine/State;Landroid/os/Message;)V

    .line 802
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSm:Lio/rong/imlib/stateMachine/StateMachine;

    const-string v2, "handleMessage: X"

    invoke-virtual {v1, v2}, Lio/rong/imlib/stateMachine/StateMachine;->log(Ljava/lang/String;)V

    .line 804
    .end local v0           #msgProcessedState:Lio/rong/imlib/stateMachine/State;
    :cond_1
    return-void

    .line 790
    .restart local v0       #msgProcessedState:Lio/rong/imlib/stateMachine/State;
    :cond_2
    iget-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    .line 793
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    .line 794
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/rong/imlib/stateMachine/StateMachine$SmHandler;->invokeEnterMethods(I)V

    goto :goto_0

    .line 796
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
