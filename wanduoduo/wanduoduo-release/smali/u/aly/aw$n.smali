.class public Lu/aly/aw$n;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# static fields
.field private static final U:J = 0x3f6684956a3378cdL


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:J

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:J

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:J

.field public Q:J

.field public R:J

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lu/aly/aw$n;->a:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lu/aly/aw$n;->b:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lu/aly/aw$n;->c:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lu/aly/aw$n;->d:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lu/aly/aw$n;->e:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lu/aly/aw$n;->f:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lu/aly/aw$n;->g:Ljava/lang/String;

    .line 52
    iput v1, p0, Lu/aly/aw$n;->h:I

    .line 55
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->i:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->j:Ljava/lang/String;

    .line 57
    const-string v0, "Android"

    iput-object v0, p0, Lu/aly/aw$n;->k:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lu/aly/aw$n;->l:Ljava/lang/String;

    .line 60
    iput v1, p0, Lu/aly/aw$n;->m:I

    .line 64
    iput v1, p0, Lu/aly/aw$n;->n:I

    .line 65
    iput-object v2, p0, Lu/aly/aw$n;->o:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lu/aly/aw$n;->p:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lu/aly/aw$n;->q:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lu/aly/aw$n;->r:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lu/aly/aw$n;->s:Ljava/lang/String;

    .line 73
    invoke-static {}, Lu/aly/bk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aw$n;->t:Ljava/lang/String;

    .line 74
    const-string v0, "Android"

    iput-object v0, p0, Lu/aly/aw$n;->u:Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->v:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lu/aly/aw$n;->w:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lu/aly/aw$n;->x:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lu/aly/aw$n;->y:Ljava/lang/String;

    .line 80
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->z:Ljava/lang/String;

    .line 81
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->A:Ljava/lang/String;

    .line 82
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->B:Ljava/lang/String;

    .line 83
    sget-wide v0, Landroid/os/Build;->TIME:J

    iput-wide v0, p0, Lu/aly/aw$n;->C:J

    .line 84
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->D:Ljava/lang/String;

    .line 85
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->E:Ljava/lang/String;

    .line 86
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aw$n;->F:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lu/aly/aw$n;->G:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lu/aly/aw$n;->H:Ljava/lang/String;

    .line 94
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lu/aly/aw$n;->I:J

    .line 95
    iput-object v2, p0, Lu/aly/aw$n;->J:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lu/aly/aw$n;->K:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lu/aly/aw$n;->L:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lu/aly/aw$n;->M:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lu/aly/aw$n;->N:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lu/aly/aw$n;->O:Ljava/lang/String;

    .line 104
    iput-wide v4, p0, Lu/aly/aw$n;->P:J

    .line 105
    iput-wide v4, p0, Lu/aly/aw$n;->Q:J

    .line 106
    iput-wide v4, p0, Lu/aly/aw$n;->R:J

    .line 108
    iput-object v2, p0, Lu/aly/aw$n;->S:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lu/aly/aw$n;->T:Ljava/lang/String;

    return-void
.end method
