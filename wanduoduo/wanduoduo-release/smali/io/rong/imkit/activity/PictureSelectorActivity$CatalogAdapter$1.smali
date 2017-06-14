.class Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$1;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Lio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$1;->this$1:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onLoadImageCallBack(Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "bitmap"
    .parameter "path1"
    .parameter "objects"

    .prologue
    .line 615
    if-nez p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$1;->this$1:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 619
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$1;->this$1:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$800(Lio/rong/imkit/activity/PictureSelectorActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 620
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$1;->this$1:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
