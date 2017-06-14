.class public Lu/aly/bd;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bd$c;,
        Lu/aly/bd$d;,
        Lu/aly/bd$a;,
        Lu/aly/bd$b;,
        Lu/aly/bd$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bq",
        "<",
        "Lu/aly/bd;",
        "Lu/aly/bd$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bd$e;",
            "Lu/aly/cc;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x4ffe4305ce3009afL

.field private static final f:Lu/aly/cu;

.field private static final g:Lu/aly/ck;

.field private static final h:Lu/aly/ck;

.field private static final i:Lu/aly/ck;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/cx;",
            ">;",
            "Lu/aly/cy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bc;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/bb;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private k:[Lu/aly/bd$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x2

    .line 28
    new-instance v0, Lu/aly/cu;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lu/aly/cu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bd;->f:Lu/aly/cu;

    .line 31
    new-instance v0, Lu/aly/ck;

    const-string v1, "snapshots"

    invoke-direct {v0, v1, v12, v10}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->g:Lu/aly/ck;

    .line 33
    new-instance v0, Lu/aly/ck;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->h:Lu/aly/ck;

    .line 35
    new-instance v0, Lu/aly/ck;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->i:Lu/aly/ck;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bd;->j:Ljava/util/Map;

    .line 42
    sget-object v0, Lu/aly/bd;->j:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/bd$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bd$b;-><init>(Lu/aly/bd$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/bd;->j:Ljava/util/Map;

    const-class v1, Lu/aly/da;

    new-instance v2, Lu/aly/bd$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bd$d;-><init>(Lu/aly/bd$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bd$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 126
    sget-object v1, Lu/aly/bd$e;->a:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "snapshots"

    new-instance v4, Lu/aly/cf;

    new-instance v5, Lu/aly/cd;

    invoke-direct {v5, v9}, Lu/aly/cd;-><init>(B)V

    new-instance v6, Lu/aly/ch;

    const-class v7, Lu/aly/bc;

    invoke-direct {v6, v11, v7}, Lu/aly/ch;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/cf;-><init>(BLu/aly/cd;Lu/aly/cd;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lu/aly/bd$e;->b:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "journals"

    new-instance v4, Lu/aly/ce;

    const/16 v5, 0xf

    new-instance v6, Lu/aly/ch;

    const-class v7, Lu/aly/bb;

    invoke-direct {v6, v11, v7}, Lu/aly/ch;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lu/aly/ce;-><init>(BLu/aly/cd;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/bd$e;->c:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cd;

    invoke-direct {v4, v9}, Lu/aly/cd;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bd;->d:Ljava/util/Map;

    .line 145
    const-class v0, Lu/aly/bd;

    sget-object v1, Lu/aly/bd;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bd$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bd$e;->b:Lu/aly/bd$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bd$e;->c:Lu/aly/bd$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bd;->k:[Lu/aly/bd$e;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lu/aly/bd;-><init>()V

    .line 153
    iput-object p1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 154
    return-void
.end method

.method public constructor <init>(Lu/aly/bd;)V
    .locals 5
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bd$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bd$e;->b:Lu/aly/bd$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bd$e;->c:Lu/aly/bd$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bd;->k:[Lu/aly/bd$e;

    .line 160
    invoke-virtual {p1}, Lu/aly/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 162
    iget-object v0, p1, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bc;

    .line 169
    new-instance v4, Lu/aly/bc;

    invoke-direct {v4, v0}, Lu/aly/bc;-><init>(Lu/aly/bc;)V

    .line 171
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_0
    iput-object v2, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 175
    :cond_1
    invoke-virtual {p1}, Lu/aly/bd;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v0, p1, Lu/aly/bd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bb;

    .line 178
    new-instance v3, Lu/aly/bb;

    invoke-direct {v3, v0}, Lu/aly/bb;-><init>(Lu/aly/bb;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_2
    iput-object v1, p0, Lu/aly/bd;->b:Ljava/util/List;

    .line 182
    :cond_3
    invoke-virtual {p1}, Lu/aly/bd;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p1, Lu/aly/bd;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 185
    :cond_4
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 377
    :try_start_0
    new-instance v0, Lu/aly/cj;

    new-instance v1, Lu/aly/db;

    invoke-direct {v1, p1}, Lu/aly/db;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cj;-><init>(Lu/aly/dd;)V

    invoke-virtual {p0, v0}, Lu/aly/bd;->a(Lu/aly/cp;)V
    :try_end_0
    .catch Lu/aly/bw; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bw;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    new-instance v0, Lu/aly/cj;

    new-instance v1, Lu/aly/db;

    invoke-direct {v1, p1}, Lu/aly/db;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cj;-><init>(Lu/aly/dd;)V

    invoke-virtual {p0, v0}, Lu/aly/bd;->b(Lu/aly/cp;)V
    :try_end_0
    .catch Lu/aly/bw; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bw;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic q()Lu/aly/cu;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bd;->f:Lu/aly/cu;

    return-object v0
.end method

.method static synthetic r()Lu/aly/ck;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bd;->g:Lu/aly/ck;

    return-object v0
.end method

.method static synthetic s()Lu/aly/ck;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bd;->h:Lu/aly/ck;

    return-object v0
.end method

.method static synthetic t()Lu/aly/ck;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bd;->i:Lu/aly/ck;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bd$e;
    .locals 1
    .parameter

    .prologue
    .line 306
    invoke-static {p1}, Lu/aly/bd$e;->a(I)Lu/aly/bd$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bd;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lu/aly/bd;

    invoke-direct {v0, p0}, Lu/aly/bd;-><init>(Lu/aly/bd;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bd;
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/bd;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/bb;",
            ">;)",
            "Lu/aly/bd;"
        }
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lu/aly/bd;->b:Ljava/util/List;

    .line 257
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/bd;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bc;",
            ">;)",
            "Lu/aly/bd;"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 215
    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bc;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 206
    :cond_0
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public a(Lu/aly/bb;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    .line 248
    :cond_0
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public a(Lu/aly/cp;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Lu/aly/bd;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cy;

    invoke-interface {v0}, Lu/aly/cy;->b()Lu/aly/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cx;->b(Lu/aly/cp;Lu/aly/bq;)V

    .line 312
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 234
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bx;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lu/aly/bd;->a(I)Lu/aly/bd$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 194
    iput-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    .line 195
    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public b(Lu/aly/cp;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lu/aly/bd;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cy;

    invoke-interface {v0}, Lu/aly/cy;->b()Lu/aly/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cx;->a(Lu/aly/cp;Lu/aly/bq;)V

    .line 317
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    .line 276
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 303
    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 220
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/bb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/bb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    .line 262
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lu/aly/bd;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lu/aly/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    invoke-virtual {p0}, Lu/aly/bd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/bq;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lu/aly/bd;->a()Lu/aly/bd;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 326
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :goto_0
    invoke-virtual {p0}, Lu/aly/bd;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Lu/aly/bd;->b:Ljava/util/List;

    if-nez v1, :cond_3

    .line 336
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lu/aly/bd;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lu/aly/bd;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 347
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_2
    iget-object v1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    :cond_3
    iget-object v1, p0, Lu/aly/bd;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 349
    :cond_4
    iget-object v1, p0, Lu/aly/bd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
