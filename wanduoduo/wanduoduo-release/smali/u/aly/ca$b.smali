.class Lu/aly/ca$b;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lu/aly/cy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ca$1;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Lu/aly/ca$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/ca$a;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lu/aly/ca$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ca$a;-><init>(Lu/aly/ca$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cx;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lu/aly/ca$b;->a()Lu/aly/ca$a;

    move-result-object v0

    return-object v0
.end method
