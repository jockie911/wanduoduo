.class Lu/aly/ca$a;
.super Lu/aly/cz;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cz",
        "<",
        "Lu/aly/ca;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/cz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ca$1;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/ca$a;-><init>()V

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
    .line 216
    check-cast p2, Lu/aly/ca;

    invoke-virtual {p0, p1, p2}, Lu/aly/ca$a;->b(Lu/aly/cp;Lu/aly/ca;)V

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

    .line 220
    iput-object v0, p2, Lu/aly/ca;->b:Lu/aly/bx;

    .line 221
    iput-object v0, p2, Lu/aly/ca;->a:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lu/aly/cp;->j()Lu/aly/cu;

    .line 225
    invoke-virtual {p1}, Lu/aly/cp;->l()Lu/aly/ck;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, Lu/aly/ca;->a(Lu/aly/cp;Lu/aly/ck;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ca;->a:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, Lu/aly/ca;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-short v0, v0, Lu/aly/ck;->c:S

    invoke-virtual {p2, v0}, Lu/aly/ca;->a(S)Lu/aly/bx;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ca;->b:Lu/aly/bx;

    .line 232
    :cond_0
    invoke-virtual {p1}, Lu/aly/cp;->m()V

    .line 236
    invoke-virtual {p1}, Lu/aly/cp;->l()Lu/aly/ck;

    .line 237
    invoke-virtual {p1}, Lu/aly/cp;->k()V

    .line 238
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
    .line 216
    check-cast p2, Lu/aly/ca;

    invoke-virtual {p0, p1, p2}, Lu/aly/ca$a;->a(Lu/aly/cp;Lu/aly/ca;)V

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
    .line 242
    invoke-virtual {p2}, Lu/aly/ca;->a()Lu/aly/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/ca;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lu/aly/cq;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-virtual {p2}, Lu/aly/ca;->e()Lu/aly/cu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/cu;)V

    .line 246
    iget-object v0, p2, Lu/aly/ca;->b:Lu/aly/bx;

    invoke-virtual {p2, v0}, Lu/aly/ca;->c(Lu/aly/bx;)Lu/aly/ck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cp;->a(Lu/aly/ck;)V

    .line 247
    invoke-virtual {p2, p1}, Lu/aly/ca;->c(Lu/aly/cp;)V

    .line 248
    invoke-virtual {p1}, Lu/aly/cp;->c()V

    .line 249
    invoke-virtual {p1}, Lu/aly/cp;->d()V

    .line 250
    invoke-virtual {p1}, Lu/aly/cp;->b()V

    .line 251
    return-void
.end method
