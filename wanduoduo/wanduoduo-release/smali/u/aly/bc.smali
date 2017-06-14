.class public Lu/aly/bc;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bc$c;,
        Lu/aly/bc$d;,
        Lu/aly/bc$a;,
        Lu/aly/bc$b;,
        Lu/aly/bc$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bq",
        "<",
        "Lu/aly/bc;",
        "Lu/aly/bc$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bc$e;",
            "Lu/aly/cc;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x5a285711b2a57f6bL

.field private static final f:Lu/aly/cu; = null

.field private static final g:Lu/aly/ck; = null

.field private static final h:Lu/aly/ck; = null

.field private static final i:Lu/aly/ck; = null

.field private static final j:Ljava/util/Map; = null
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

.field private static final k:I = 0x0

.field private static final l:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 26
    new-instance v0, Lu/aly/cu;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lu/aly/cu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bc;->f:Lu/aly/cu;

    .line 29
    new-instance v0, Lu/aly/ck;

    const-string v1, "identity"

    invoke-direct {v0, v1, v8, v5}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->g:Lu/aly/ck;

    .line 31
    new-instance v0, Lu/aly/ck;

    const-string v1, "ts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->h:Lu/aly/ck;

    .line 33
    new-instance v0, Lu/aly/ck;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->i:Lu/aly/ck;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bc;->j:Ljava/util/Map;

    .line 40
    sget-object v0, Lu/aly/bc;->j:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/bc$b;

    invoke-direct {v2, v3}, Lu/aly/bc$b;-><init>(Lu/aly/bc$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/bc;->j:Ljava/util/Map;

    const-class v1, Lu/aly/da;

    new-instance v2, Lu/aly/bc$d;

    invoke-direct {v2, v3}, Lu/aly/bc$d;-><init>(Lu/aly/bc$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bc$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 125
    sget-object v1, Lu/aly/bc$e;->a:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "identity"

    new-instance v4, Lu/aly/cd;

    invoke-direct {v4, v8}, Lu/aly/cd;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/bc$e;->b:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cd;

    invoke-direct {v4, v7}, Lu/aly/cd;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/bc$e;->c:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cc;

    const-string v3, "version"

    new-instance v4, Lu/aly/cd;

    invoke-direct {v4, v6}, Lu/aly/cd;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cc;-><init>(Ljava/lang/String;BLu/aly/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bc;->d:Ljava/util/Map;

    .line 137
    const-class v0, Lu/aly/bc;

    sget-object v1, Lu/aly/bc;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-direct {p0}, Lu/aly/bc;-><init>()V

    .line 145
    iput-object p1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 146
    iput-wide p2, p0, Lu/aly/bc;->b:J

    .line 147
    invoke-virtual {p0, v0}, Lu/aly/bc;->b(Z)V

    .line 148
    iput p4, p0, Lu/aly/bc;->c:I

    .line 149
    invoke-virtual {p0, v0}, Lu/aly/bc;->c(Z)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lu/aly/bc;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 156
    iget-byte v0, p1, Lu/aly/bc;->m:B

    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 157
    invoke-virtual {p1}, Lu/aly/bc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lu/aly/bc;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 160
    :cond_0
    iget-wide v0, p1, Lu/aly/bc;->b:J

    iput-wide v0, p0, Lu/aly/bc;->b:J

    .line 161
    iget v0, p1, Lu/aly/bc;->c:I

    iput v0, p0, Lu/aly/bc;->c:I

    .line 162
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
    .line 322
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 323
    new-instance v0, Lu/aly/cj;

    new-instance v1, Lu/aly/db;

    invoke-direct {v1, p1}, Lu/aly/db;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cj;-><init>(Lu/aly/dd;)V

    invoke-virtual {p0, v0}, Lu/aly/bc;->a(Lu/aly/cp;)V
    :try_end_0
    .catch Lu/aly/bw; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
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
    .line 311
    :try_start_0
    new-instance v0, Lu/aly/cj;

    new-instance v1, Lu/aly/db;

    invoke-direct {v1, p1}, Lu/aly/db;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cj;-><init>(Lu/aly/dd;)V

    invoke-virtual {p0, v0}, Lu/aly/bc;->b(Lu/aly/cp;)V
    :try_end_0
    .catch Lu/aly/bw; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bw;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic m()Lu/aly/cu;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bc;->f:Lu/aly/cu;

    return-object v0
.end method

.method static synthetic n()Lu/aly/ck;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bc;->g:Lu/aly/ck;

    return-object v0
.end method

.method static synthetic o()Lu/aly/ck;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bc;->h:Lu/aly/ck;

    return-object v0
.end method

.method static synthetic q()Lu/aly/ck;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bc;->i:Lu/aly/ck;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bc;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0, p0}, Lu/aly/bc;-><init>(Lu/aly/bc;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bc;
    .locals 1
    .parameter

    .prologue
    .line 235
    iput p1, p0, Lu/aly/bc;->c:I

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bc;->c(Z)V

    .line 237
    return-object p0
.end method

.method public a(J)Lu/aly/bc;
    .locals 1
    .parameter

    .prologue
    .line 209
    iput-wide p1, p0, Lu/aly/bc;->b:J

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bc;->b(Z)V

    .line 211
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bc;
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 183
    return-object p0
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
    .line 262
    sget-object v0, Lu/aly/bc;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cy;

    invoke-interface {v0}, Lu/aly/cy;->b()Lu/aly/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cx;->b(Lu/aly/cp;Lu/aly/bq;)V

    .line 263
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 202
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bx;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lu/aly/bc;->c(I)Lu/aly/bc$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 171
    invoke-virtual {p0, v2}, Lu/aly/bc;->b(Z)V

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/bc;->b:J

    .line 173
    invoke-virtual {p0, v2}, Lu/aly/bc;->c(Z)V

    .line 174
    iput v2, p0, Lu/aly/bc;->c:I

    .line 175
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
    .line 267
    sget-object v0, Lu/aly/bc;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cy;

    invoke-interface {v0}, Lu/aly/cy;->b()Lu/aly/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cx;->a(Lu/aly/cp;Lu/aly/bq;)V

    .line 268
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 227
    iget-byte v0, p0, Lu/aly/bc;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bn;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 228
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/bc$e;
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-static {p1}, Lu/aly/bc$e;->a(I)Lu/aly/bc$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 253
    iget-byte v0, p0, Lu/aly/bc;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bn;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 254
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lu/aly/bc;->b:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 215
    iget-byte v0, p0, Lu/aly/bc;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bn;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 216
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 223
    iget-byte v0, p0, Lu/aly/bc;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bn;->a(BI)Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lu/aly/bc;->c:I

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 241
    iget-byte v0, p0, Lu/aly/bc;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bn;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bc;->m:B

    .line 242
    return-void
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 249
    iget-byte v0, p0, Lu/aly/bc;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bn;->a(BI)Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bw;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lu/aly/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    invoke-virtual {p0}, Lu/aly/bc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/bq;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lu/aly/bc;->a()Lu/aly/bc;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 277
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-wide v2, p0, Lu/aly/bc;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget v1, p0, Lu/aly/bc;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
