.class public Lcom/moxun/tagcloudlib/view/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field private static final DEFAULT_POPULARITY:I = 0x5


# instance fields
.field private argb:[F

.field private loc2DX:F

.field private loc2DY:F

.field private locX:F

.field private locY:F

.field private locZ:F

.field private mView:Landroid/view/View;

.field private popularity:I

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 40
    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/moxun/tagcloudlib/view/Tag;-><init>(FFFFI)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6
    .parameter "locX"
    .parameter "locY"
    .parameter "locZ"

    .prologue
    .line 48
    const/high16 v4, 0x3f80

    const/4 v5, 0x5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/moxun/tagcloudlib/view/Tag;-><init>(FFFFI)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .parameter "locX"
    .parameter "locY"
    .parameter "locZ"
    .parameter "scale"

    .prologue
    .line 52
    const/4 v5, 0x5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/moxun/tagcloudlib/view/Tag;-><init>(FFFFI)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 1
    .parameter "locX"
    .parameter "locY"
    .parameter "locZ"
    .parameter "scale"
    .parameter "popularity"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->locX:F

    .line 57
    iput p2, p0, Lcom/moxun/tagcloudlib/view/Tag;->locY:F

    .line 58
    iput p3, p0, Lcom/moxun/tagcloudlib/view/Tag;->locZ:F

    .line 60
    iput v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->loc2DX:F

    .line 61
    iput v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->loc2DY:F

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->argb:[F

    .line 65
    iput p4, p0, Lcom/moxun/tagcloudlib/view/Tag;->scale:F

    .line 66
    iput p5, p0, Lcom/moxun/tagcloudlib/view/Tag;->popularity:I

    .line 67
    return-void

    .line 63
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "popularity"

    .prologue
    const/4 v1, 0x0

    .line 44
    const/high16 v4, 0x3f80

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/moxun/tagcloudlib/view/Tag;-><init>(FFFFI)V

    .line 45
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 6

    .prologue
    const/4 v4, 0x4

    .line 144
    new-array v1, v4, [I

    .line 145
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 146
    iget-object v2, p0, Lcom/moxun/tagcloudlib/view/Tag;->argb:[F

    aget v2, v2, v0

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2
.end method

.method public getLoc2DX()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->loc2DX:F

    return v0
.end method

.method public getLoc2DY()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->loc2DY:F

    return v0
.end method

.method public getLocX()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->locX:F

    return v0
.end method

.method public getLocY()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->locY:F

    return v0
.end method

.method public getLocZ()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->locZ:F

    return v0
.end method

.method public getPopularity()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->popularity:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->scale:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/Tag;->argb:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 111
    return-void
.end method

.method public setColorByArray([F)V
    .locals 4
    .parameter "rgb"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/moxun/tagcloudlib/view/Tag;->argb:[F

    iget-object v2, p0, Lcom/moxun/tagcloudlib/view/Tag;->argb:[F

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    :cond_0
    return-void
.end method

.method public setLoc2DX(F)V
    .locals 0
    .parameter "loc2dx"

    .prologue
    .line 126
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->loc2DX:F

    .line 127
    return-void
.end method

.method public setLoc2DY(F)V
    .locals 0
    .parameter "loc2dy"

    .prologue
    .line 134
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->loc2DY:F

    .line 135
    return-void
.end method

.method public setLocX(F)V
    .locals 0
    .parameter "locX"

    .prologue
    .line 74
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->locX:F

    .line 75
    return-void
.end method

.method public setLocY(F)V
    .locals 0
    .parameter "locY"

    .prologue
    .line 82
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->locY:F

    .line 83
    return-void
.end method

.method public setLocZ(F)V
    .locals 0
    .parameter "locZ"

    .prologue
    .line 90
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->locZ:F

    .line 91
    return-void
.end method

.method public setPopularity(I)V
    .locals 0
    .parameter "popularity"

    .prologue
    .line 118
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->popularity:I

    .line 119
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 98
    iput p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->scale:F

    .line 99
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/Tag;->mView:Landroid/view/View;

    .line 107
    return-void
.end method
