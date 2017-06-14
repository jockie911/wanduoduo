.class public Lu/aly/be;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/be$c;,
        Lu/aly/be$d;,
        Lu/aly/be$a;,
        Lu/aly/be$b;,
        Lu/aly/be$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bq",
        "<",
        "Lu/aly/be;",
        "Lu/aly/be$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/be$e;",
            "Lu/aly/cc;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = 0x2780a889f75f91feL

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

.field private static final k:I


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bf;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/16 v12, 0xd

    const/16 v11, 0x8

    const/16 v10, 0xb

    const/4 v9, 0x1

    .line 25
    new-instance v0, Lu/aly/cu;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lu/aly/cu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/be;->f:Lu/aly/cu;

    .line 28
    new-instance v0, Lu/aly/ck;

    const-string v1, "property"

    invoke-direct {v0, v1, v12, v9}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->g:Lu/aly/ck;

    .line 30
    new-instance v0, Lu/aly/ck;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v11, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->h:Lu/aly/ck;

    .line 32
    new-instance v0, Lu/aly/ck;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->i:Lu/aly/ck;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/be;->j:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/be;->j:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/be$b;

    invoke-direct {v2, v3}, Lu/aly/be$b;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/be;->j:Ljava/util/Map;

    const-class v1, Lu/aly/da;

    new-instance v2, Lu/aly/be$d;

    invoke-direct {v2, v3}, Lu/aly/be$d;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/be$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lu/aly/be$e;->a:Lu/aly/be$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "property"

    new-instance v4, Lu/aly/cf;

    new-instance v5, Lu/aly/cd;

    invoke-direct {v5, v10}, Lu/aly/cd;-><init>(B)V

    new-instance v6, Lu/aly/ch;

    const/16 v7, 0xc

    const-class v8, Lu/aly/bf;

    invoke-direct {v6, v7, v8}, Lu/aly/ch;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/cf;-><init>(BLu/aly/cd;Lu/aly/cd;)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/be$e;->b:Lu/aly/be$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "version"

    new-instance v4, Lu/aly/cd;

    invoke-direct {v4, v11}, Lu/aly/cd;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lu/aly/be$e;->c:Lu/aly/be$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cd;

    invoke-direct {v4, v10}, Lu/aly/cd;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/be;->d:Ljava/util/Map;

    .line 140
    const-class v0, Lu/aly/be;

    sget-object v1, Lu/aly/be;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/be;->l:B

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bf;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lu/aly/be;-><init>()V

    .line 148
    iput-object p1, p0, Lu/aly/be;->a:Ljava/util/Map;

    .line 149
    iput p2, p0, Lu/aly/be;->b:I

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Z)V

    .line 151
    iput-object p3, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Lu/aly/be;)V
    .locals 5
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/be;->l:B

    .line 158
    iget-byte v0, p1, Lu/aly/be;->l:B

    iput-byte v0, p0, Lu/aly/be;->l:B

    .line 159
    invoke-virtual {p1}, Lu/aly/be;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 161
    iget-object v0, p1, Lu/aly/be;->a:Ljava/util/Map;

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

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bf;

    .line 168
    new-instance v4, Lu/aly/bf;

    invoke-direct {v4, v0}, Lu/aly/bf;-><init>(Lu/aly/bf;)V

    .line 170
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_0
    iput-object v2, p0, Lu/aly/be;->a:Ljava/util/Map;

    .line 174
    :cond_1
    iget v0, p1, Lu/aly/be;->b:I

    iput v0, p0, Lu/aly/be;->b:I

    .line 175
    invoke-virtual {p1}, Lu/aly/be;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p1, Lu/aly/be;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 178
    :cond_2
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
    .line 355
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/be;->l:B

    .line 356
    new-instance v0, Lu/aly/cj;

    new-instance v1, Lu/aly/db;

    invoke-direct {v1, p1}, Lu/aly/db;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cj;-><init>(Lu/aly/dd;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->a(Lu/aly/cp;)V
    :try_end_0
    .catch Lu/aly/bw; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
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
    .line 344
    :try_start_0
    new-instance v0, Lu/aly/cj;

    new-instance v1, Lu/aly/db;

    invoke-direct {v1, p1}, Lu/aly/db;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cj;-><init>(Lu/aly/dd;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Lu/aly/cp;)V
    :try_end_0
    .catch Lu/aly/bw; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bw;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic n()Lu/aly/cu;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/be;->f:Lu/aly/cu;

    return-object v0
.end method

.method static synthetic o()Lu/aly/ck;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/be;->g:Lu/aly/ck;

    return-object v0
.end method

.method static synthetic q()Lu/aly/ck;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/be;->h:Lu/aly/ck;

    return-object v0
.end method

.method static synthetic r()Lu/aly/ck;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/be;->i:Lu/aly/ck;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/be;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lu/aly/be;

    invoke-direct {v0, p0}, Lu/aly/be;-><init>(Lu/aly/be;)V

    return-object v0
.end method

.method public a(I)Lu/aly/be;
    .locals 1
    .parameter

    .prologue
    .line 235
    iput p1, p0, Lu/aly/be;->b:I

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Z)V

    .line 237
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/be;
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/be;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bf;",
            ">;)",
            "Lu/aly/be;"
        }
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lu/aly/be;->a:Ljava/util/Map;

    .line 209
    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bf;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    .line 200
    :cond_0
    iget-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
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
    .line 289
    sget-object v0, Lu/aly/be;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cy;

    invoke-interface {v0}, Lu/aly/cy;->b()Lu/aly/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cx;->b(Lu/aly/cp;Lu/aly/bq;)V

    .line 290
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    .line 228
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bx;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lu/aly/be;->c(I)Lu/aly/be$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 186
    iput-object v1, p0, Lu/aly/be;->a:Ljava/util/Map;

    .line 187
    invoke-virtual {p0, v0}, Lu/aly/be;->b(Z)V

    .line 188
    iput v0, p0, Lu/aly/be;->b:I

    .line 189
    iput-object v1, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 190
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
    .line 294
    sget-object v0, Lu/aly/be;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cy;

    invoke-interface {v0}, Lu/aly/cy;->b()Lu/aly/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cx;->a(Lu/aly/cp;Lu/aly/bq;)V

    .line 295
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 253
    iget-byte v0, p0, Lu/aly/be;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bn;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/be;->l:B

    .line 254
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(I)Lu/aly/be$e;
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-static {p1}, Lu/aly/be$e;->a(I)Lu/aly/be$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 281
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
            "Lu/aly/bf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    .line 214
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

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
    .line 231
    iget v0, p0, Lu/aly/be;->b:I

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 241
    iget-byte v0, p0, Lu/aly/be;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bn;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/be;->l:B

    .line 242
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 249
    iget-byte v0, p0, Lu/aly/be;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bn;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lu/aly/be;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lu/aly/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    invoke-virtual {p0}, Lu/aly/be;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Lu/aly/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-virtual {p0}, Lu/aly/be;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    return-void
.end method

.method public synthetic p()Lu/aly/bq;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lu/aly/be;->a()Lu/aly/be;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lu/aly/be;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 304
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget v1, p0, Lu/aly/be;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lu/aly/be;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 318
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    iget-object v1, p0, Lu/aly/be;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, p0, Lu/aly/be;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
