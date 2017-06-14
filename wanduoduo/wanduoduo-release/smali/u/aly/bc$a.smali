.class Lu/aly/bc$a;
.super Lu/aly/cz;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cz",
        "<",
        "Lu/aly/bc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lu/aly/cz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bc$1;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    invoke-direct {p0}, Lu/aly/bc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cp;Lu/aly/bc;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 342
    invoke-virtual {p1}, Lu/aly/cp;->j()Lu/aly/cu;

    .line 344
    :goto_0
    invoke-virtual {p1}, Lu/aly/cp;->l()Lu/aly/ck;

    move-result-object v0

    .line 345
    iget-byte v1, v0, Lu/aly/ck;->b:B

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p1}, Lu/aly/cp;->k()V

    .line 382
    invoke-virtual {p2}, Lu/aly/bc;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 383
    new-instance v0, Lu/aly/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    iget-short v1, v0, Lu/aly/ck;->c:S

    packed-switch v1, :pswitch_data_0

    .line 374
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    .line 376
    :goto_1
    invoke-virtual {p1}, Lu/aly/cp;->m()V

    goto :goto_0

    .line 350
    :pswitch_0
    iget-byte v1, v0, Lu/aly/ck;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 351
    invoke-virtual {p1}, Lu/aly/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    .line 352
    invoke-virtual {p2, v3}, Lu/aly/bc;->a(Z)V

    goto :goto_1

    .line 354
    :cond_1
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    goto :goto_1

    .line 358
    :pswitch_1
    iget-byte v1, v0, Lu/aly/ck;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 359
    invoke-virtual {p1}, Lu/aly/cp;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bc;->b:J

    .line 360
    invoke-virtual {p2, v3}, Lu/aly/bc;->b(Z)V

    goto :goto_1

    .line 362
    :cond_2
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    goto :goto_1

    .line 366
    :pswitch_2
    iget-byte v1, v0, Lu/aly/ck;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 367
    invoke-virtual {p1}, Lu/aly/cp;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bc;->c:I

    .line 368
    invoke-virtual {p2, v3}, Lu/aly/bc;->c(Z)V

    goto :goto_1

    .line 370
    :cond_3
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    goto :goto_1

    .line 386
    :cond_4
    invoke-virtual {p2}, Lu/aly/bc;->k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 387
    new-instance v0, Lu/aly/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_5
    invoke-virtual {p2}, Lu/aly/bc;->l()V

    .line 391
    return-void

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

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
    .line 337
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->b(Lu/aly/cp;Lu/aly/bc;)V

    return-void
.end method

.method public b(Lu/aly/cp;Lu/aly/bc;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p2}, Lu/aly/bc;->l()V

    .line 397
    invoke-static {}, Lu/aly/bc;->m()Lu/aly/cu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/cu;)V

    .line 398
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lu/aly/bc;->n()Lu/aly/ck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/ck;)V

    .line 400
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lu/aly/cp;->c()V

    .line 403
    :cond_0
    invoke-static {}, Lu/aly/bc;->o()Lu/aly/ck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/ck;)V

    .line 404
    iget-wide v0, p2, Lu/aly/bc;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cp;->a(J)V

    .line 405
    invoke-virtual {p1}, Lu/aly/cp;->c()V

    .line 406
    invoke-static {}, Lu/aly/bc;->q()Lu/aly/ck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/ck;)V

    .line 407
    iget v0, p2, Lu/aly/bc;->c:I

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(I)V

    .line 408
    invoke-virtual {p1}, Lu/aly/cp;->c()V

    .line 409
    invoke-virtual {p1}, Lu/aly/cp;->d()V

    .line 410
    invoke-virtual {p1}, Lu/aly/cp;->b()V

    .line 411
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
    .line 337
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->a(Lu/aly/cp;Lu/aly/bc;)V

    return-void
.end method
