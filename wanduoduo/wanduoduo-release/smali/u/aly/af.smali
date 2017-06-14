.class public final Lu/aly/af;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lu/aly/ai;


# static fields
.field private static c:Lu/aly/af;


# instance fields
.field private a:Lu/aly/ai;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lu/aly/af;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lu/aly/ae;

    iget-object v1, p0, Lu/aly/af;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/af;->a:Lu/aly/ai;

    .line 24
    return-void
.end method

.method static synthetic a(Lu/aly/af;)Lu/aly/ai;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lu/aly/af;->a:Lu/aly/ai;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lu/aly/af;
    .locals 2
    .parameter

    .prologue
    .line 31
    const-class v1, Lu/aly/af;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/af;->c:Lu/aly/af;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lu/aly/af;

    invoke-direct {v0, p0}, Lu/aly/af;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/af;->c:Lu/aly/af;

    .line 35
    :cond_0
    sget-object v0, Lu/aly/af;->c:Lu/aly/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lu/aly/ae;
    .locals 1
    .parameter

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/af;->a:Lu/aly/ai;

    check-cast v0, Lu/aly/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lu/aly/af$2;

    invoke-direct {v0, p0}, Lu/aly/af$2;-><init>(Lu/aly/af;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public a(Lu/aly/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lu/aly/af;->a:Lu/aly/ai;

    .line 40
    return-void
.end method

.method public a(Lu/aly/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    new-instance v0, Lu/aly/af$1;

    invoke-direct {v0, p0, p1}, Lu/aly/af$1;-><init>(Lu/aly/af;Lu/aly/aj;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lu/aly/af$3;

    invoke-direct {v0, p0}, Lu/aly/af$3;-><init>(Lu/aly/af;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public b(Lu/aly/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lu/aly/af;->a:Lu/aly/ai;

    invoke-interface {v0, p1}, Lu/aly/ai;->b(Lu/aly/aj;)V

    .line 52
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lu/aly/af$4;

    invoke-direct {v0, p0}, Lu/aly/af$4;-><init>(Lu/aly/af;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->c(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
