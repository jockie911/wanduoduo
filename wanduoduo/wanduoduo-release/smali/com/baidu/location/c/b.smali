.class public Lcom/baidu/location/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/b$c;,
        Lcom/baidu/location/c/b$b;,
        Lcom/baidu/location/c/b$a;,
        Lcom/baidu/location/c/b$f;,
        Lcom/baidu/location/c/b$e;,
        Lcom/baidu/location/c/b$d;
    }
.end annotation


# static fields
.field private static i:Lcom/baidu/location/c/b;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Z

.field private E:I

.field private F:Lcom/baidu/location/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/location/c/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:Lcom/baidu/location/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/location/c/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:D

.field private J:D

.field private K:D

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:I

.field a:Z

.field b:Z

.field public c:Lcom/baidu/location/c/b$d;

.field public d:Ljava/text/SimpleDateFormat;

.field private e:Z

.field private f:Lcom/baidu/location/BDLocationListener;

.field private g:Lcom/baidu/location/BDLocationListener;

.field private h:I

.field private j:J

.field private volatile k:Z

.field private l:Lcom/baidu/location/c/e;

.field private m:Lcom/baidu/location/c/b$e;

.field private n:Lcom/baidu/location/c/b$f;

.field private o:J

.field private p:Z

.field private q:Z

.field private r:J

.field private s:I

.field private t:I

