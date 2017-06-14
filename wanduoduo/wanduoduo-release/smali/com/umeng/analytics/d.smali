.class public Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/ao;


# static fields
.field private static final j:Ljava/lang/String; = "sp"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/c;

.field private c:Lu/aly/ag;

.field private d:Lu/aly/au;

.field private e:Lu/aly/as;

.field private f:Lu/aly/ah;

.field private g:Lu/aly/af;

.field private h:Lu/aly/ad;

.field private i:Lu/aly/m;

.field private k:Z

.field private l:Z

.field private m:Lorg/json/JSONObject;

.field private n:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Lu/aly/ag;

    invoke-direct {v0}, Lu/aly/ag;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/ag;

    .line 47
    new-instance v0, Lu/aly/au;

    invoke-direct {v0}, Lu/aly/au;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    .line 48
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/as;

    .line 49
    iput-object v1, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ah;

    .line 50
    iput-object v1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/af;

    .line 51
    iput-object v1, p0, Lcom/umeng/analytics/d;->h:Lu/aly/ad;

    .line 52
    iput-object v1, p0, Lcom/umeng/analytics/d;->i:Lu/aly/m;

    .line 54
    iput-boolean v2, p0, Lcom/umeng/analytics/d;->k:Z

    .line 55
    iput-boolean v2, p0, Lcom/umeng/analytics/d;->l:Z

    .line 56
    iput-object v1, p0, Lcom/umeng/analytics/d;->m:Lorg/json/JSONObject;

    .line 57
    iput-boolean v2, p0, Lcom/umeng/analytics/d;->n:Z

    .line 60
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/ag;

    invoke-virtual {v0, p0}, Lu/aly/ag;->a(Lu/aly/ao;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Lu/aly/m;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/analytics/d;->i:Lu/aly/m;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/umeng/analytics/d;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/analytics/d;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->i(Landroid/content/Context;)V

    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 65
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_2

    .line 69
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 70
    new-instance v1, Lu/aly/ad;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lu/aly/ad;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/umeng/analytics/d;->h:Lu/aly/ad;

    .line 71
    iput-boolean v2, p0, Lcom/umeng/analytics/d;->n:Z

    .line 75
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 77
    new-instance v0, Lu/aly/ah;

    iget-object v1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/ah;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ah;

    .line 78
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/af;->b(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/af;

    .line 79
    iput-boolean v2, p0, Lcom/umeng/analytics/d;->k:Z

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/d;->i:Lu/aly/m;

    if-nez v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->i:Lu/aly/m;

    .line 83
    :cond_3
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->l:Z

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/umeng/analytics/d$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d$1;-><init>(Lcom/umeng/analytics/d;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private h(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->c(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->a()V

    .line 260
    :cond_0
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->d(Landroid/content/Context;)V

    .line 264
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    invoke-virtual {v0, p1}, Lu/aly/au;->a(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->a(Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->b()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/af;

    invoke-virtual {v0}, Lu/aly/af;->b()V

    .line 270
    return-void
.end method

.method private j(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 661
    :try_start_0
    invoke-static {p1}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 662
    const-string v2, "sp"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    return-object v0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 672
    goto :goto_0
.end method


# virtual methods
.method public a()Lu/aly/as;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/as;

    return-object v0
.end method

.method a(DD)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 481
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 485
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 486
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 487
    return-void
.end method

.method a(J)V
    .locals 1
    .parameter

    .prologue
    .line 490
    long-to-int v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    .line 491
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/au;->a(Ljava/lang/String;)V

    .line 160
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_3

    .line 161
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 163
    :cond_3
    new-instance v0, Lcom/umeng/analytics/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$2;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lu/aly/bm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    .line 137
    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 500
    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 503
    :cond_0
    if-eqz p2, :cond_1

    .line 504
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;I)V

    .line 506
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 218
    :cond_0
    if-nez p1, :cond_1

    .line 219
    const-string v0, "unexpected null context in reportError"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_3

    .line 225
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 226
    :cond_3
    new-instance v0, Lu/aly/aw$i;

    invoke-direct {v0}, Lu/aly/aw$i;-><init>()V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lu/aly/aw$i;->a:J

    .line 229
    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lu/aly/aw$i;->b:J

    .line 230
    iput-object p2, v0, Lu/aly/aw$i;->c:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/af;

    invoke-virtual {v1, v0}, Lu/aly/af;->a(Lu/aly/aj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ah;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/ah;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_1

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ah;

    invoke-virtual {v0, p2, p3}, Lu/aly/ah;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 313
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_1

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ah;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/ah;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 244
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/umeng/analytics/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_1

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ah;

    invoke-virtual {v0, p1, p2}, Lu/aly/ah;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_1

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ah;

    invoke-virtual {v0, p2, p3, p4}, Lu/aly/ah;->a(Ljava/util/List;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V
    .locals 2
    .parameter

    .prologue
    .line 527
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 530
    :cond_0
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->a(Ljava/lang/String;)V

    .line 539
    :cond_1
    iget-boolean v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 540
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 541
    :goto_0
    return-void

    .line 533
    :cond_2
    const-string v0, "the appkey is null!"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/c;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    .line 133
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    invoke-virtual {v0, p1}, Lu/aly/au;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 147
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4
    .parameter

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    invoke-virtual {v0}, Lu/aly/au;->a()V

    .line 350
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 351
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/af;

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lu/aly/aw$i;

    invoke-direct {v0}, Lu/aly/aw$i;-><init>()V

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lu/aly/aw$i;->a:J

    .line 354
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lu/aly/aw$i;->b:J

    .line 355
    invoke-static {p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$i;->c:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/af;

    invoke-virtual {v1, v0}, Lu/aly/af;->a(Lu/aly/aj;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/ad;

    iget-object v1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lu/aly/ad;->b(Landroid/content/Context;)V

    .line 359
    iget-object v0, p0, Lcom/umeng/analytics/d;->i:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->c()V

    .line 360
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/d;->i(Landroid/content/Context;)V

    .line 361
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lu/aly/bm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter

    .prologue
    .line 430
    invoke-static {p1}, Lu/aly/bk;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    .line 431
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 432
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 433
    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 435
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 421
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 422
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 394
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$5;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d$5;-><init>(Lcom/umeng/analytics/d;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lu/aly/bm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(J)V
    .locals 1
    .parameter

    .prologue
    .line 549
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 550
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/au;->b(Ljava/lang/String;)V

    .line 185
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_3

    .line 186
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 188
    :cond_3
    new-instance v0, Lcom/umeng/analytics/d$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$3;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lu/aly/bm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 515
    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 518
    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    invoke-virtual {v0, p1}, Lu/aly/au;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 372
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/d$4;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    const-string v1, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v0}, Lu/aly/bm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 443
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 444
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/d;->n:Z

    if-nez v0, :cond_1

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/af;

    invoke-virtual {v0}, Lu/aly/af;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 617
    return-void
.end method

.method c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 452
    sput-boolean p1, Lcom/umeng/analytics/a;->e:Z

    .line 453
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->b(Landroid/content/Context;)V

    .line 336
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/au;

    invoke-virtual {v0}, Lu/aly/au;->a()V

    .line 337
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->i(Landroid/content/Context;)V

    .line 338
    invoke-static {p1}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    iget-object v0, p0, Lcom/umeng/analytics/d;->i:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->b()V

    .line 340
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 461
    sput-boolean p1, Lu/aly/bm;->a:Z

    .line 462
    sput-boolean p1, Lcom/umeng/analytics/social/e;->v:Z

    .line 463
    return-void
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 650
    const/4 v0, 0x0

    return-object v0
.end method

.method e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 471
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Z)V

    .line 472
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    return-void
.end method
