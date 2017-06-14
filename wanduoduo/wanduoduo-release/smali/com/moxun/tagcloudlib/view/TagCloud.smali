.class public Lcom/moxun/tagcloudlib/view/TagCloud;
.super Ljava/lang/Object;
.source "TagCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moxun/tagcloudlib/view/TagCloud$TagComparator;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR_DARK:[F = null

.field private static final DEFAULT_COLOR_LIGHT:[F = null

.field private static final DEFAULT_RADIUS:I = 0x3


# instance fields
.field private cos_mAngleX:F

.field private cos_mAngleY:F

.field private cos_mAngleZ:F

.field private distrEven:Z

.field private largest:I

.field private mAngleX:F

.field private mAngleY:F

.field private mAngleZ:F

.field private radius:I

.field private sin_mAngleX:F

.field private sin_mAngleY:F

.field private sin_mAngleZ:F

.field private smallest:I

.field private tagCloud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moxun/tagcloudlib/view/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private tagColorDark:[F

.field private tagColorLight:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/moxun/tagcloudlib/view/TagCloud;->DEFAULT_COLOR_DARK:[F

    .line 36
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/moxun/tagcloudlib/view/TagCloud;->DEFAULT_COLOR_LIGHT:[F

    return-void

    .line 35
    :array_0
    .array-data 0x4
        0xe5t 0xd0t 0x62t 0x3ft
        0x9at 0x99t 0x39t 0x3ft
        0x12t 0x83t 0x40t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/moxun/tagcloudlib/view/TagCloud;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/moxun/tagcloudlib/view/TagCloud;-><init>(Ljava/util/List;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/moxun/tagcloudlib/view/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/moxun/tagcloudlib/view/Tag;>;"
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/moxun/tagcloudlib/view/TagCloud;-><init>(Ljava/util/List;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "radius"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/moxun/tagcloudlib/view/Tag;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/moxun/tagcloudlib/view/Tag;>;"
    sget-object v0, Lcom/moxun/tagcloudlib/view/TagCloud;->DEFAULT_COLOR_DARK:[F

    sget-object v1, Lcom/moxun/tagcloudlib/view/TagCloud;->DEFAULT_COLOR_LIGHT:[F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/moxun/tagcloudlib/view/TagCloud;-><init>(Ljava/util/List;I[F[F)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I[F[F)V
    .locals 1
    .parameter
    .parameter "radius"
    .parameter "tagColor1"
    .parameter "tagColor2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/moxun/tagcloudlib/view/Tag;",
            ">;I[F[F)V"
        }
    .end annotation

    .prologue
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/moxun/tagcloudlib/view/Tag;>;"
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleZ:F

    .line 41
    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleX:F

    .line 42
    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleY:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->distrEven:Z

    .line 65
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    .line 66
    iput p2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    .line 67
    iput-object p3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorLight:[F

    .line 68
    iput-object p4, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorDark:[F

    .line 69
    return-void
.end method

.method private getColorFromGradient(F)[F
    .locals 8
    .parameter "percentage"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 233
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 234
    .local v0, rgba:[F
    aput v4, v0, v5

    .line 235
    iget-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorDark:[F

    aget v1, v1, v5

    mul-float/2addr v1, p1

    sub-float v2, v4, p1

    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorLight:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 236
    iget-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorDark:[F

    aget v1, v1, v6

    mul-float/2addr v1, p1

    sub-float v2, v4, p1

    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorLight:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    .line 237
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorDark:[F

    aget v2, v2, v7

    mul-float/2addr v2, p1

    sub-float v3, v4, p1

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorLight:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 238
    return-object v0
.end method

.method private getPercentage(Lcom/moxun/tagcloudlib/view/Tag;)F
    .locals 4
    .parameter "tag"

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/moxun/tagcloudlib/view/Tag;->getPopularity()I

    move-result v0

    .line 143
    .local v0, p:I
    iget v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->smallest:I

    iget v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->largest:I

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    return v1

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->smallest:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->largest:I

    int-to-float v2, v2

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->smallest:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private initTag(Lcom/moxun/tagcloudlib/view/Tag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/moxun/tagcloudlib/view/TagCloud;->getPercentage(Lcom/moxun/tagcloudlib/view/Tag;)F

    move-result v1

    .line 137
    .local v1, percentage:F
    invoke-direct {p0, v1}, Lcom/moxun/tagcloudlib/view/TagCloud;->getColorFromGradient(F)[F

    move-result-object v0

    .line 138
    .local v0, argb:[F
    invoke-virtual {p1, v0}, Lcom/moxun/tagcloudlib/view/Tag;->setColorByArray([F)V

    .line 139
    return-void
.end method

.method private position(ZLcom/moxun/tagcloudlib/view/Tag;)V
    .locals 10
    .parameter "distrEven"
    .parameter "newTag"

    .prologue
    .line 158
    const-wide/16 v2, 0x0

    .line 159
    .local v2, phi:D
    const-wide/16 v4, 0x0

    .line 160
    .local v4, theta:D
    iget-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 164
    .local v0, max:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L

    mul-double v2, v6, v8

    .line 165
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x401921fb54442d18L

    mul-double v4, v6, v8

    .line 167
    iget v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    int-to-double v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v1, v6

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/moxun/tagcloudlib/view/Tag;->setLocX(F)V

    .line 168
    iget v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    int-to-double v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v1, v6

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/moxun/tagcloudlib/view/Tag;->setLocY(F)V

    .line 169
    iget v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    int-to-double v6, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v1, v6

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/moxun/tagcloudlib/view/Tag;->setLocZ(F)V

    .line 170
    return-void
.end method

.method private positionAll(Z)V
    .locals 14
    .parameter "distrEven"

    .prologue
    const-wide v12, 0x400921fb54442d18L

    .line 173
    const-wide/16 v2, 0x0

    .line 174
    .local v2, phi:D
    const-wide/16 v4, 0x0

    .line 175
    .local v4, theta:D
    iget-object v6, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 177
    .local v1, max:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    add-int/lit8 v6, v1, 0x1

    if-ge v0, v6, :cond_1

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-wide/high16 v6, -0x4010

    const-wide/high16 v8, 0x4000

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double/2addr v8, v10

    int-to-double v10, v1

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 180
    int-to-double v6, v1

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v4, v6, v2

    .line 187
    :goto_1
    iget-object v6, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/moxun/tagcloudlib/view/Tag;

    iget v7, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    int-to-double v8, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/moxun/tagcloudlib/view/Tag;->setLocX(F)V

    .line 189
    iget-object v6, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/moxun/tagcloudlib/view/Tag;

    iget v7, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    int-to-double v8, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/moxun/tagcloudlib/view/Tag;->setLocY(F)V

    .line 190
    iget-object v6, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/moxun/tagcloudlib/view/Tag;

    iget v7, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    int-to-double v8, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/moxun/tagcloudlib/view/Tag;->setLocZ(F)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double v2, v6, v12

    .line 183
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x401921fb54442d18L

    mul-double v4, v6, v8

    goto :goto_1

    .line 192
    :cond_1
    return-void
.end method

.method private sineCosine(FFF)V
    .locals 4
    .parameter "mAngleX"
    .parameter "mAngleY"
    .parameter "mAngleZ"

    .prologue
    .line 242
    const-wide v0, 0x3f91df46a2529d39L

    .line 243
    .local v0, degToRad:D
    float-to-double v2, p1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleX:F

    .line 244
    float-to-double v2, p1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleX:F

    .line 245
    float-to-double v2, p2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleY:F

    .line 246
    float-to-double v2, p2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleY:F

    .line 247
    float-to-double v2, p3

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleZ:F

    .line 248
    float-to-double v2, p3

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleZ:F

    .line 249
    return-void
.end method

.method private updateAll()V
    .locals 17

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    .line 198
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14}, Lcom/moxun/tagcloudlib/view/Tag;->getLocX()F

    move-result v5

    .line 202
    .local v5, rx1:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14}, Lcom/moxun/tagcloudlib/view/Tag;->getLocY()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleX:F

    mul-float/2addr v15, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    .line 203
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14}, Lcom/moxun/tagcloudlib/view/Tag;->getLocZ()F

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleX:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    mul-float v14, v14, v16

    add-float v8, v15, v14

    .line 204
    .local v8, ry1:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14}, Lcom/moxun/tagcloudlib/view/Tag;->getLocY()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleX:F

    mul-float/2addr v15, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    .line 205
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14}, Lcom/moxun/tagcloudlib/view/Tag;->getLocZ()F

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleX:F

    move/from16 v16, v0

    mul-float v14, v14, v16

    add-float v11, v15, v14

    .line 207
    .local v11, rz1:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleY:F

    mul-float/2addr v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleY:F

    mul-float/2addr v15, v11

    add-float v6, v14, v15

    .line 208
    .local v6, rx2:F
    move v9, v8

    .line 209
    .local v9, ry2:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleY:F

    neg-float v14, v14

    mul-float/2addr v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleY:F

    mul-float/2addr v15, v11

    add-float v12, v14, v15

    .line 211
    .local v12, rz2:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleZ:F

    mul-float/2addr v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleZ:F

    neg-float v15, v15

    mul-float/2addr v15, v9

    add-float v7, v14, v15

    .line 212
    .local v7, rx3:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->sin_mAngleZ:F

    mul-float/2addr v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->cos_mAngleZ:F

    mul-float/2addr v15, v9

    add-float v10, v14, v15

    .line 213
    .local v10, ry3:F
    move v13, v12

    .line 215
    .local v13, rz3:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14, v7}, Lcom/moxun/tagcloudlib/view/Tag;->setLocX(F)V

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14, v10}, Lcom/moxun/tagcloudlib/view/Tag;->setLocY(F)V

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14, v13}, Lcom/moxun/tagcloudlib/view/Tag;->setLocZ(F)V

    .line 220
    move-object/from16 v0, p0

    iget v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    mul-int/lit8 v1, v14, 0x2

    .line 221
    .local v1, diameter:I
    int-to-float v14, v1

    const/high16 v15, 0x3f80

    div-float/2addr v14, v15

    int-to-float v15, v1

    add-float/2addr v15, v13

    div-float v4, v14, v15

    .line 223
    .local v4, per:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    mul-float v15, v7, v4

    float-to-int v15, v15

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Lcom/moxun/tagcloudlib/view/Tag;->setLoc2DX(F)V

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    mul-float v15, v10, v4

    float-to-int v15, v15

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Lcom/moxun/tagcloudlib/view/Tag;->setLoc2DY(F)V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v14, v4}, Lcom/moxun/tagcloudlib/view/Tag;->setScale(F)V

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/moxun/tagcloudlib/view/Tag;

    const/high16 v15, 0x4000

    div-float v15, v4, v15

    invoke-virtual {v14, v15}, Lcom/moxun/tagcloudlib/view/Tag;->setAlpha(F)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 228
    .end local v1           #diameter:I
    .end local v4           #per:F
    .end local v5           #rx1:F
    .end local v6           #rx2:F
    .end local v7           #rx3:F
    .end local v8           #ry1:F
    .end local v9           #ry2:F
    .end local v10           #ry3:F
    .end local v11           #rz1:F
    .end local v12           #rz2:F
    .end local v13           #rz3:F
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/moxun/tagcloudlib/view/TagCloud;->sortTagByScale()V

    .line 229
    return-void
.end method


# virtual methods
.method public add(Lcom/moxun/tagcloudlib/view/Tag;)V
    .locals 1
    .parameter "newTag"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/moxun/tagcloudlib/view/TagCloud;->initTag(Lcom/moxun/tagcloudlib/view/Tag;)V

    .line 151
    iget-boolean v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->distrEven:Z

    invoke-direct {p0, v0, p1}, Lcom/moxun/tagcloudlib/view/TagCloud;->position(ZLcom/moxun/tagcloudlib/view/Tag;)V

    .line 153
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloud;->updateAll()V

    .line 155
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public create(Z)V
    .locals 6
    .parameter "distrEven"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->distrEven:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/moxun/tagcloudlib/view/TagCloud;->positionAll(Z)V

    .line 76
    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleX:F

    iget v4, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleY:F

    iget v5, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleZ:F

    invoke-direct {p0, v3, v4, v5}, Lcom/moxun/tagcloudlib/view/TagCloud;->sineCosine(FFF)V

    .line 77
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloud;->updateAll()V

    .line 81
    const/16 v3, 0x270f

    iput v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->smallest:I

    .line 82
    const/4 v3, 0x0

    iput v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->largest:I

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/Tag;->getPopularity()I

    move-result v1

    .line 85
    .local v1, j:I
    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->largest:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->largest:I

    .line 86
    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->smallest:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->smallest:I

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1           #j:I
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moxun/tagcloudlib/view/Tag;

    .line 93
    .local v2, tempTag:Lcom/moxun/tagcloudlib/view/Tag;
    invoke-direct {p0, v2}, Lcom/moxun/tagcloudlib/view/TagCloud;->initTag(Lcom/moxun/tagcloudlib/view/Tag;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v2           #tempTag:Lcom/moxun/tagcloudlib/view/Tag;
    :cond_1
    return-void
.end method

.method public get(I)Lcom/moxun/tagcloudlib/view/Tag;
    .locals 1
    .parameter "position"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moxun/tagcloudlib/view/Tag;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/moxun/tagcloudlib/view/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    return-object v0
.end method

.method public getTop()Lcom/moxun/tagcloudlib/view/Tag;
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 115
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/moxun/tagcloudlib/view/TagCloud;->get(I)Lcom/moxun/tagcloudlib/view/Tag;

    move-result-object v1

    return-object v1
.end method

.method public indexOf(Lcom/moxun/tagcloudlib/view/Tag;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->distrEven:Z

    invoke-virtual {p0, v0}, Lcom/moxun/tagcloudlib/view/TagCloud;->create(Z)V

    .line 124
    return-void
.end method

.method public setAngleX(F)V
    .locals 0
    .parameter "mAngleX"

    .prologue
    .line 264
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleX:F

    .line 265
    return-void
.end method

.method public setAngleY(F)V
    .locals 0
    .parameter "mAngleY"

    .prologue
    .line 268
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleY:F

    .line 269
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 252
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->radius:I

    .line 253
    return-void
.end method

.method public setTagColorDark([F)V
    .locals 0
    .parameter "tagColorDark"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorDark:[F

    .line 261
    return-void
.end method

.method public setTagColorLight([F)V
    .locals 0
    .parameter "tagColor"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagColorLight:[F

    .line 257
    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/moxun/tagcloudlib/view/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/moxun/tagcloudlib/view/Tag;>;"
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    .line 107
    return-void
.end method

.method public sortTagByScale()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->tagCloud:Ljava/util/List;

    new-instance v1, Lcom/moxun/tagcloudlib/view/TagCloud$TagComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/moxun/tagcloudlib/view/TagCloud$TagComparator;-><init>(Lcom/moxun/tagcloudlib/view/TagCloud$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    const-wide v2, 0x3fb999999999999aL

    .line 129
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 130
    :cond_0
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleX:F

    iget v1, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleY:F

    iget v2, p0, Lcom/moxun/tagcloudlib/view/TagCloud;->mAngleZ:F

    invoke-direct {p0, v0, v1, v2}, Lcom/moxun/tagcloudlib/view/TagCloud;->sineCosine(FFF)V

    .line 131
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloud;->updateAll()V

    .line 133
    :cond_1
    return-void
.end method
