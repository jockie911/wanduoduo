.class Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "PayOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/order/PayOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field private currentTimeMillis:J

.field private minTime:I

.field private remainTime:J

.field private secondTime:I

.field final synthetic this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/order/PayOrderActivity;J)V
    .locals 2
    .parameter
    .parameter "currentTimeMillis"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 224
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->time:J

    .line 230
    iput-wide p2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->currentTimeMillis:J

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 221
    iget v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->minTime:I

    return v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 221
    iget v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->secondTime:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 235
    iget-wide v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->currentTimeMillis:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->remainTime:J

    .line 236
    iget-wide v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->remainTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    iget-wide v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->remainTime:J

    div-long/2addr v0, v8

    div-long/2addr v0, v6

    long-to-int v0, v0

    iput v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->minTime:I

    .line 238
    iget-wide v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->remainTime:J

    div-long/2addr v0, v8

    rem-long/2addr v0, v6

    long-to-int v0, v0

    iput v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->secondTime:I

    .line 239
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/order/PayOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    :cond_0
    return-void
.end method