.field private u:Lcom/baidu/location/c/e$a;

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->a:Z

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->b:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/location/c/b;->h:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/baidu/location/c/b;->j:J

    iput-boolean v4, p0, Lcom/baidu/location/c/b;->k:Z

    iput-object v3, p0, Lcom/baidu/location/c/b;->c:Lcom/baidu/location/c/b$d;

    iput-object v3, p0, Lcom/baidu/location/c/b;->l:Lcom/baidu/location/c/e;

    iput-object v3, p0, Lcom/baidu/location/c/b;->m:Lcom/baidu/location/c/b$e;

    iput-object v3, p0, Lcom/baidu/location/c/b;->n:Lcom/baidu/location/c/b$f;

    iput-wide v8, p0, Lcom/baidu/location/c/b;->o:J

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->p:Z

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->q:Z

    iput-wide v8, p0, Lcom/baidu/location/c/b;->r:J

    iput v2, p0, Lcom/baidu/location/c/b;->s:I

    iput v2, p0, Lcom/baidu/location/c/b;->t:I

    iput v2, p0, Lcom/baidu/location/c/b;->v:I

    iput v2, p0, Lcom/baidu/location/c/b;->w:I

    iput-object v3, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/b;->y:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/b;->z:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/b;->A:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/b;->B:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/c/b;->C:I

    iput-boolean v4, p0, Lcom/baidu/location/c/b;->D:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/location/c/b;->E:I

    iput-object v3, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/location/c/b;->G:I

    iput-object v3, p0, Lcom/baidu/location/c/b;->H:Lcom/baidu/location/c/a;

    iput-wide v6, p0, Lcom/baidu/location/c/b;->I:D

    iput-wide v6, p0, Lcom/baidu/location/c/b;->J:D

    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/baidu/location/c/b;->K:D

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->L:Z

    iput-boolean v4, p0, Lcom/baidu/location/c/b;->M:Z

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->N:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->d:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/c/b;->O:I

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->e:Z

    new-instance v0, Lcom/baidu/location/c/c;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/c;-><init>(Lcom/baidu/location/c/b;)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->f:Lcom/baidu/location/BDLocationListener;

    new-instance v0, Lcom/baidu/location/c/b$d;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/b$d;-><init>(Lcom/baidu/location/c/b;)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->c:Lcom/baidu/location/c/b$d;

    new-instance v0, Lcom/baidu/location/c/d;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/d;-><init>(Lcom/baidu/location/c/b;)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->u:Lcom/baidu/location/c/e$a;

    new-instance v0, Lcom/baidu/location/c/e;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/c/b;->u:Lcom/baidu/location/c/e$a;

    invoke-direct {v0, v1, v2}, Lcom/baidu/location/c/e;-><init>(Landroid/content/Context;Lcom/baidu/location/c/e$a;)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->l:Lcom/baidu/location/c/e;

    new-instance v0, Lcom/baidu/location/c/b$f;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/b$f;-><init>(Lcom/baidu/location/c/b;)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->n:Lcom/baidu/location/c/b$f;

    new-instance v0, Lcom/baidu/location/c/a;

    iget v1, p0, Lcom/baidu/location/c/b;->E:I

    invoke-direct {v0, v1}, Lcom/baidu/location/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    new-instance v0, Lcom/baidu/location/c/a;

    iget v1, p0, Lcom/baidu/location/c/b;->G:I

    invoke-direct {v0, v1}, Lcom/baidu/location/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->H:Lcom/baidu/location/c/a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/b;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/b;->K:D

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/b;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/b;->O:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/c/b;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/b;->O:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/location/c/b;J)J
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/b;->r:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/baidu/location/c/b;
    .locals 2

    const-class v1, Lcom/baidu/location/c/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/c/b;->i:Lcom/baidu/location/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/c/b;

    invoke-direct {v0}, Lcom/baidu/location/c/b;-><init>()V

    sput-object v0, Lcom/baidu/location/c/b;->i:Lcom/baidu/location/c/b;

    :cond_0
    sget-object v0, Lcom/baidu/location/c/b;->i:Lcom/baidu/location/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/b;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Message;)V
    .locals 14

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_b

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/b;->s:I

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getBuildingID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->q:Z

    iget v1, p0, Lcom/baidu/location/c/b;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/location/c/b;->t:I

    iget v1, p0, Lcom/baidu/location/c/b;->t:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/c/b;->d()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/baidu/location/a/i;->c()Lcom/baidu/location/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/i;->b(Lcom/baidu/location/BDLocation;)V

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/baidu/location/c/b;->q:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/d;->i()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/c/b;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lcom/baidu/location/c/a/d;->a()Lcom/baidu/location/c/a/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x15

    invoke-direct {p0, v1, v0}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/BDLocation;I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/baidu/location/c/b;->n:Lcom/baidu/location/c/b$f;

    invoke-virtual {v0}, Lcom/baidu/location/c/b$f;->c()V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/b;->v:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/b;->t:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->q:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setIndoorLocMode(Z)V

    iget-wide v2, p0, Lcom/baidu/location/c/b;->I:D

    const-wide v4, 0x3fb999999999999aL

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_6

    iget-wide v2, p0, Lcom/baidu/location/c/b;->J:D

    const-wide v4, 0x3fb999999999999aL

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->J:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->I:D

    :cond_7
    iget-object v1, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    :cond_8
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getBuildingID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/b;->y:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getBuildingName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/b;->z:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/b;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/c/b;->B:Ljava/lang/String;

    const-string v2, "ble"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/baidu/location/c/b;->M:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->J:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->I:D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->M:Z

    :cond_9
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->isParkAvailable()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c/b;->C:I

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/baidu/location/c/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/baidu/location/c/b;->L:Z

    if-nez v1, :cond_a

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/baidu/location/c/b;->I:D

    long-to-double v6, v2

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/b;->K:D

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0

    iget-wide v8, p0, Lcom/baidu/location/c/b;->K:D

    sub-double/2addr v6, v8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/b;->J:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/baidu/location/c/b;->K:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    iget-wide v10, p0, Lcom/baidu/location/c/b;->K:D

    sub-double/2addr v8, v10

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    long-to-double v8, v2

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    long-to-double v2, v2

    div-double v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    :cond_a
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->J:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->I:D

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/baidu/location/c/b;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/location/c/b;->s:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->q:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->N:Z

    iget v1, p0, Lcom/baidu/location/c/b;->s:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/baidu/location/c/b;->d()V

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/b;->s:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->q:Z

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    const/16 v0, 0x15

    invoke-direct {p0, v1, v0}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/BDLocation;I)V

    goto/16 :goto_2
