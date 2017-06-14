.class public Lu/aly/aw$i;
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
    name = "i"
.end annotation


# static fields
.field private static final d:J = -0x6dcc600cd8aa2913L


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-wide v0, p0, Lu/aly/aw$i;->a:J

    .line 344
    iput-wide v0, p0, Lu/aly/aw$i;->b:J

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/aw$i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lu/aly/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 349
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p1, Lu/aly/aw;->b:Lu/aly/aw$m;

    iget-object v0, v0, Lu/aly/aw$m;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    return-void
.end method
