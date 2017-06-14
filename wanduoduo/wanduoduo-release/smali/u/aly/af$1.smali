.class Lu/aly/af$1;
.super Lcom/umeng/analytics/g;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/af;->a(Lu/aly/aj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/aj;

.field final synthetic b:Lu/aly/af;


# direct methods
.method constructor <init>(Lu/aly/af;Lu/aly/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lu/aly/af$1;->b:Lu/aly/af;

    iput-object p2, p0, Lu/aly/af$1;->a:Lu/aly/aj;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lu/aly/af$1;->b:Lu/aly/af;

    invoke-static {v0}, Lu/aly/af;->a(Lu/aly/af;)Lu/aly/ai;

    move-result-object v0

    iget-object v1, p0, Lu/aly/af$1;->a:Lu/aly/aj;

    invoke-interface {v0, v1}, Lu/aly/ai;->a(Lu/aly/aj;)V

    .line 46
    return-void
.end method
