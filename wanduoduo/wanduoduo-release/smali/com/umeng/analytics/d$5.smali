.class Lcom/umeng/analytics/d$5;
.super Lcom/umeng/analytics/g;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/as;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/as;->e(Landroid/content/Context;)Z

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/aly/af;->b(Landroid/content/Context;)Lu/aly/af;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/af;->c()V

    .line 403
    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/as;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/as;->f(Landroid/content/Context;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d$5;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->b(Landroid/content/Context;)V

    .line 407
    :cond_1
    return-void
.end method
