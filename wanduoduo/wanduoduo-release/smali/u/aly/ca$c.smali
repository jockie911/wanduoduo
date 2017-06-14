.class Lu/aly/ca$c;
.super Lu/aly/da;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/da",
        "<",
        "Lu/aly/ca;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/da;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ca$1;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/ca$c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lu/aly/cp;Lu/aly/bq;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 260
    check-cast p2, Lu/aly/ca;

    invoke-virtual {p0, p1, p2}, Lu/aly/ca$c;->b(Lu/aly/cp;Lu/aly/ca;)V

    return-void
.end method

.method public a(Lu/aly/cp;Lu/aly/ca;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object v0, p2, Lu/aly/ca;->b:Lu/aly/bx;

    .line 265
    iput-object v0, p2, Lu/aly/ca;->a:Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Lu/aly/cp;->v()S

    move-result v0

    .line 267
    invoke-virtual {p2, p1, v0}, Lu/aly/ca;->a(Lu/aly/cp;S)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ca;->a:Ljava/lang/Object;

    .line 268
    iget-object v1, p2, Lu/aly/ca;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p2, v0}, Lu/aly/ca;->a(S)Lu/aly/bx;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ca;->b:Lu/aly/bx;

    .line 271
    :cond_0
    return-void
.end method

.method public synthetic b(Lu/aly/cp;Lu/aly/bq;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 260
    check-cast p2, Lu/aly/ca;

    invoke-virtual {p0, p1, p2}, Lu/aly/ca$c;->a(Lu/aly/cp;Lu/aly/ca;)V

    return-void
.end method

.method public b(Lu/aly/cp;Lu/aly/ca;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p2}, Lu/aly/ca;->a()Lu/aly/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/ca;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    new-instance v0, Lu/aly/cq;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    iget-object v0, p2, Lu/aly/ca;->b:Lu/aly/bx;

    invoke-interface {v0}, Lu/aly/bx;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(S)V

    .line 279
    invoke-virtual {p2, p1}, Lu/aly/ca;->d(Lu/aly/cp;)V

    .line 280
    return-void
.end method
