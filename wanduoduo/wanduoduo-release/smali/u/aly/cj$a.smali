.class public Lu/aly/cj$a;
.super Ljava/lang/Object;
.source "TCompactProtocol.java"

# interfaces
.implements Lu/aly/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lu/aly/cj$a;->a:J

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    int-to-long v0, p1

    iput-wide v0, p0, Lu/aly/cj$a;->a:J

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lu/aly/dd;)Lu/aly/cp;
    .locals 4
    .parameter

    .prologue
    .line 79
    new-instance v0, Lu/aly/cj;

    iget-wide v2, p0, Lu/aly/cj$a;->a:J

    invoke-direct {v0, p1, v2, v3}, Lu/aly/cj;-><init>(Lu/aly/dd;J)V

    return-object v0
.end method
