.class public final Lu/aly/aw$l;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# static fields
.field private static final e:J = 0x22c8f807fffa5ca5L


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/aw$l;->a:Ljava/lang/String;

    .line 204
    iput-wide v2, p0, Lu/aly/aw$l;->b:J

    .line 206
    iput-wide v2, p0, Lu/aly/aw$l;->c:J

    .line 207
    iput-wide v2, p0, Lu/aly/aw$l;->d:J

    return-void
.end method
