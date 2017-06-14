.class Lio/rong/imlib/stateMachine/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/stateMachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lio/rong/imlib/stateMachine/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 577
    const/16 v0, 0x14

    iput v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mMaxSize:I

    .line 578
    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mOldestIndex:I

    .line 579
    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mCount:I

    .line 580
    iput-boolean v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    .line 586
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/stateMachine/StateMachine$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 572
    invoke-direct {p0}, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lio/rong/imlib/stateMachine/StateMachine$LogRecords;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method declared-synchronized add(Lio/rong/imlib/stateMachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;)V
    .locals 8
    .parameter "sm"
    .parameter "msg"
    .parameter "messageInfo"
    .parameter "state"
    .parameter "orgState"
    .parameter "transToState"

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mCount:I

    .line 660
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mMaxSize:I

    if-ge v1, v2, :cond_0

    .line 661
    iget-object v7, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    new-instance v0, Lio/rong/imlib/stateMachine/StateMachine$LogRec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/stateMachine/StateMachine$LogRec;-><init>(Lio/rong/imlib/stateMachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :goto_0
    monitor-exit p0

    return-void

    .line 663
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/stateMachine/StateMachine$LogRec;

    .line 664
    .local v0, pmi:Lio/rong/imlib/stateMachine/StateMachine$LogRec;
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mOldestIndex:I

    .line 665
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mOldestIndex:I

    iget v2, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 666
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mOldestIndex:I

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 668
    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/stateMachine/StateMachine$LogRec;->update(Lio/rong/imlib/stateMachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;Lio/rong/imlib/stateMachine/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 659
    .end local v0           #pmi:Lio/rong/imlib/stateMachine/StateMachine$LogRec;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized cleanup()V
    .locals 1

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .locals 1

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Lio/rong/imlib/stateMachine/StateMachine$LogRec;
    .locals 2
    .parameter "index"

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mOldestIndex:I

    add-int v0, v1, p1

    .line 635
    .local v0, nextIndex:I
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v1, :cond_0

    .line 636
    iget v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mMaxSize:I

    sub-int/2addr v0, v1

    .line 638
    :cond_0
    invoke-virtual {p0}, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_1

    .line 639
    const/4 v1, 0x0

    .line 641
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/stateMachine/StateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 634
    .end local v0           #nextIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .locals 1

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLogOnlyTransitions(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    monitor-exit p0

    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mMaxSize:I

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mCount:I

    .line 596
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    monitor-exit p0

    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .locals 1

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/stateMachine/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
