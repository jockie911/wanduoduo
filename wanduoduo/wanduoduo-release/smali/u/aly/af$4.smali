.class Lu/aly/af$4;
.super Lcom/umeng/analytics/g;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/af;->c()V
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
    .line 72
    iput-object p1, p0, Lu/aly/af$4;->a:Lu/aly/af;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lu/aly/af$4;->a:Lu/aly/af;

    invoke-static {v0}, Lu/aly/af;->a(Lu/aly/af;)Lu/aly/ai;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/ai;->c()V

    .line 77
    return-void
.end method
