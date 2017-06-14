.class Lu/aly/bb$c;
.super Lu/aly/da;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/da",
        "<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Lu/aly/da;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    invoke-direct {p0}, Lu/aly/bb$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cp;Lu/aly/bb;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 500
    check-cast p1, Lu/aly/cv;

    .line 501
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 502
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 503
    iget-wide v0, p2, Lu/aly/bb;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cv;->a(J)V

    .line 504
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 505
    invoke-virtual {p2}, Lu/aly/bb;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 508
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/cv;->a(Ljava/util/BitSet;I)V

    .line 509
    invoke-virtual {p2}, Lu/aly/bb;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 512
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
    .line 495
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->a(Lu/aly/cp;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/cp;Lu/aly/bb;)V
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

    .line 517
    check-cast p1, Lu/aly/cv;

    .line 518
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    .line 519
    invoke-virtual {p2, v2}, Lu/aly/bb;->a(Z)V

    .line 520
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 521
    invoke-virtual {p2, v2}, Lu/aly/bb;->c(Z)V

    .line 522
    invoke-virtual {p1}, Lu/aly/cv;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bb;->d:J

    .line 523
    invoke-virtual {p2, v2}, Lu/aly/bb;->d(Z)V

    .line 524
    invoke-virtual {p1, v2}, Lu/aly/cv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 525
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->b:Ljava/lang/String;

    .line 527
    invoke-virtual {p2, v2}, Lu/aly/bb;->b(Z)V

    .line 529
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
    .line 495
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->b(Lu/aly/cp;Lu/aly/bb;)V

    return-void
.end method