.end method

.method private a(Lcom/baidu/location/BDLocation;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/baidu/location/BDLocation;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/b;->g:Lcom/baidu/location/BDLocationListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c/b;->g:Lcom/baidu/location/BDLocationListener;

    invoke-interface {v0, p1}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    iget-object v1, p0, Lcom/baidu/location/c/b;->c:Lcom/baidu/location/c/b$d;

    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/b$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/baidu/location/c/b;->O:I

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setIndoorNetworkState(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/c/b;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/b;Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/b;Lcom/baidu/location/BDLocation;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/BDLocation;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/b;->k:Z

    return p1
.end method

.method private a(DDDD)[D
    .locals 17

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const-wide v8, 0x415854a640000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    div-double v12, p5, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    div-double v14, p5, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double v12, p5, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    div-double v8, p5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v2, v12

    sub-double v2, v8, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    add-double/2addr v2, v4

    const/4 v1, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c/b;DDDD)[D
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/baidu/location/c/b;->a(DDDD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/c/b;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/b;->I:D

    return-wide v0
.end method

.method static synthetic b(Lcom/baidu/location/c/b;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/b;->J:D

    return-wide p1
.end method

.method private b(Landroid/os/Message;)V
    .locals 14

    const-wide/high16 v12, 0x3ff0

    const-wide v4, 0x3fb999999999999aL

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    iget-wide v2, p0, Lcom/baidu/location/c/b;->I:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/baidu/location/c/b;->J:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->J:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->I:D

    :cond_1
    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/baidu/location/c/b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setFloor(Ljava/lang/String;)V

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/baidu/location/c/b;->I:D

    long-to-double v6, v2

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/b;->K:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/b;->K:D

    sub-double v6, v12, v6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/b;->J:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/baidu/location/c/b;->K:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/baidu/location/c/b;->K:D

    sub-double v8, v12, v8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    long-to-double v8, v2

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    long-to-double v2, v2

    div-double v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/c/b;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->J:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/b;->I:D

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/d;->i()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/BDLocation;I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/b;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/b;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/b;->N:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/location/c/b;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/b;->J:D

    return-wide v0
.end method

.method static synthetic c(Lcom/baidu/location/c/b;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/b;->I:D

    return-wide p1
.end method

.method static synthetic c(Lcom/baidu/location/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/b;->L:Z

    return p1
.end method

.method static synthetic d(Lcom/baidu/location/c/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/location/c/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/location/c/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/location/c/b;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/b;->C:I

    return v0
.end method

.method static synthetic h(Lcom/baidu/location/c/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/location/c/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->q:Z

    return v0
.end method

.method static synthetic j(Lcom/baidu/location/c/b;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/b;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/location/c/b;->v:I

    return v0
.end method

.method private j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic k(Lcom/baidu/location/c/b;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/b;->v:I

    return v0
.end method

.method private k()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    invoke-virtual {v0}, Lcom/baidu/location/c/a;->clear()V

    iget-object v0, p0, Lcom/baidu/location/c/b;->H:Lcom/baidu/location/c/a;

    invoke-virtual {v0}, Lcom/baidu/location/c/a;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/b;->r:J

    iput v2, p0, Lcom/baidu/location/c/b;->s:I

    iput v2, p0, Lcom/baidu/location/c/b;->C:I

    iput v2, p0, Lcom/baidu/location/c/b;->w:I

    iput-object v3, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->N:Z

    iput-object v3, p0, Lcom/baidu/location/c/b;->y:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/b;->z:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/b;->A:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/b;->B:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->D:Z

    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/baidu/location/c/b;->K:D

    iput-wide v4, p0, Lcom/baidu/location/c/b;->I:D

    iput-wide v4, p0, Lcom/baidu/location/c/b;->J:D

    iput v2, p0, Lcom/baidu/location/c/b;->v:I

    iput v2, p0, Lcom/baidu/location/c/b;->t:I

    iput-boolean v2, p0, Lcom/baidu/location/c/b;->L:Z

    return-void
.end method

.method static synthetic l(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/e;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->l:Lcom/baidu/location/c/e;

    return-object v0
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->k:Z

    iget-object v0, p0, Lcom/baidu/location/c/b;->n:Lcom/baidu/location/c/b$f;

    invoke-virtual {v0}, Lcom/baidu/location/c/b$f;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/b;->o:J

    :cond_0
    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 10

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    invoke-virtual {v1}, Lcom/baidu/location/c/a;->size()I

    move-result v8

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    move v5, v1

    move-object v6, v2

    :goto_0
    if-ge v5, v8, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    invoke-virtual {v1, v5}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    :cond_1
    :goto_2
    return-object v4

    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_7

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    move-object v2, v1

    move v1, v9

    :goto_4
    move v3, v1

    move-object v4, v2

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/baidu/location/c/b;->E:I

    if-ne v8, v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v2, v8, -0x3

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v2, v8, -0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    iget-object v4, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v1, 0x3

    if-lt v8, v1, :cond_1

    iget v1, p0, Lcom/baidu/location/c/b;->E:I

    if-gt v8, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v2, v8, -0x3

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v2, v3}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v2, v8, -0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v2, v3}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v1

    goto/16 :goto_2

    :cond_7
    move v1, v3

    move-object v2, v4

    goto/16 :goto_4
.end method

.method static synthetic m(Lcom/baidu/location/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/b;->l()V

    return-void
.end method

.method static synthetic n(Lcom/baidu/location/c/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->k:Z

    return v0
.end method

.method static synthetic o(Lcom/baidu/location/c/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/b;->j:J

    return-wide v0
.end method

.method static synthetic p(Lcom/baidu/location/c/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/b;->o:J

    return-wide v0
.end method

.method static synthetic q(Lcom/baidu/location/c/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/b;->r:J

    return-wide v0
.end method

.method static synthetic r(Lcom/baidu/location/c/b;)Lcom/baidu/location/c/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    return-object v0
.end method

.method static synthetic s(Lcom/baidu/location/c/b;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/b;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/location/c/b;->s:I

    return v0
.end method

.method static synthetic t(Lcom/baidu/location/c/b;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/b;->s:I

    return v0
.end method

.method static synthetic u(Lcom/baidu/location/c/b;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/b;->h:I

    return v0
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/b;->F:Lcom/baidu/location/c/a;

    invoke-virtual {v0}, Lcom/baidu/location/c/a;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/b;->r:J

    iget-object v0, p0, Lcom/baidu/location/c/b;->l:Lcom/baidu/location/c/e;

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->a()V

    new-instance v0, Lcom/baidu/location/c/b$e;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/b$e;-><init>(Lcom/baidu/location/c/b;)V

    iput-object v0, p0, Lcom/baidu/location/c/b;->m:Lcom/baidu/location/c/b$e;

    iget-object v0, p0, Lcom/baidu/location/c/b;->m:Lcom/baidu/location/c/b$e;

    invoke-virtual {v0}, Lcom/baidu/location/c/b$e;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z

    invoke-direct {p0}, Lcom/baidu/location/c/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/c/b;->l:Lcom/baidu/location/c/e;

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->b()V

    iget-object v0, p0, Lcom/baidu/location/c/b;->m:Lcom/baidu/location/c/b$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/b;->m:Lcom/baidu/location/c/b$e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/b$e;->a(Lcom/baidu/location/c/b$e;Z)Z

    iget-object v0, p0, Lcom/baidu/location/c/b;->m:Lcom/baidu/location/c/b$e;

    invoke-virtual {v0}, Lcom/baidu/location/c/b$e;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/b;->m:Lcom/baidu/location/c/b$e;

    :cond_1
    invoke-direct {p0}, Lcom/baidu/location/c/b;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/b;->y:Ljava/lang/String;

    return-object v0
.end method
