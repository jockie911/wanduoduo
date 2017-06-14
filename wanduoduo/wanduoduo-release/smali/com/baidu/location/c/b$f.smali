.class Lcom/baidu/location/c/b$f;
.super Lcom/baidu/location/h/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/b;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/location/c/b$a;

.field private p:Lcom/baidu/location/c/b$c;

.field private q:I

.field private r:J

.field private s:J


# direct methods
.method public constructor <init>(Lcom/baidu/location/c/b;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-direct {p0}, Lcom/baidu/location/h/e;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/location/c/b$f;->b:Z

    iput-boolean v1, p0, Lcom/baidu/location/c/b$f;->c:Z

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->f:Lcom/baidu/location/c/b$a;

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->p:Lcom/baidu/location/c/b$c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/c/b$f;->q:I

    iput-wide v2, p0, Lcom/baidu/location/c/b$f;->r:J

    iput-wide v2, p0, Lcom/baidu/location/c/b$f;->s:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->k:Ljava/util/Map;

    new-instance v0, Lcom/baidu/location/c/b$c;

    invoke-direct {v0, p1}, Lcom/baidu/location/c/b$c;-><init>(Lcom/baidu/location/c/b;)V

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->p:Lcom/baidu/location/c/b$c;

    return-void
.end method

.method private a(Lcom/baidu/location/f/g;D)Z
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Lcom/baidu/location/c/b$a;

    iget-object v2, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-direct {v1, v2, p1}, Lcom/baidu/location/c/b$a;-><init>(Lcom/baidu/location/c/b;Lcom/baidu/location/f/g;)V

    iget-object v2, p0, Lcom/baidu/location/c/b$f;->f:Lcom/baidu/location/c/b$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/c/b$f;->f:Lcom/baidu/location/c/b$a;

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/b$a;->a(Lcom/baidu/location/c/b$a;)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object v1, p0, Lcom/baidu/location/c/b$f;->f:Lcom/baidu/location/c/b$a;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/baidu/location/h/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/c/b$f;->i:I

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeTp4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/c/b$f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/c/b$f;->k:Ljava/util/Map;

    const-string v2, "bloc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/b$f;->r:J

    return-void
.end method

.method public a(Z)V
    .locals 11

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->j:Ljava/lang/String;

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->b(Lcom/baidu/location/c/b;Z)Z

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->l(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/location/c/b;->b:Z

    :cond_0
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getBuildingName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getBuildingName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/b$f;->s:J

    iget-wide v0, p0, Lcom/baidu/location/c/b$f;->s:J

    iget-wide v2, p0, Lcom/baidu/location/c/b$f;->r:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;I)I

    :goto_0
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->c(Lcom/baidu/location/c/b;Z)Z

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setFloor(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->r(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/a;

    move-result-object v0

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    iget-boolean v0, v0, Lcom/baidu/location/c/b;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    iget-boolean v0, v0, Lcom/baidu/location/c/b;->b:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/baidu/location/c/b$b;

    iget-object v1, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v8}, Lcom/baidu/location/c/b;->l(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/location/c/e;->d()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/baidu/location/c/b$b;-><init>(Lcom/baidu/location/c/b;DDJI)V

    iget-object v1, p0, Lcom/baidu/location/c/b$f;->p:Lcom/baidu/location/c/b$c;

    invoke-virtual {v1, v0}, Lcom/baidu/location/c/b$c;->c(Lcom/baidu/location/c/b$b;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/b$b;->a(Z)V

    iget-object v1, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    iget-object v1, v1, Lcom/baidu/location/c/b;->c:Lcom/baidu/location/c/b$d;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/b$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v9, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/c/b$f;->p:Lcom/baidu/location/c/b$c;

    invoke-virtual {v1, v0}, Lcom/baidu/location/c/b$c;->a(Lcom/baidu/location/c/b$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->k:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_5
    iput-boolean v10, p0, Lcom/baidu/location/c/b$f;->b:Z

    :cond_6
    return-void

    :cond_7
    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;I)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;I)I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->c(Lcom/baidu/location/c/b;Z)Z

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    iget-object v0, v0, Lcom/baidu/location/c/b;->c:Lcom/baidu/location/c/b$d;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/b$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->s(Lcom/baidu/location/c/b;)I

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v0, v10}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;I)I

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v0, v1}, Lcom/baidu/location/c/b;->b(Lcom/baidu/location/c/b;Z)Z

    iput-boolean v10, p0, Lcom/baidu/location/c/b$f;->b:Z

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->t(Lcom/baidu/location/c/b;)I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->d()V

    goto :goto_2
.end method

.method public b()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/c/b$f;->b:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/baidu/location/c/b$f;->c:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/b;->f()Lcom/baidu/location/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/a;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    const-wide/high16 v6, 0x3fe0

    invoke-static {v0, v6, v7}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;D)D

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->n()Lcom/baidu/location/f/g;

    move-result-object v5

    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Lcom/baidu/location/f/g;->a(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0xa

    if-lt v0, v7, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->e:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object v6, p0, Lcom/baidu/location/c/b$f;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->l(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->d()I

    move-result v7

    iget v0, p0, Lcom/baidu/location/c/b$f;->q:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/baidu/location/c/b$f;->q:I

    sub-int v0, v7, v0

    iget-object v8, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v8}, Lcom/baidu/location/c/b;->u(Lcom/baidu/location/c/b;)I

    move-result v8

    if-le v0, v8, :cond_6

    :cond_3
    move v0, v2

    :goto_1
    iget-object v8, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    iget-boolean v8, v8, Lcom/baidu/location/c/b;->a:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    iget-boolean v8, v8, Lcom/baidu/location/c/b;->b:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v8}, Lcom/baidu/location/c/b;->i(Lcom/baidu/location/c/b;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide v8, 0x3fe999999999999aL

    invoke-direct {p0, v5, v8, v9}, Lcom/baidu/location/c/b$f;->a(Lcom/baidu/location/f/g;D)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    iput v7, p0, Lcom/baidu/location/c/b$f;->q:I

    iput-boolean v2, p0, Lcom/baidu/location/c/b$f;->b:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&coor=gcj02"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&lt=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/h/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/b$f;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/c/b$f;->e()V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    iget-boolean v8, v8, Lcom/baidu/location/c/b;->a:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/baidu/location/c/b$f;->a:Lcom/baidu/location/c/b;

    invoke-static {v8}, Lcom/baidu/location/c/b;->i(Lcom/baidu/location/c/b;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide v8, 0x3fe6666666666666L

    invoke-direct {p0, v5, v8, v9}, Lcom/baidu/location/c/b$f;->a(Lcom/baidu/location/f/g;D)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/b$f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/c/b$f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/b$f;->c:Z

    invoke-virtual {p0}, Lcom/baidu/location/c/b$f;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
