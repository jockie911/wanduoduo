.class Lio/rong/imkit/widget/AsyncImageView$1;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Lio/rong/imageloader/core/process/BitmapProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/AsyncImageView;->setLocationResource(Landroid/net/Uri;IIILio/rong/imkit/widget/IImageLoadingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/AsyncImageView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/AsyncImageView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView$1;->this$0:Lio/rong/imkit/widget/AsyncImageView;

    iput p2, p0, Lio/rong/imkit/widget/AsyncImageView$1;->val$w:I

    iput p3, p0, Lio/rong/imkit/widget/AsyncImageView$1;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 258
    .local v3, widthOrg:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 259
    .local v1, heightOrg:I
    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView$1;->val$w:I

    sub-int v6, v3, v6

    div-int/lit8 v4, v6, 0x2

    .line 260
    .local v4, xTopLeft:I
    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView$1;->val$h:I

    sub-int v6, v1, v6

    div-int/lit8 v5, v6, 0x2

    .line 262
    .local v5, yTopLeft:I
    if-lez v4, :cond_0

    if-gtz v5, :cond_2

    :cond_0
    move-object v2, p1

    .line 272
    :cond_1
    :goto_0
    return-object v2

    .line 267
    :cond_2
    :try_start_0
    iget v6, p0, Lio/rong/imkit/widget/AsyncImageView$1;->val$w:I

    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView$1;->val$h:I

    invoke-static {p1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 268
    .local v2, result:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v2           #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x0

    goto :goto_0
.end method
