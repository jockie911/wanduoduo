.class Lcom/baidu/location/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/c/e$a;


# instance fields
.field final synthetic a:Lcom/baidu/location/c/b;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DD)V
    .locals 11

    const-wide v4, 0x3fb999999999999aL

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    iput-boolean v1, v0, Lcom/baidu/location/c/b;->a:Z

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    iput-boolean v1, v0, Lcom/baidu/location/c/b;->b:Z

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    const-wide/high16 v2, 0x3fe0

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;D)D

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->b(Lcom/baidu/location/c/b;)D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->c(Lcom/baidu/location/c/b;)D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->c(Lcom/baidu/location/c/b;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->b(Lcom/baidu/location/c/b;)D

    move-result-wide v4

    move-wide v6, p1

    move-wide v8, p3

    invoke-static/range {v1 .. v9}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;DDDD)[D

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    iget-object v3, v3, Lcom/baidu/location/c/b;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    invoke-static {v2, v4, v5}, Lcom/baidu/location/c/b;->b(Lcom/baidu/location/c/b;D)D

    iget-object v2, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    invoke-static {v2, v4, v5}, Lcom/baidu/location/c/b;->c(Lcom/baidu/location/c/b;D)D

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->d(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->d(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setFloor(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->e(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->e(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setBuildingID(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->f(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->f(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setBuildingName(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->g(Lcom/baidu/location/c/b;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setParkAvailable(I)V

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->h(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->h(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->i(Lcom/baidu/location/c/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->i()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setIndoorLocMode(Z)V

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->j(Lcom/baidu/location/c/b;)I

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->k(Lcom/baidu/location/c/b;)I

    move-result v0

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    invoke-static {v0}, Lcom/baidu/location/c/b;->l(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->d()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const-string v0, "dr"

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, v1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lcom/baidu/location/c/a/d;->a()Lcom/baidu/location/c/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    const/16 v2, 0x15

    invoke-static {v1, v0, v2}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;Lcom/baidu/location/BDLocation;I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v0, "wf"

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    const-string v1, "dr2"

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/c/d;->a:Lcom/baidu/location/c/b;

    const/16 v2, 0x15

    invoke-static {v1, v0, v2}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;Lcom/baidu/location/BDLocation;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
