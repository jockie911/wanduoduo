.class Lu/aly/bc$c;
.super Lu/aly/da;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/da",
        "<",
        "Lu/aly/bc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lu/aly/da;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bc$1;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    invoke-direct {p0}, Lu/aly/bc$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cp;Lu/aly/bc;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 427
    check-cast p1, Lu/aly/cv;

    .line 428
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 429
    iget-wide v0, p2, Lu/aly/bc;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cv;->a(J)V

    .line 430
    iget v0, p2, Lu/aly/bc;->c:I

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(I)V

    .line 431
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
    .line 422
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$c;->a(Lu/aly/cp;Lu/aly/bc;)V

    return-void
.end method

.method public b(Lu/aly/cp;Lu/aly/bc;)V
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

    .line 436
    check-cast p1, Lu/aly/cv;

    .line 437
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    .line 438
    invoke-virtual {p2, v2}, Lu/aly/bc;->a(Z)V

    .line 439
    invoke-virtual {p1}, Lu/aly/cv;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bc;->b:J

    .line 440
    invoke-virtual {p2, v2}, Lu/aly/bc;->b(Z)V

    .line 441
    invoke-virtual {p1}, Lu/aly/cv;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bc;->c:I

    .line 442
    invoke-virtual {p2, v2}, Lu/aly/bc;->c(Z)V

    .line 443
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
    .line 422
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$c;->b(Lu/aly/cp;Lu/aly/bc;)V

    return-void
.end method
