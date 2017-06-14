.class Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$2;
.super Lrx/Subscriber;
.source "ImagesSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->LoadFolderAndImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lcom/zfdang/multiple_images_selector/models/ImageItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$2;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 297
    const-string v0, "ImageSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public onNext(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V
    .locals 2
    .parameter "imageItem"

    .prologue
    .line 303
    invoke-static {p1}, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->addItem(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V

    .line 304
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$2;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$200(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    sget-object v1, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 305
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    check-cast p1, Lcom/zfdang/multiple_images_selector/models/ImageItem;

    invoke-virtual {p0, p1}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$2;->onNext(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V

    return-void
.end method
