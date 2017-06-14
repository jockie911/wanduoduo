.class Lu/aly/bf$c;
.super Lu/aly/da;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/da",
        "<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lu/aly/da;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bf$1;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    invoke-direct {p0}, Lu/aly/bf$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cp;Lu/aly/bf;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 431
    check-cast p1, Lu/aly/cv;

    .line 432
    iget-wide v0, p2, Lu/aly/bf;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cv;->a(J)V

    .line 433
    iget-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 435
    invoke-virtual {p2}, Lu/aly/bf;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 438
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/cv;->a(Ljava/util/BitSet;I)V

    .line 439
    invoke-virtual {p2}, Lu/aly/bf;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p2, Lu/aly/bf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 442
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lu/aly/cp;Lu/aly/bq;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 426
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$c;->a(Lu/aly/cp;Lu/aly/bf;)V

    return-void
.end method

.method public b(Lu/aly/cp;Lu/aly/bf;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 447
    check-cast p1, Lu/aly/cv;

    .line 448
    invoke-virtual {p1}, Lu/aly/cv;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bf;->b:J

    .line 449
    invoke-virtual {p2, v2}, Lu/aly/bf;->b(Z)V

    .line 450
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    .line 451
    invoke-virtual {p2, v2}, Lu/aly/bf;->c(Z)V

    .line 452
    invoke-virtual {p1, v2}, Lu/aly/cv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->a:Ljava/lang/String;

    .line 455
    invoke-virtual {p2, v2}, Lu/aly/bf;->a(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cp;Lu/aly/bq;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 426
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$c;->b(Lu/aly/cp;Lu/aly/bf;)V

    return-void
.end method
