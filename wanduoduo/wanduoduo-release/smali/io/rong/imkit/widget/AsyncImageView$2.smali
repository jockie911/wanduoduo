.class Lio/rong/imkit/widget/AsyncImageView$2;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Lio/rong/imageloader/core/listener/ImageLoadingListener;


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

.field final synthetic val$loadingListener:Lio/rong/imkit/widget/IImageLoadingListener;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/AsyncImageView;Lio/rong/imkit/widget/IImageLoadingListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView$2;->this$0:Lio/rong/imkit/widget/AsyncImageView;

    iput-object p2, p0, Lio/rong/imkit/widget/AsyncImageView$2;->val$loadingListener:Lio/rong/imkit/widget/IImageLoadingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .parameter "imageUri"
    .parameter "view"

    .prologue
    .line 299
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$2;->val$loadingListener:Lio/rong/imkit/widget/IImageLoadingListener;

    invoke-interface {v0}, Lio/rong/imkit/widget/IImageLoadingListener;->onLoadingFail()V

    .line 300
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "imageUri"
    .parameter "view"
    .parameter "loadedImage"

    .prologue
    .line 290
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imageloader/core/ImageLoader;->getDiskCache()Lio/rong/imageloader/cache/disc/DiskCache;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/rong/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 291
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView$2;->val$loadingListener:Lio/rong/imkit/widget/IImageLoadingListener;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/rong/imkit/widget/IImageLoadingListener;->onLoadingComplete(Landroid/net/Uri;)V

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView$2;->val$loadingListener:Lio/rong/imkit/widget/IImageLoadingListener;

    invoke-interface {v1}, Lio/rong/imkit/widget/IImageLoadingListener;->onLoadingFail()V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lio/rong/imageloader/core/assist/FailReason;)V
    .locals 1
    .parameter "imageUri"
    .parameter "view"
    .parameter "failReason"

    .prologue
    .line 285
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$2;->val$loadingListener:Lio/rong/imkit/widget/IImageLoadingListener;

    invoke-interface {v0}, Lio/rong/imkit/widget/IImageLoadingListener;->onLoadingFail()V

    .line 286
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"

    .prologue
    .line 281
    return-void
.end method
