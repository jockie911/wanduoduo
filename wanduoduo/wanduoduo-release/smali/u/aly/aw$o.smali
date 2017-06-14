.class public Lu/aly/aw$o;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lu/aly/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# static fields
.field private static final k:J = 0x78838c6bac14e879L


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/aw$l;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/aw$l;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lu/aly/aw$p;

.field public j:Lu/aly/aw$k;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput v1, p0, Lu/aly/aw$o;->a:I

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/aw$o;->b:Ljava/lang/String;

    .line 183
    iput-wide v2, p0, Lu/aly/aw$o;->c:J

    .line 184
    iput-wide v2, p0, Lu/aly/aw$o;->d:J

    .line 185
    iput-wide v2, p0, Lu/aly/aw$o;->e:J

    .line 186
    iput-boolean v1, p0, Lu/aly/aw$o;->f:Z

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/aw$o;->g:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/aw$o;->h:Ljava/util/List;

    .line 189
    new-instance v0, Lu/aly/aw$p;

    invoke-direct {v0}, Lu/aly/aw$p;-><init>()V

    iput-object v0, p0, Lu/aly/aw$o;->i:Lu/aly/aw$p;

    .line 190
    new-instance v0, Lu/aly/aw$k;

    invoke-direct {v0}, Lu/aly/aw$k;-><init>()V

    iput-object v0, p0, Lu/aly/aw$o;->j:Lu/aly/aw$k;

    return-void
.end method


# virtual methods
.method public a(Lu/aly/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    return-void
.end method
