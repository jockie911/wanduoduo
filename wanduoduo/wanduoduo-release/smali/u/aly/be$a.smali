.class Lu/aly/be$a;
.super Lu/aly/cz;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cz",
        "<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lu/aly/cz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    invoke-direct {p0}, Lu/aly/be$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cp;Lu/aly/be;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 375
    invoke-virtual {p1}, Lu/aly/cp;->j()Lu/aly/cu;

    .line 377
    :goto_0
    invoke-virtual {p1}, Lu/aly/cp;->l()Lu/aly/ck;

    move-result-object v0

    .line 378
    iget-byte v1, v0, Lu/aly/ck;->b:B

    if-nez v1, :cond_0

    .line 423
    invoke-virtual {p1}, Lu/aly/cp;->k()V

    .line 427
    invoke-virtual {p2}, Lu/aly/be;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 428
    new-instance v0, Lu/aly/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    iget-short v1, v0, Lu/aly/ck;->c:S

    packed-switch v1, :pswitch_data_0

    .line 419
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    .line 421
    :goto_1
    invoke-virtual {p1}, Lu/aly/cp;->m()V

    goto :goto_0

    .line 383
    :pswitch_0
    iget-byte v1, v0, Lu/aly/ck;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 385
    invoke-virtual {p1}, Lu/aly/cp;->n()Lu/aly/cm;

    move-result-object v1

    .line 386
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/cm;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->a:Ljava/util/Map;

    .line 387
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lu/aly/cm;->c:I

    if-ge v0, v2, :cond_1

    .line 390
    invoke-virtual {p1}, Lu/aly/cp;->z()Ljava/lang/String;

    move-result-object v2

    .line 391
    new-instance v3, Lu/aly/bf;

    invoke-direct {v3}, Lu/aly/bf;-><init>()V

    .line 392
    invoke-virtual {v3, p1}, Lu/aly/bf;->a(Lu/aly/cp;)V

    .line 393
    iget-object v4, p2, Lu/aly/be;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 395
    :cond_1
    invoke-virtual {p1}, Lu/aly/cp;->o()V

    .line 397
    invoke-virtual {p2, v5}, Lu/aly/be;->a(Z)V

    goto :goto_1

    .line 399
    :cond_2
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    goto :goto_1

    .line 403
    :pswitch_1
    iget-byte v1, v0, Lu/aly/ck;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 404
    invoke-virtual {p1}, Lu/aly/cp;->w()I

    move-result v0

    iput v0, p2, Lu/aly/be;->b:I

    .line 405
    invoke-virtual {p2, v5}, Lu/aly/be;->b(Z)V

    goto :goto_1

    .line 407
    :cond_3
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    goto :goto_1

    .line 411
    :pswitch_2
    iget-byte v1, v0, Lu/aly/ck;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 412
    invoke-virtual {p1}, Lu/aly/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    .line 413
    invoke-virtual {p2, v5}, Lu/aly/be;->c(Z)V

    goto :goto_1

    .line 415
    :cond_4
    iget-byte v0, v0, Lu/aly/ck;->b:B

    invoke-static {p1, v0}, Lu/aly/cs;->a(Lu/aly/cp;B)V

    goto :goto_1

    .line 431
    :cond_5
    invoke-virtual {p2}, Lu/aly/be;->m()V

    .line 432
    return-void

    .line 381
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
    .line 370
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->b(Lu/aly/cp;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/cp;Lu/aly/be;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p2}, Lu/aly/be;->m()V

    .line 438
    invoke-static {}, Lu/aly/be;->n()Lu/aly/cu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/cu;)V

    .line 439
    iget-object v0, p2, Lu/aly/be;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 440
    invoke-static {}, Lu/aly/be;->o()Lu/aly/ck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/ck;)V

    .line 442
    new-instance v0, Lu/aly/cm;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/be;->a:Ljava/util/Map;

    .line 443
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/cm;-><init>(BBI)V

    .line 442
    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/cm;)V

    .line 444
    iget-object v0, p2, Lu/aly/be;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/cp;->a(Ljava/lang/String;)V

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Lu/aly/cp;)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p1}, Lu/aly/cp;->e()V

    .line 450
    invoke-virtual {p1}, Lu/aly/cp;->c()V

    .line 452
    :cond_1
    invoke-static {}, Lu/aly/be;->q()Lu/aly/ck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/ck;)V

    .line 453
    iget v0, p2, Lu/aly/be;->b:I

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(I)V

    .line 454
    invoke-virtual {p1}, Lu/aly/cp;->c()V

    .line 455
    iget-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 456
    invoke-static {}, Lu/aly/be;->r()Lu/aly/ck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/ck;)V

    .line 457
    iget-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lu/aly/cp;->c()V

    .line 460
    :cond_2
    invoke-virtual {p1}, Lu/aly/cp;->d()V

    .line 461
    invoke-virtual {p1}, Lu/aly/cp;->b()V

    .line 462
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
    .line 370
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->a(Lu/aly/cp;Lu/aly/be;)V

    return-void
.end method
