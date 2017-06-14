.class public Lio/rong/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Lio/rong/photoview/IPhotoView;


# instance fields
.field private mAttacher:Lio/rong/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/rong/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/rong/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attr"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    invoke-virtual {p0}, Lio/rong/photoview/PhotoView;->init()V

    .line 47
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    .line 96
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lio/rong/photoview/IPhotoView;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lio/rong/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lio/rong/photoview/PhotoView;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lio/rong/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getOnViewTapListener()Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Lio/rong/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lio/rong/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    .line 54
    :cond_1
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lio/rong/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    .line 58
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 311
    invoke-virtual {p0}, Lio/rong/photoview/PhotoView;->init()V

    .line 312
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 313
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->cleanup()V

    .line 306
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 307
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 148
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 149
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1
    .parameter "finalRectangle"

    .prologue
    .line 100
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->update()V

    .line 196
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->update()V

    .line 204
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 209
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher;->update()V

    .line 212
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .parameter "maxScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lio/rong/photoview/PhotoView;->setMaximumScale(F)V

    .line 177
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1
    .parameter "maximumScale"

    .prologue
    .line 181
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 182
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1
    .parameter "mediumScale"

    .prologue
    .line 170
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 171
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .parameter "midScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lio/rong/photoview/PhotoView;->setMediumScale(F)V

    .line 166
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .parameter "minScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lio/rong/photoview/PhotoView;->setMinimumScale(F)V

    .line 155
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1
    .parameter "minimumScale"

    .prologue
    .line 159
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 160
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1
    .parameter "newOnDoubleTapListener"

    .prologue
    .line 290
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 291
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 221
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 222
    return-void
.end method

.method public setOnMatrixChangeListener(Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 216
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 217
    return-void
.end method

.method public setOnPhotoTapListener(Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 226
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 227
    return-void
.end method

.method public setOnScaleChangeListener(Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 1
    .parameter "onScaleChangeListener"

    .prologue
    .line 295
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 296
    return-void
.end method

.method public setOnSingleFlingListener(Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;)V
    .locals 1
    .parameter "onSingleFlingListener"

    .prologue
    .line 300
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;)V

    .line 301
    return-void
.end method

.method public setOnViewTapListener(Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 236
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setOnViewTapListener(Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 237
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1
    .parameter "rotationDegree"

    .prologue
    .line 65
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 66
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1
    .parameter "rotationDegree"

    .prologue
    .line 75
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 76
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1
    .parameter "rotationDegree"

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 71
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 246
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setScale(F)V

    .line 247
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1
    .parameter "scale"
    .parameter "focalX"
    .parameter "focalY"
    .parameter "animate"

    .prologue
    .line 256
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 257
    return-void
.end method

.method public setScale(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "animate"

    .prologue
    .line 251
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lio/rong/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 252
    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1
    .parameter "minimumScale"
    .parameter "mediumScale"
    .parameter "maximumScale"

    .prologue
    .line 186
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/photoview/PhotoViewAttacher;->setScaleLevels(FFF)V

    .line 187
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 261
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iput-object p1, p0, Lio/rong/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 280
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 281
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1
    .parameter "zoomable"

    .prologue
    .line 270
    iget-object v0, p0, Lio/rong/photoview/PhotoView;->mAttacher:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 271
    return-void
.end method
