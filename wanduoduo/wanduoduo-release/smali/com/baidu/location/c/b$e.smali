.class Lcom/baidu/location/c/b$e;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/b;

.field private volatile b:Z

.field private c:J


# direct methods
.method constructor <init>(Lcom/baidu/location/c/b;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/b$e;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/b$e;->c:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/b$e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/b$e;->b:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/baidu/location/c/b$e;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->n(Lcom/baidu/location/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/b$e;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-static {v2}, Lcom/baidu/location/c/b;->o(Lcom/baidu/location/c/b;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/b$e;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->l(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/b$e;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x445c

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->g()Z

    iget-object v0, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->l(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/b$e;->c:J

    iget-object v0, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-static {v0, v4}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;Z)Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-static {v2}, Lcom/baidu/location/c/b;->p(Lcom/baidu/location/c/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x55f0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    iget-object v0, v0, Lcom/baidu/location/c/b;->c:Lcom/baidu/location/c/b$d;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/b$d;->sendEmptyMessage(I)Z

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/c/b$e;->a:Lcom/baidu/location/c/b;

    invoke-static {v2}, Lcom/baidu/location/c/b;->q(Lcom/baidu/location/c/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->d()V

    :cond_6
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/baidu/location/c/b$e;->b:Z

    :cond_7
    return-void
.end method
