.class Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

.field final synthetic val$failCause:Ljava/lang/Throwable;

.field final synthetic val$failType:Lio/rong/imageloader/core/assist/FailReason$FailType;


# direct methods
.method constructor <init>(Lio/rong/imageloader/core/LoadAndDisplayImageTask;Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iput-object p2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->val$failType:Lio/rong/imageloader/core/assist/FailReason$FailType;

    iput-object p3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->val$failCause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 357
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lio/rong/imageloader/core/DisplayImageOptions;->shouldShowImageOnFail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lio/rong/imageloader/core/DisplayImageOptions;->getDisplayer()Lio/rong/imageloader/core/display/BitmapDisplayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v2, v2, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    #getter for: Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    invoke-static {v3}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->access$000(Lio/rong/imageloader/core/LoadAndDisplayImageTask;)Lio/rong/imageloader/core/ImageLoaderConfiguration;

    move-result-object v3

    iget-object v3, v3, Lio/rong/imageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions;->getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imageloader/core/DisplayImageOptions;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lio/rong/imageloader/core/DisplayImageOptions;->getDisplayer()Lio/rong/imageloader/core/display/BitmapDisplayer;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v2, v2, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    sget-object v3, Lio/rong/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lio/rong/imageloader/core/assist/LoadedFrom;

    invoke-interface {v1, v0, v2, v3}, Lio/rong/imageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/assist/LoadedFrom;)V

    .line 366
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->listener:Lio/rong/imageloader/core/listener/ImageLoadingListener;

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v2, v2, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v3, v3, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    invoke-interface {v3}, Lio/rong/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lio/rong/imageloader/core/assist/FailReason;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->val$failType:Lio/rong/imageloader/core/assist/FailReason$FailType;

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->val$failCause:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Lio/rong/imageloader/core/assist/FailReason;-><init>(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imageloader/core/listener/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lio/rong/imageloader/core/assist/FailReason;)V

    .line 367
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    iget-object v2, v2, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;->this$0:Lio/rong/imageloader/core/LoadAndDisplayImageTask;

    #getter for: Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    invoke-static {v3}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->access$000(Lio/rong/imageloader/core/LoadAndDisplayImageTask;)Lio/rong/imageloader/core/ImageLoaderConfiguration;

    move-result-object v3

    iget-object v3, v3, Lio/rong/imageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions;->getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/rong/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0
.end method
