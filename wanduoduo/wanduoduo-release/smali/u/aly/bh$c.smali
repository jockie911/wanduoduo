.class Lu/aly/bh$c;
.super Lu/aly/da;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/da",
        "<",
        "Lu/aly/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lu/aly/da;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bh$1;)V
    .locals 0
    .parameter

    .prologue
    .line 895
    invoke-direct {p0}, Lu/aly/bh$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cp;Lu/aly/bh;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 900
    check-cast p1, Lu/aly/cv;

    .line 901
    iget-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 902
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 903
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 904
    iget v0, p2, Lu/aly/bh;->d:I

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(I)V

    .line 905
    iget v0, p2, Lu/aly/bh;->e:I

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(I)V

    .line 906
    iget v0, p2, Lu/aly/bh;->f:I

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(I)V

    .line 907
    iget-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/nio/ByteBuffer;)V

    .line 908
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 909
    iget-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 911
    invoke-virtual {p2}, Lu/aly/bh;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 914
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/cv;->a(Ljava/util/BitSet;I)V

    .line 915
    invoke-virtual {p2}, Lu/aly/bh;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget v0, p2, Lu/aly/bh;->j:I

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(I)V

    .line 918
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
    .line 895
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$c;->a(Lu/aly/cp;Lu/aly/bh;)V

    return-void
.end method

.method public b(Lu/aly/cp;Lu/aly/bh;)V
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

    .line 923
    check-cast p1, Lu/aly/cv;

    .line 924
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    .line 925
    invoke-virtual {p2, v2}, Lu/aly/bh;->a(Z)V

    .line 926
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    .line 927
    invoke-virtual {p2, v2}, Lu/aly/bh;->b(Z)V

    .line 928
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    .line 929
    invoke-virtual {p2, v2}, Lu/aly/bh;->c(Z)V

    .line 930
    invoke-virtual {p1}, Lu/aly/cv;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->d:I

    .line 931
    invoke-virtual {p2, v2}, Lu/aly/bh;->d(Z)V

    .line 932
    invoke-virtual {p1}, Lu/aly/cv;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->e:I

    .line 933
    invoke-virtual {p2, v2}, Lu/aly/bh;->e(Z)V

    .line 934
    invoke-virtual {p1}, Lu/aly/cv;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->f:I

    .line 935
    invoke-virtual {p2, v2}, Lu/aly/bh;->f(Z)V

    .line 936
    invoke-virtual {p1}, Lu/aly/cv;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    .line 937
    invoke-virtual {p2, v2}, Lu/aly/bh;->g(Z)V

    .line 938
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    .line 939
    invoke-virtual {p2, v2}, Lu/aly/bh;->h(Z)V

    .line 940
    invoke-virtual {p1}, Lu/aly/cv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    .line 941
    invoke-virtual {p2, v2}, Lu/aly/bh;->i(Z)V

    .line 942
    invoke-virtual {p1, v2}, Lu/aly/cv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 943
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p1}, Lu/aly/cv;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->j:I

    .line 945
    invoke-virtual {p2, v2}, Lu/aly/bh;->j(Z)V

    .line 947
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
    .line 895
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$c;->b(Lu/aly/cp;Lu/aly/bh;)V

    return-void
.end method
