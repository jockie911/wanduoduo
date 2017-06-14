.class public Lcom/umeng/analytics/ReportPolicy$b;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lu/aly/ay;

.field private b:Lu/aly/at;


# direct methods
.method public constructor <init>(Lu/aly/at;Lu/aly/ay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/at;

    .line 177
    iput-object p2, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/ay;

    .line 178
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/ay;

    invoke-virtual {v0}, Lu/aly/ay;->c()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 6
    .parameter

    .prologue
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/ay;

    invoke-virtual {v2}, Lu/aly/ay;->a()J

    move-result-wide v2

    .line 184
    iget-object v4, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/at;

    iget-wide v4, v4, Lu/aly/at;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
