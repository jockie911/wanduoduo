.class Lu/aly/be$d;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Lu/aly/cy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Lu/aly/be$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/be$c;
    .locals 2

    .prologue
    .line 469
    new-instance v0, Lu/aly/be$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/be$c;-><init>(Lu/aly/be$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cx;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lu/aly/be$d;->a()Lu/aly/be$c;

    move-result-object v0

    return-object v0
.end method
