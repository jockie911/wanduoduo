.class Lu/aly/af$2;
.super Lcom/umeng/analytics/g;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/af;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/af;


# direct methods
.method constructor <init>(Lu/aly/af;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lu/aly/af$2;->a:Lu/aly/af;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lu/aly/af$2;->a:Lu/aly/af;

    invoke-static {v0}, Lu/aly/af;->a(Lu/aly/af;)Lu/aly/ai;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/ai;->a()V

    .line 58
    return-void
.end method
