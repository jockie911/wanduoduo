.class Lio/rong/imlib/statistics/Statistics$1;
.super Ljava/lang/Object;
.source "Statistics.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/statistics/Statistics;->enableCrashReporting()Lio/rong/imlib/statistics/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/statistics/Statistics;

.field final synthetic val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lio/rong/imlib/statistics/Statistics;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lio/rong/imlib/statistics/Statistics$1;->this$0:Lio/rong/imlib/statistics/Statistics;

    iput-object p2, p0, Lio/rong/imlib/statistics/Statistics$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"
    .parameter "e"

    .prologue
    .line 626
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 627
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 628
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 629
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics$1;->this$0:Lio/rong/imlib/statistics/Statistics;

    #getter for: Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;
    invoke-static {v2}, Lio/rong/imlib/statistics/Statistics;->access$000(Lio/rong/imlib/statistics/Statistics;)Lio/rong/imlib/statistics/ConnectionQueue;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/rong/imlib/statistics/ConnectionQueue;->sendCrashReport(Ljava/lang/String;Z)V

    .line 632
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics$1;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 636
    :cond_0
    return-void
.end method
