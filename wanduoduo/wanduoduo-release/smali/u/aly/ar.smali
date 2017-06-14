.class public Lu/aly/ar;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static g:Landroid/content/Context;


# instance fields
.field private d:Lu/aly/v;

.field private e:Lu/aly/x;

.field private final f:I

.field private h:Lu/aly/at;

.field private i:Lu/aly/am;

.field private j:Lu/aly/aw;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/aly/at;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lu/aly/ar;->f:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ar;->k:Z

    .line 61
    invoke-static {p1}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/v;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ar;->d:Lu/aly/v;

    .line 62
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/x;

    .line 64
    sput-object p1, Lu/aly/ar;->g:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lu/aly/ar;->h:Lu/aly/at;

    .line 66
    new-instance v0, Lu/aly/am;

    invoke-direct {v0, p1}, Lu/aly/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ar;->i:Lu/aly/am;

    .line 67
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/am;

    iget-object v1, p0, Lu/aly/ar;->h:Lu/aly/at;

    invoke-virtual {v0, v1}, Lu/aly/am;->a(Lu/aly/ak;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lu/aly/ar;[B)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lu/aly/ar;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 214
    new-instance v1, Lu/aly/bg;

    invoke-direct {v1}, Lu/aly/bg;-><init>()V

    .line 215
    new-instance v0, Lu/aly/bt;

    new-instance v2, Lu/aly/ci$a;

    invoke-direct {v2}, Lu/aly/ci$a;-><init>()V

    invoke-direct {v0, v2}, Lu/aly/bt;-><init>(Lu/aly/cr;)V

    .line 219
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lu/aly/bt;->a(Lu/aly/bq;[B)V

    .line 221
    iget v0, v1, Lu/aly/bg;->a:I

    if-ne v0, v3, :cond_0

    .line 222
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/x;

    invoke-virtual {v1}, Lu/aly/bg;->i()Lu/aly/be;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/aly/x;->b(Lu/aly/be;)V

    .line 223
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->d()V

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send log:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lu/aly/bg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bm;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget v0, v1, Lu/aly/bg;->a:I

    if-ne v0, v3, :cond_1

    .line 231
    const/4 v0, 0x2

    .line 233
    :goto_1
    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method static synthetic a(Lu/aly/ar;)Lu/aly/am;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/am;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->j()Lcom/umeng/analytics/h$a;

    move-result-object v0

    .line 106
    new-instance v1, Lu/aly/ar$1;

    invoke-direct {v1, p0}, Lu/aly/ar$1;-><init>(Lu/aly/ar;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h$a;->a(Lcom/umeng/analytics/h$b;)V

    .line 153
    return-void
.end method

.method static synthetic b(Lu/aly/ar;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lu/aly/ar;->l:Z

    return v0
.end method

.method static synthetic c(Lu/aly/ar;)Lu/aly/at;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lu/aly/ar;->h:Lu/aly/at;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lu/aly/ar;->d:Lu/aly/v;

    invoke-virtual {v0}, Lu/aly/v;->a()V

    .line 157
    iget-object v1, p0, Lu/aly/ar;->j:Lu/aly/aw;

    .line 159
    :try_start_0
    iget-object v0, p0, Lu/aly/ar;->d:Lu/aly/v;

    invoke-virtual {v0}, Lu/aly/v;->b()Lu/aly/bd;

    move-result-object v0

    .line 160
    new-instance v2, Lu/aly/bz;

    invoke-direct {v2}, Lu/aly/bz;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/bz;->a(Lu/aly/bq;)[B

    move-result-object v0

    .line 161
    iget-object v2, v1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/aw$n;->T:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    sget-object v0, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->b(Lu/aly/aw;)[B

    move-result-object v0

    .line 167
    sget-object v1, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    :goto_1
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    :cond_1
    if-nez v0, :cond_2

    .line 172
    const-string v0, "message is null"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_2
    iget-boolean v1, p0, Lu/aly/ar;->k:Z

    if-nez v1, :cond_3

    .line 178
    sget-object v1, Lu/aly/ar;->g:Landroid/content/Context;

    sget-object v2, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/t;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;

    move-result-object v0

    .line 183
    :goto_2
    invoke-virtual {v0}, Lu/aly/t;->c()[B

    move-result-object v1

    .line 184
    sget-object v0, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->h()V

    .line 187
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/am;

    invoke-virtual {v0, v1}, Lu/aly/am;->a([B)[B

    move-result-object v0

    .line 188
    if-nez v0, :cond_4

    .line 189
    const/4 v0, 0x1

    .line 194
    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 205
    :pswitch_0
    iget-boolean v0, p0, Lu/aly/ar;->l:Z

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->a([B)V

    goto :goto_1

    .line 180
    :cond_3
    sget-object v1, Lu/aly/ar;->g:Landroid/content/Context;

    sget-object v2, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/t;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;

    move-result-object v0

    goto :goto_2

    .line 191
    :cond_4
    invoke-direct {p0, v0}, Lu/aly/ar;->a([B)I

    move-result v0

    goto :goto_3

    .line 197
    :pswitch_1
    iget-object v0, p0, Lu/aly/ar;->d:Lu/aly/v;

    invoke-virtual {v0}, Lu/aly/v;->d()V

    .line 198
    iget-object v0, p0, Lu/aly/ar;->h:Lu/aly/at;

    invoke-virtual {v0}, Lu/aly/at;->k()V

    .line 199
    const-wide/16 v0, 0x0

    sput-wide v0, Lu/aly/aw;->c:J

    goto :goto_1

    .line 202
    :pswitch_2
    iget-object v0, p0, Lu/aly/ar;->h:Lu/aly/at;

    invoke-virtual {v0}, Lu/aly/at;->k()V

    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lu/aly/ar;->j:Lu/aly/aw;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lu/aly/ar;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    :try_start_1
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/am;

    invoke-virtual {v0}, Lu/aly/am;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    return-void

    .line 91
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lu/aly/ar;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lu/aly/ap;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/x;

    invoke-virtual {v0, p1}, Lu/aly/x;->a(Lu/aly/ap;)V

    .line 84
    return-void
.end method

.method public a(Lu/aly/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lu/aly/ar;->j:Lu/aly/aw;

    .line 72
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lu/aly/ar;->k:Z

    .line 76
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lu/aly/ar;->l:Z

    .line 80
    return-void
.end method
