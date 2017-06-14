.class public final Lu/aly/ae;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lu/aly/ai;
.implements Lu/aly/ap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ae$a;
    }
.end annotation


# static fields
.field private static p:Landroid/content/Context;


# instance fields
.field a:Ljava/lang/String;

.field private final b:J

.field private final c:I

.field private d:Lu/aly/al;

.field private e:Lcom/umeng/analytics/h;

.field private f:Lu/aly/at;

.field private g:Lu/aly/ay;

.field private h:Lu/aly/ax;

.field private i:Lu/aly/az;

.field private j:Lu/aly/ae$a;

.field private k:Lu/aly/x$a;

.field private l:I

.field private m:J

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lu/aly/ae;->b:J

    .line 43
    const/16 v0, 0x1388

    iput v0, p0, Lu/aly/ae;->c:I

    .line 44
    iput-object v4, p0, Lu/aly/ae;->d:Lu/aly/al;

    .line 45
    iput-object v4, p0, Lu/aly/ae;->e:Lcom/umeng/analytics/h;

    .line 46
    iput-object v4, p0, Lu/aly/ae;->f:Lu/aly/at;

    .line 47
    iput-object v4, p0, Lu/aly/ae;->g:Lu/aly/ay;

    .line 48
    iput-object v4, p0, Lu/aly/ae;->h:Lu/aly/ax;

    .line 49
    iput-object v4, p0, Lu/aly/ae;->i:Lu/aly/az;

    .line 50
    iput-object v4, p0, Lu/aly/ae;->j:Lu/aly/ae$a;

    .line 51
    iput-object v4, p0, Lu/aly/ae;->k:Lu/aly/x$a;

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/ae;->l:I

    .line 55
    iput-wide v2, p0, Lu/aly/ae;->m:J

    .line 56
    iput v5, p0, Lu/aly/ae;->n:I

    .line 57
    iput v5, p0, Lu/aly/ae;->o:I

    .line 59
    iput-object v4, p0, Lu/aly/ae;->a:Ljava/lang/String;

    .line 62
    sput-object p1, Lu/aly/ae;->p:Landroid/content/Context;

    .line 63
    new-instance v0, Lu/aly/al;

    invoke-direct {v0, p1}, Lu/aly/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ae;->d:Lu/aly/al;

    .line 64
    new-instance v0, Lu/aly/at;

    invoke-direct {v0, p1}, Lu/aly/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ae;->f:Lu/aly/at;

    .line 66
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->e:Lcom/umeng/analytics/h;

    .line 67
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->k:Lu/aly/x$a;

    .line 69
    new-instance v0, Lu/aly/ae$a;

    invoke-direct {v0, p0}, Lu/aly/ae$a;-><init>(Lu/aly/ae;)V

    iput-object v0, p0, Lu/aly/ae;->j:Lu/aly/ae$a;

    .line 71
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ax;->a(Landroid/content/Context;)Lu/aly/ax;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->h:Lu/aly/ax;

    .line 72
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ay;->a(Landroid/content/Context;)Lu/aly/ay;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->g:Lu/aly/ay;

    .line 73
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    iget-object v1, p0, Lu/aly/ae;->f:Lu/aly/at;

    invoke-static {v0, v1}, Lu/aly/az;->a(Landroid/content/Context;Lu/aly/at;)Lu/aly/az;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->i:Lu/aly/az;

    .line 75
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    const-string v1, "thtstart"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/ae;->m:J

    .line 77
    const-string v1, "gkvc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/ae;->n:I

    .line 78
    const-string v1, "ekvc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/ae;->o:I

    .line 80
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu/aly/x$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->a:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic a(Lu/aly/ae;)Lu/aly/x$a;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ae;->k:Lu/aly/x$a;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/ae;->f:Lu/aly/at;

    invoke-virtual {v2}, Lu/aly/at;->m()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 156
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lu/aly/ae;->a([I)Lu/aly/aw;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/ae;->a(Lu/aly/aw;)V

    .line 157
    new-instance v0, Lu/aly/ae$1;

    invoke-direct {v0, p0}, Lu/aly/ae$1;-><init>(Lu/aly/ae;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;J)V

    .line 165
    return-void
.end method

.method private a(IILu/aly/aw;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    if-lez p1, :cond_1

    .line 372
    iget-object v0, p3, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v1, v0, Lu/aly/aw$m;->b:Ljava/util/List;

    .line 373
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 374
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p1

    .line 375
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 376
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 375
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 379
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    .line 380
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 384
    :cond_1
    if-lez p2, :cond_3

    .line 385
    iget-object v0, p3, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v1, v0, Lu/aly/aw$m;->a:Ljava/util/List;

    .line 386
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_2

    .line 387
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p2

    .line 388
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 389
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 388
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 392
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    .line 393
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 397
    :cond_3
    return-void
.end method

.method static synthetic a(Lu/aly/ae;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lu/aly/ae;->b(I)V

    return-void
.end method

.method private a(Lu/aly/aw;)V
    .locals 4
    .parameter

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/v;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lu/aly/v;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    invoke-virtual {v1}, Lu/aly/v;->b()Lu/aly/bd;

    move-result-object v0

    .line 174
    new-instance v2, Lu/aly/bz;

    invoke-direct {v2}, Lu/aly/bz;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/bz;->a(Lu/aly/bq;)[B

    move-result-object v0

    .line 175
    iget-object v2, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/aw$n;->T:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :goto_0
    :try_start_2
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-direct {p0, p1}, Lu/aly/ae;->c(Lu/aly/aw;)Lu/aly/aw;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/h;->b(Lu/aly/aw;)[B

    move-result-object v0

    .line 179
    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 181
    :cond_1
    sget-object v2, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    invoke-direct {p0}, Lu/aly/ae;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    sget-object v2, Lu/aly/ae;->p:Landroid/content/Context;

    sget-object v3, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/t;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;

    move-result-object v0

    .line 190
    :goto_2
    invoke-virtual {v0}, Lu/aly/t;->c()[B

    move-result-object v0

    .line 191
    sget-object v2, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Lcom/umeng/analytics/h;->h()V

    .line 193
    invoke-virtual {v2, v0}, Lcom/umeng/analytics/h;->a([B)V

    .line 194
    invoke-virtual {v1}, Lu/aly/v;->d()V

    .line 195
    const-wide/16 v0, 0x0

    sput-wide v0, Lu/aly/aw;->c:J

    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    goto :goto_1

    .line 188
    :cond_2
    sget-object v2, Lu/aly/ae;->p:Landroid/content/Context;

    sget-object v3, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/t;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    .line 176
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lu/aly/ae;->f:Lu/aly/at;

    invoke-virtual {v0}, Lu/aly/at;->f()Z

    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lu/aly/ae;->f:Lu/aly/at;

    invoke-virtual {v1}, Lu/aly/at;->l()J

    move-result-wide v2

    sput-wide v2, Lu/aly/aw;->c:J

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lu/aly/ae;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    invoke-direct {p0}, Lu/aly/ae;->f()V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lu/aly/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_3
    invoke-virtual {p0}, Lu/aly/ae;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lu/aly/ae;)Lu/aly/ay;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ae;->g:Lu/aly/ay;

    return-object v0
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lu/aly/ae;->a(I)V

    .line 417
    return-void
.end method

.method private b(Lu/aly/aw;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 312
    if-nez p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    invoke-virtual {p1}, Lu/aly/aw;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 253
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bk;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bm;->b(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Lu/aly/ae;->f:Lu/aly/at;

    invoke-virtual {v0}, Lu/aly/at;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lu/aly/ae;->j:Lu/aly/ae$a;

    invoke-virtual {v0, p1}, Lu/aly/ae$a;->b(Z)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/ReportPolicy$i;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lu/aly/ae;)Lu/aly/at;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ae;->f:Lu/aly/at;

    return-object v0
.end method

.method private c(Lu/aly/aw;)Lu/aly/aw;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x1388

    .line 330
    .line 332
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    move v3, v2

    .line 333
    :goto_0
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 334
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aw$h;

    iget-object v0, v0, Lu/aly/aw$h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 333
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 337
    :cond_1
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    move v1, v2

    .line 338
    :goto_1
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 339
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aw$h;

    iget-object v0, v0, Lu/aly/aw$h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 343
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 344
    iget-wide v6, p0, Lu/aly/ae;->m:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0x1b77400

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 345
    const/16 v5, -0x1388

    .line 346
    add-int/lit16 v6, v3, -0x1388

    .line 348
    if-lez v6, :cond_3

    .line 349
    invoke-direct {p0, v5, v6, p1}, Lu/aly/ae;->a(IILu/aly/aw;)V

    .line 352
    :cond_3
    iput v2, p0, Lu/aly/ae;->n:I

    .line 353
    if-lez v6, :cond_4

    move v3, v4

    :cond_4
    iput v3, p0, Lu/aly/ae;->o:I

    .line 354
    iput-wide v0, p0, Lu/aly/ae;->m:J

    .line 367
    :goto_2
    return-object p1

    .line 356
    :cond_5
    iget v0, p0, Lu/aly/ae;->n:I

    if-le v0, v4, :cond_8

    move v0, v2

    .line 357
    :goto_3
    iget v1, p0, Lu/aly/ae;->o:I

    if-le v1, v4, :cond_9

    move v1, v3

    .line 359
    :goto_4
    if-gtz v0, :cond_6

    if-lez v1, :cond_7

    .line 360
    :cond_6
    invoke-direct {p0, v0, v1, p1}, Lu/aly/ae;->a(IILu/aly/aw;)V

    .line 363
    :cond_7
    if-lez v0, :cond_a

    move v0, v4

    :goto_5
    iput v0, p0, Lu/aly/ae;->n:I

    .line 364
    if-lez v1, :cond_b

    :goto_6
    iput v4, p0, Lu/aly/ae;->o:I

    goto :goto_2

    .line 356
    :cond_8
    iget v0, p0, Lu/aly/ae;->n:I

    add-int/2addr v0, v2

    add-int/lit16 v0, v0, -0x1388

    goto :goto_3

    .line 357
    :cond_9
    iget v1, p0, Lu/aly/ae;->o:I

    add-int/2addr v1, v3

    add-int/lit16 v1, v1, -0x1388

    goto :goto_4

    .line 363
    :cond_a
    iget v0, p0, Lu/aly/ae;->n:I

    add-int/2addr v0, v2

    goto :goto_5

    .line 364
    :cond_b
    iget v0, p0, Lu/aly/ae;->o:I

    add-int v4, v0, v3

    goto :goto_6
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lu/aly/ae;)Lu/aly/az;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ae;->i:Lu/aly/az;

    return-object v0
.end method

.method static synthetic e(Lu/aly/ae;)Lu/aly/ax;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ae;->h:Lu/aly/ax;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lu/aly/ae;->d:Lu/aly/al;

    invoke-virtual {v0}, Lu/aly/al;->b()I

    move-result v0

    iget v1, p0, Lu/aly/ae;->l:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lu/aly/ae;->e:Lcom/umeng/analytics/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    new-instance v0, Lu/aly/ar;

    sget-object v1, Lu/aly/ae;->p:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/ae;->f:Lu/aly/at;

    invoke-direct {v0, v1, v2}, Lu/aly/ar;-><init>(Landroid/content/Context;Lu/aly/at;)V

    .line 272
    invoke-virtual {v0, p0}, Lu/aly/ar;->a(Lu/aly/ap;)V

    .line 273
    iget-object v1, p0, Lu/aly/ae;->g:Lu/aly/ay;

    invoke-virtual {v1}, Lu/aly/ay;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/aly/ar;->b(Z)V

    .line 276
    :cond_0
    invoke-virtual {v0}, Lu/aly/ar;->a()V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/ae;->a([I)Lu/aly/aw;

    move-result-object v0

    .line 280
    invoke-direct {p0, v0}, Lu/aly/ae;->b(Lu/aly/aw;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    new-instance v1, Lu/aly/ar;

    sget-object v2, Lu/aly/ae;->p:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/ae;->f:Lu/aly/at;

    invoke-direct {v1, v2, v3}, Lu/aly/ar;-><init>(Landroid/content/Context;Lu/aly/at;)V

    .line 286
    invoke-virtual {v1, p0}, Lu/aly/ar;->a(Lu/aly/ap;)V

    .line 287
    iget-object v2, p0, Lu/aly/ae;->g:Lu/aly/ay;

    invoke-virtual {v2}, Lu/aly/ay;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lu/aly/ar;->b(Z)V

    .line 290
    :cond_3
    invoke-direct {p0, v0}, Lu/aly/ae;->c(Lu/aly/aw;)Lu/aly/aw;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/ar;->a(Lu/aly/aw;)V

    .line 291
    invoke-direct {p0}, Lu/aly/ae;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/ar;->a(Z)V

    .line 292
    invoke-virtual {v1}, Lu/aly/ar;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_4

    .line 299
    :cond_4
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Lu/aly/ae;->k:Lu/aly/x$a;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lu/aly/x$a;->c(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 408
    :goto_0
    :pswitch_0
    return v0

    .line 402
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    :pswitch_2
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([I)Lu/aly/aw;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 206
    :try_start_0
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    move-object v0, v3

    .line 249
    :goto_0
    return-object v0

    .line 211
    :cond_0
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->g()Lu/aly/aw;

    move-result-object v4

    .line 213
    if-nez v4, :cond_1

    iget-object v0, p0, Lu/aly/ae;->d:Lu/aly/al;

    invoke-virtual {v0}, Lu/aly/al;->b()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 214
    goto :goto_0

    .line 217
    :cond_1
    if-nez v4, :cond_2

    .line 218
    new-instance v4, Lu/aly/aw;

    invoke-direct {v4}, Lu/aly/aw;-><init>()V

    .line 220
    :cond_2
    iget-object v0, p0, Lu/aly/ae;->d:Lu/aly/al;

    invoke-virtual {v0, v4}, Lu/aly/al;->a(Lu/aly/aw;)V

    .line 222
    iget-object v0, v4, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-boolean v0, Lu/aly/bm;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, v4, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 224
    iget-object v0, v4, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aw$o;

    .line 225
    iget-object v0, v0, Lu/aly/aw$o;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    move v2, v0

    .line 228
    goto :goto_1

    .line 230
    :cond_3
    if-nez v2, :cond_4

    .line 231
    const-string v0, "missing Activities or PageViews"

    invoke-static {v0}, Lu/aly/bm;->d(Ljava/lang/String;)V

    .line 235
    :cond_4
    iget-object v0, p0, Lu/aly/ae;->g:Lu/aly/ay;

    sget-object v1, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lu/aly/ay;->a(Lu/aly/aw;Landroid/content/Context;)V

    .line 237
    if-eqz p1, :cond_5

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 238
    iget-object v0, v4, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->e:Lu/aly/aw$g;

    const/4 v1, 0x0

    aget v1, p1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$g;->a:Ljava/lang/Integer;

    .line 239
    iget-object v0, v4, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->e:Lu/aly/aw$g;

    const/4 v1, 0x1

    aget v1, p1, v1

    int-to-long v6, v1

    iput-wide v6, v0, Lu/aly/aw$g;->b:J

    .line 240
    iget-object v0, v4, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->e:Lu/aly/aw$g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lu/aly/aw$g;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v0, v4

    .line 242
    goto/16 :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "Fail to construct message ..."

    invoke-static {v1, v0}, Lu/aly/bm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    sget-object v1, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->h()V

    .line 246
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 249
    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bk;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lu/aly/ae;->f()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bm;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lu/aly/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lu/aly/ae;->d:Lu/aly/al;

    invoke-virtual {v0, p1}, Lu/aly/al;->a(Lu/aly/aj;)V

    .line 108
    :cond_0
    instance-of v0, p1, Lu/aly/aw$o;

    invoke-direct {p0, v0}, Lu/aly/ae;->a(Z)V

    .line 109
    return-void
.end method

.method public a(Lu/aly/x$a;)V
    .locals 2
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lu/aly/ae;->h:Lu/aly/ax;

    invoke-virtual {v0, p1}, Lu/aly/ax;->a(Lu/aly/x$a;)V

    .line 421
    iget-object v0, p0, Lu/aly/ae;->g:Lu/aly/ay;

    invoke-virtual {v0, p1}, Lu/aly/ay;->a(Lu/aly/x$a;)V

    .line 422
    iget-object v0, p0, Lu/aly/ae;->i:Lu/aly/az;

    invoke-virtual {v0, p1}, Lu/aly/az;->a(Lu/aly/x$a;)V

    .line 423
    iget-object v0, p0, Lu/aly/ae;->j:Lu/aly/ae$a;

    invoke-virtual {v0, p1}, Lu/aly/ae$a;->a(Lu/aly/x$a;)V

    .line 425
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/aly/x$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->a:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lu/aly/ae;->d:Lu/aly/al;

    invoke-virtual {v0}, Lu/aly/al;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lu/aly/ae;->e:Lcom/umeng/analytics/h;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Lu/aly/ae;->a([I)Lu/aly/aw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->a(Lu/aly/aw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    sget-object v0, Lu/aly/ae;->p:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lu/aly/ae;->m:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lu/aly/ae;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lu/aly/ae;->o:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    .line 121
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lu/aly/ae;->e:Lcom/umeng/analytics/h;

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->h()V

    .line 125
    :cond_1
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lu/aly/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lu/aly/ae;->d:Lu/aly/al;

    invoke-virtual {v0, p1}, Lu/aly/al;->a(Lu/aly/aj;)V

    .line 113
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/ae;->a([I)Lu/aly/aw;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/ae;->a(Lu/aly/aw;)V

    .line 137
    return-void
.end method
