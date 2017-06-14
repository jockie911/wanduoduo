.class Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PicturePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PicturePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;

.field private onMenuWindowClick:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lio/rong/imkit/activity/PicturePagerActivity;


# direct methods
.method private constructor <init>(Lio/rong/imkit/activity/PicturePagerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$1;-><init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;)V

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->onMenuWindowClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imkit/activity/PicturePagerActivity;Lio/rong/imkit/activity/PicturePagerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;-><init>(Lio/rong/imkit/activity/PicturePagerActivity;)V

    return-void
.end method

.method static synthetic access$300(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;ILandroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->updatePhotoView(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;)Lio/rong/imkit/widget/PicturePopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;

    return-object v0
.end method

.method static synthetic access$902(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;Lio/rong/imkit/widget/PicturePopupWindow;)Lio/rong/imkit/widget/PicturePopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;

    return-object p1
.end method

.method private createDisplayImageOptions(Landroid/net/Uri;)Lio/rong/imageloader/core/DisplayImageOptions;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 370
    new-instance v0, Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 371
    .local v0, builder:Lio/rong/imageloader/core/DisplayImageOptions$Builder;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 372
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->showImageOnFail(Landroid/graphics/drawable/Drawable;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->handler(Landroid/os/Handler;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->build()Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v2

    return-object v2
.end method

.method private isDuplicate(I)Z
    .locals 3
    .parameter "messageId"

    .prologue
    .line 239
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    .line 240
    .local v1, info:Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;
    invoke-virtual {v1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->getMessageId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 241
    const/4 v2, 0x1

    .line 243
    .end local v1           #info:Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private newView(Landroid/content/Context;Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "imageInfo"

    .prologue
    .line 183
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_fr_image:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 185
    .local v1, result:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;-><init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;)V

    .line 186
    .local v0, holder:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 187
    sget v2, Lio/rong/imkit/R$id;->rc_txt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    .line 188
    sget v2, Lio/rong/imkit/R$id;->rc_photoView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/photoview/PhotoView;

    iput-object v2, v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    .line 189
    iget-object v2, v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    new-instance v3, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$2;

    invoke-direct {v3, p0, p2}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$2;-><init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;)V

    invoke-virtual {v2, v3}, Lio/rong/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    iget-object v2, v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    new-instance v3, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$3;

    invoke-direct {v3, p0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$3;-><init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;)V

    invoke-virtual {v2, v3}, Lio/rong/photoview/PhotoView;->setOnPhotoTapListener(Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 217
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    return-object v1
.end method

.method private updatePhotoView(ILandroid/view/View;)V
    .locals 12
    .parameter "position"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;

    .line 287
    .local v9, holder:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    invoke-virtual {v0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->getLargeImageUri()Landroid/net/Uri;

    move-result-object v10

    .line 288
    .local v10, originalUri:Landroid/net/Uri;
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    invoke-virtual {v0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->getThumbUri()Landroid/net/Uri;

    move-result-object v11

    .line 290
    .local v11, thumbUri:Landroid/net/Uri;
    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    .line 291
    :cond_0
    const-string v0, "PicturePagerActivity"

    const-string v1, "large uri and thumbnail uri of the image should not be null."

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    :cond_2
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imageloader/core/ImageLoader;->getDiskCache()Lio/rong/imageloader/cache/disc/DiskCache;

    move-result-object v0

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 301
    .local v8, file:Ljava/io/File;
    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->addPathToShowlist(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$4;

    invoke-direct {v4, p0, v9}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$4;-><init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;)V

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 312
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 313
    iget-object v0, v9, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    invoke-virtual {v0, v6}, Lio/rong/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 299
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #file:Ljava/io/File;
    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8       #file:Ljava/io/File;
    goto :goto_1

    .line 315
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 316
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v0, v9, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    invoke-virtual {v0, v7}, Lio/rong/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 318
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentIndex:I
    invoke-static {v0}, Lio/rong/imkit/activity/PicturePagerActivity;->access$000(Lio/rong/imkit/activity/PicturePagerActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    .line 319
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 320
    .restart local v7       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v0, v9, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    invoke-virtual {v0, v7}, Lio/rong/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 322
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    new-instance v2, Lio/rong/imageloader/core/imageaware/ImageViewAware;

    iget-object v0, v9, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    invoke-direct {v2, v0}, Lio/rong/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 323
    .local v2, imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;
    invoke-static {v0}, Lio/rong/imkit/activity/PicturePagerActivity;->access$1000(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imageloader/core/imageaware/ImageAware;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 324
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;
    invoke-static {v1}, Lio/rong/imkit/activity/PicturePagerActivity;->access$1000(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imageloader/core/imageaware/ImageAware;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imageloader/core/ImageLoader;->cancelDisplayTask(Lio/rong/imageloader/core/imageaware/ImageAware;)V

    .line 326
    :cond_7
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v11}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->createDisplayImageOptions(Landroid/net/Uri;)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$5;

    invoke-direct {v4, p0, v9}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$5;-><init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;)V

    new-instance v5, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$6;

    invoke-direct {v5, p0, v9}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$6;-><init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;)V

    invoke-virtual/range {v0 .. v5}, Lio/rong/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/DisplayImageOptions;Lio/rong/imageloader/core/listener/ImageLoadingListener;Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;)V

    .line 365
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #setter for: Lio/rong/imkit/activity/PicturePagerActivity;->mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;
    invoke-static {v0, v2}, Lio/rong/imkit/activity/PicturePagerActivity;->access$1002(Lio/rong/imkit/activity/PicturePagerActivity;Lio/rong/imageloader/core/imageaware/ImageAware;)Lio/rong/imageloader/core/imageaware/ImageAware;

    goto/16 :goto_0
.end method


# virtual methods
.method public addData(Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, newImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;>;"
    const/4 v2, 0x0

    .line 223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 226
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 227
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z
    invoke-static {v1}, Lio/rong/imkit/activity/PicturePagerActivity;->access$600(Lio/rong/imkit/activity/PicturePagerActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    invoke-virtual {v1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->getMessageId()I

    move-result v1

    invoke-direct {p0, v1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->isDuplicate(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;>;"
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 233
    .end local v0           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;>;"
    :cond_3
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z
    invoke-static {v1}, Lio/rong/imkit/activity/PicturePagerActivity;->access$600(Lio/rong/imkit/activity/PicturePagerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    invoke-virtual {v1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->getMessageId()I

    move-result v1

    invoke-direct {p0, v1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->isDuplicate(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 278
    const-string v1, "PicturePagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyItem.position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;

    .line 280
    .local v0, holder:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;
    iget-object v1, v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$ViewHolder;->photoView:Lio/rong/photoview/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/photoview/PhotoView;->setImageURI(Landroid/net/Uri;)V

    .line 281
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 282
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 247
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 252
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    .line 267
    const-string v1, "PicturePagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem.position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    invoke-direct {p0, v2, v1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->newView(Landroid/content/Context;Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, imageView:Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->updatePhotoView(ILandroid/view/View;)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 262
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
