.class Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PicturePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PicturePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/activity/PicturePreviewActivity;


# direct methods
.method private constructor <init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imkit/activity/PicturePreviewActivity;Lio/rong/imkit/activity/PicturePreviewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 327
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$100(Lio/rong/imkit/activity/PicturePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 272
    new-instance v7, Lio/rong/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lio/rong/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 273
    .local v7, photoView:Lio/rong/photoview/PhotoView;
    new-instance v0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;)V

    invoke-virtual {v7, v0}, Lio/rong/photoview/PhotoView;->setOnViewTapListener(Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 304
    invoke-virtual {p1, v7, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 305
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$100(Lio/rong/imkit/activity/PicturePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->uri:Ljava/lang/String;

    .line 306
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->removePathFromShowlist(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->addPathToShowlist(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    new-instance v4, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$2;

    invoke-direct {v4, p0, v7}, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$2;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;Lio/rong/photoview/PhotoView;)V

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 317
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 318
    invoke-virtual {v7, v6}, Lio/rong/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    :goto_0
    return-object v7

    .line 320
    :cond_0
    sget v0, Lio/rong/imkit/R$drawable;->rc_grid_image_default:I

    invoke-virtual {v7, v0}, Lio/rong/photoview/PhotoView;->setImageResource(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 267
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
