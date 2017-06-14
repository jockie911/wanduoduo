.class public Lu/aly/ae$a;
.super Ljava/lang/Object;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lu/aly/ae;

.field private b:Lcom/umeng/analytics/ReportPolicy$i;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lu/aly/ae;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 448
    iput-object p1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput v1, p0, Lu/aly/ae$a;->c:I

    .line 443
    iput v1, p0, Lu/aly/ae$a;->d:I

    .line 445
    iput v1, p0, Lu/aly/ae$a;->e:I

    .line 446
    iput v1, p0, Lu/aly/ae$a;->f:I

    .line 449
    invoke-static {p1}, Lu/aly/ae;->a(Lu/aly/ae;)Lu/aly/x$a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lu/aly/x$a;->a(II)[I

    move-result-object v0

    .line 450
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/ae$a;->c:I

    .line 451
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/ae$a;->d:I

    .line 452
    return-void
.end method

.method private b(II)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 517
    .line 519
    packed-switch p1, :pswitch_data_0

    .line 547
    :pswitch_0
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 551
    :goto_0
    return-object v0

    .line 521
    :pswitch_1
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto :goto_0

    .line 524
    :pswitch_2
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$e;

    if-eqz v0, :cond_1

    .line 525
    iget-object v1, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    move-object v0, v1

    .line 526
    check-cast v0, Lcom/umeng/analytics/ReportPolicy$e;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;->a(J)V

    move-object v0, v1

    goto :goto_0

    .line 528
    :cond_1
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$e;

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->c(Lu/aly/ae;)Lu/aly/at;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;-><init>(Lu/aly/at;J)V

    goto :goto_0

    .line 532
    :pswitch_3
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$g;

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    .line 533
    invoke-static {v1}, Lu/aly/ae;->c(Lu/aly/ae;)Lu/aly/at;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$g;-><init>(Lu/aly/at;)V

    goto :goto_0

    .line 536
    :pswitch_4
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$h;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$h;-><init>()V

    goto :goto_0

    .line 539
    :pswitch_5
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$j;

    .line 540
    invoke-static {}, Lu/aly/ae;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 543
    :pswitch_6
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$k;

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    .line 544
    invoke-static {v1}, Lu/aly/ae;->c(Lu/aly/ae;)Lu/aly/at;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$k;-><init>(Lu/aly/at;)V

    goto :goto_0

    .line 547
    :cond_6
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    iput p1, p0, Lu/aly/ae$a;->e:I

    .line 556
    iput p2, p0, Lu/aly/ae$a;->f:I

    .line 557
    return-void
.end method

.method public a(Lu/aly/x$a;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 560
    invoke-virtual {p1, v0, v0}, Lu/aly/x$a;->a(II)[I

    move-result-object v0

    .line 561
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/ae$a;->c:I

    .line 562
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/ae$a;->d:I

    .line 563
    return-void
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 458
    iget-object v2, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v2}, Lu/aly/ae;->b(Lu/aly/ae;)Lu/aly/ay;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/ay;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    iget-object v2, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    :goto_1
    iput-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 502
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v0

    .line 460
    goto :goto_0

    .line 461
    :cond_2
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$b;

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->c(Lu/aly/ae;)Lu/aly/at;

    move-result-object v1

    iget-object v2, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v2}, Lu/aly/ae;->b(Lu/aly/ae;)Lu/aly/ay;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/ReportPolicy$b;-><init>(Lu/aly/at;Lu/aly/ay;)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v2, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 464
    :goto_3
    if-nez v1, :cond_0

    .line 465
    if-eqz p1, :cond_5

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->d(Lu/aly/ae;)Lu/aly/az;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/az;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 466
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$c;

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->d(Lu/aly/ae;)Lu/aly/az;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/az;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$c;-><init>(I)V

    iput-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 467
    iget-object v0, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->d(Lu/aly/ae;)Lu/aly/az;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/az;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lu/aly/ae;->a(Lu/aly/ae;I)V

    goto :goto_2

    :cond_4
    move v1, v0

    .line 463
    goto :goto_3

    .line 470
    :cond_5
    sget-boolean v1, Lu/aly/bm;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->a(Lu/aly/ae;)Lu/aly/x$a;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/x$a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 471
    const-string v0, "Debug: send log every 15 seconds"

    invoke-static {v0}, Lu/aly/bm;->b(Ljava/lang/String;)V

    .line 472
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$a;

    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->c(Lu/aly/ae;)Lu/aly/at;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$a;-><init>(Lu/aly/at;)V

    iput-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_2

    .line 473
    :cond_6
    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->e(Lu/aly/ae;)Lu/aly/ax;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ax;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 474
    const-string v1, "Start A/B Test"

    invoke-static {v1}, Lu/aly/bm;->b(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->e(Lu/aly/ae;)Lu/aly/ax;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ax;->b()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 477
    iget-object v0, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v0}, Lu/aly/ae;->a(Lu/aly/ae;)Lu/aly/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x$a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    iget-object v0, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v0}, Lu/aly/ae;->a(Lu/aly/ae;)Lu/aly/x$a;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lu/aly/x$a;->d(I)I

    move-result v0

    .line 485
    :cond_7
    :goto_4
    iget-object v1, p0, Lu/aly/ae$a;->a:Lu/aly/ae;

    invoke-static {v1}, Lu/aly/ae;->e(Lu/aly/ae;)Lu/aly/ax;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ax;->b()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lu/aly/ae$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2

    .line 479
    :cond_8
    iget v0, p0, Lu/aly/ae$a;->d:I

    if-lez v0, :cond_9

    .line 480
    iget v0, p0, Lu/aly/ae$a;->d:I

    goto :goto_4

    .line 482
    :cond_9
    iget v0, p0, Lu/aly/ae$a;->f:I

    goto :goto_4

    .line 487
    :cond_a
    iget v1, p0, Lu/aly/ae$a;->e:I

    .line 488
    iget v0, p0, Lu/aly/ae$a;->f:I

    .line 489
    iget v2, p0, Lu/aly/ae$a;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 490
    iget v1, p0, Lu/aly/ae$a;->c:I

    .line 491
    iget v0, p0, Lu/aly/ae$a;->d:I

    .line 493
    :cond_b
    invoke-direct {p0, v1, v0}, Lu/aly/ae$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2
.end method

.method public b(Z)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 1
    .parameter

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lu/aly/ae$a;->a(Z)V

    .line 506
    iget-object v0, p0, Lu/aly/ae$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    return-object v0
.end method
