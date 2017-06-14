.class Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->newView(Landroid/content/Context;Lio/rong/imkit/tools/PhotoFragment$ImageInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

.field final synthetic val$imageInfo:Lio/rong/imkit/tools/PhotoFragment$ImageInfo;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;Lio/rong/imkit/tools/PhotoFragment$ImageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    iput-object p2, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;->val$imageInfo:Lio/rong/imkit/tools/PhotoFragment$ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;->val$imageInfo:Lio/rong/imkit/tools/PhotoFragment$ImageInfo;

    invoke-virtual {v2}, Lio/rong/imkit/tools/PhotoFragment$ImageInfo;->getLargeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 230
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 231
    .local v0, file:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    :cond_0
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imageloader/core/ImageLoader;->getDiskCache()Lio/rong/imageloader/cache/disc/DiskCache;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/rong/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 237
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    new-instance v3, Lio/rong/imkit/widget/PicturePopupWindow;

    iget-object v4, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    iget-object v4, v4, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-virtual {v4}, Lio/rong/imkit/tools/PhotoFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lio/rong/imkit/widget/PicturePopupWindow;-><init>(Landroid/content/Context;Ljava/io/File;)V

    #setter for: Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;
    invoke-static {v2, v3}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->access$1002(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;Lio/rong/imkit/widget/PicturePopupWindow;)Lio/rong/imkit/widget/PicturePopupWindow;

    .line 238
    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    #getter for: Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;
    invoke-static {v2}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->access$1000(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;)Lio/rong/imkit/widget/PicturePopupWindow;

    move-result-object v2

    const/16 v3, 0x51

    invoke-virtual {v2, p1, v3, v5, v5}, Lio/rong/imkit/widget/PicturePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 239
    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$2;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    #getter for: Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;
    invoke-static {v2}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->access$1000(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;)Lio/rong/imkit/widget/PicturePopupWindow;

    move-result-object v2

    invoke-virtual {v2, v5}, Lio/rong/imkit/widget/PicturePopupWindow;->setOutsideTouchable(Z)V

    .line 240
    return v5

    .line 235
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_0
.end method
