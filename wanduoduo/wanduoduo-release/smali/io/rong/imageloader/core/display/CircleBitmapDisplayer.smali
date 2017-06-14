.class public Lio/rong/imageloader/core/display/CircleBitmapDisplayer;
.super Ljava/lang/Object;
.source "CircleBitmapDisplayer.java"

# interfaces
.implements Lio/rong/imageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imageloader/core/display/CircleBitmapDisplayer$CircleDrawable;
    }
.end annotation


# instance fields
.field protected final strokeColor:Ljava/lang/Integer;

.field protected final strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;-><init>(Ljava/lang/Integer;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .parameter "strokeColor"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;-><init>(Ljava/lang/Integer;F)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;F)V
    .locals 0
    .parameter "strokeColor"
    .parameter "strokeWidth"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;->strokeColor:Ljava/lang/Integer;

    .line 60
    iput p2, p0, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;->strokeWidth:F

    .line 61
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/assist/LoadedFrom;)V
    .locals 3
    .parameter "bitmap"
    .parameter "imageAware"
    .parameter "loadedFrom"

    .prologue
    .line 65
    instance-of v0, p2, Lio/rong/imageloader/core/imageaware/ImageViewAware;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    new-instance v0, Lio/rong/imageloader/core/display/CircleBitmapDisplayer$CircleDrawable;

    iget-object v1, p0, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;->strokeColor:Ljava/lang/Integer;

    iget v2, p0, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;->strokeWidth:F

    invoke-direct {v0, p1, v1, v2}, Lio/rong/imageloader/core/display/CircleBitmapDisplayer$CircleDrawable;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;F)V

    invoke-interface {p2, v0}, Lio/rong/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 70
    return-void
.end method
