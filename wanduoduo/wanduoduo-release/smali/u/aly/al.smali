.class public Lu/aly/al;
.super Ljava/lang/Object;
.source "MemoCache.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/aj;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/al;->a:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lu/aly/al;->b:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private c(Lu/aly/aw;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aj;

    .line 91
    invoke-interface {v0, p1}, Lu/aly/aj;->a(Lu/aly/aw;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    monitor-exit p0

    .line 125
    :goto_1
    return-void

    .line 97
    :cond_1
    const-string v1, "userlevel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iput-object v0, v1, Lu/aly/aw$m;->j:Ljava/lang/String;

    .line 101
    :cond_2
    iget-object v0, p0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    sget-wide v0, Lu/aly/aw;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->d:Lu/aly/aw$b;

    sget-wide v2, Lu/aly/aw;->c:J

    iput-wide v2, v0, Lu/aly/aw$b;->a:J

    .line 112
    :cond_3
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/m;->a(Lu/aly/aw;)V

    .line 116
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_4

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    iget-object v1, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v1, v1, Lu/aly/aw$m;->g:Lu/aly/aw$c;

    aget-object v2, v0, v4

    iput-object v2, v1, Lu/aly/aw$c;->a:Ljava/lang/String;

    .line 119
    iget-object v1, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v1, v1, Lu/aly/aw$m;->g:Lu/aly/aw$c;

    aget-object v0, v0, v5

    iput-object v0, v1, Lu/aly/aw$c;->b:Ljava/lang/String;

    .line 124
    :cond_4
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ax;->a(Landroid/content/Context;)Lu/aly/ax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/ax;->a(Lu/aly/aw;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized a(Lu/aly/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lu/aly/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lu/aly/al;->b(Lu/aly/aw;)V

    .line 76
    invoke-direct {p0, p1}, Lu/aly/al;->c(Lu/aly/aw;)V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()I
    .locals 6

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 50
    sget-wide v2, Lu/aly/aw;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 54
    :cond_0
    monitor-exit p0

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lu/aly/aw;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->a:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->b:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->c:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lu/aly/aw$n;->m:I

    .line 141
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->l:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->e:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    iget-object v2, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/bk;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 174
    if-nez v0, :cond_5

    .line 175
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iput v1, v0, Lu/aly/aw$n;->h:I

    .line 176
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iput-object v2, v0, Lu/aly/aw$n;->d:Ljava/lang/String;

    .line 182
    :goto_0
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->f:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->g:Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    iput-object v1, v0, Lu/aly/aw$n;->i:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    iput-object v1, v0, Lu/aly/aw$n;->j:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->y:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->s:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->x:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->G:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->H:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bk;->w(Landroid/content/Context;)[I

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lu/aly/aw$n;->w:Ljava/lang/String;

    .line 206
    :cond_1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 213
    :cond_2
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bk;->m(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "Wi-Fi"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 216
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "wifi"

    iput-object v2, v1, Lu/aly/aw$n;->M:Ljava/lang/String;

    .line 223
    :goto_1
    const-string v1, ""

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    aget-object v0, v0, v5

    iput-object v0, v1, Lu/aly/aw$n;->N:Ljava/lang/String;

    .line 226
    :cond_3
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bk;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 228
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iput-object v0, v1, Lu/aly/aw$n;->O:Ljava/lang/String;

    .line 230
    :cond_4
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/aw$n;->L:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bk;->r(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    aget-object v2, v0, v4

    iput-object v2, v1, Lu/aly/aw$n;->K:Ljava/lang/String;

    .line 233
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    aget-object v0, v0, v5

    iput-object v0, v1, Lu/aly/aw$n;->J:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bk;->p(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lu/aly/aw$n;->I:J

    .line 239
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lu/aly/at;->a(Landroid/content/Context;Lu/aly/aw;)V

    .line 246
    :try_start_0
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/v;->b()Lu/aly/bd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 247
    if-nez v0, :cond_8

    .line 270
    :goto_2
    return-void

    .line 178
    :cond_5
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "versioncode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lu/aly/aw$n;->h:I

    .line 179
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "versionname"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lu/aly/aw$n;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 217
    :cond_6
    const-string v1, "2G/3G"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 218
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "2G/3G"

    iput-object v2, v1, Lu/aly/aw$n;->M:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_7
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "unknow"

    iput-object v2, v1, Lu/aly/aw$n;->M:Ljava/lang/String;

    goto/16 :goto_1

    .line 251
    :cond_8
    :try_start_1
    new-instance v1, Lu/aly/bz;

    invoke-direct {v1}, Lu/aly/bz;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/bz;->a(Lu/aly/bq;)[B

    move-result-object v0

    .line 252
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lu/aly/aw$n;->T:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_3
    :try_start_2
    iget-object v0, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->a()Lu/aly/be;

    move-result-object v0

    .line 261
    if-nez v0, :cond_9

    .line 262
    const-string v0, "trans the imprint is null"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :catch_0
    move-exception v0

    goto :goto_2

    .line 265
    :cond_9
    new-instance v1, Lu/aly/bz;

    invoke-direct {v1}, Lu/aly/bz;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/bz;->a(Lu/aly/bq;)[B

    move-result-object v0

    .line 266
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lu/aly/aw$n;->S:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 253
    :catch_1
    move-exception v0

    goto :goto_3
.end method
