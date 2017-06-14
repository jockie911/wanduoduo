.class public Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImageRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageAdapter"


# instance fields
.field private final mListener:Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zfdang/multiple_images_selector/models/ImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;)V
    .locals 0
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zfdang/multiple_images_selector/models/ImageItem;",
            ">;",
            "Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/zfdang/multiple_images_selector/models/ImageItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->mValues:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;)Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->onBindViewHolder(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;I)V
    .locals 6
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 41
    iget-object v3, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zfdang/multiple_images_selector/models/ImageItem;

    .line 42
    .local v1, imageItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;
    iput-object v1, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    .line 45
    invoke-virtual {v1}, Lcom/zfdang/multiple_images_selector/models/ImageItem;->isCamera()Z

    move-result v3

    if-nez v3, :cond_2

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 53
    .local v2, newURI:Landroid/net/Uri;
    :goto_0
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mDrawee:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v3}, Lcom/zfdang/multiple_images_selector/utilities/DraweeUtils;->showThumb(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 55
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mImageName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mChecked:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v3, v1, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    invoke-static {v3}, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->isImageSelected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mMask:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mChecked:Landroid/widget/ImageView;

    sget v4, Lcom/zfdang/multiple_images_selector/R$drawable;->image_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    .end local v0           #imageFile:Ljava/io/File;
    :goto_1
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v4, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;-><init>(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;Lcom/zfdang/multiple_images_selector/models/ImageItem;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void

    .line 51
    .end local v2           #newURI:Landroid/net/Uri;
    .restart local v0       #imageFile:Ljava/io/File;
    :cond_0
    sget v3, Lcom/zfdang/multiple_images_selector/R$drawable;->default_image:I

    invoke-static {v3}, Lcom/zfdang/multiple_images_selector/utilities/FileUtils;->getUriByResId(I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #newURI:Landroid/net/Uri;
    goto :goto_0

    .line 61
    :cond_1
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mMask:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mChecked:Landroid/widget/ImageView;

    sget v4, Lcom/zfdang/multiple_images_selector/R$drawable;->image_unselected:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 66
    .end local v0           #imageFile:Ljava/io/File;
    .end local v2           #newURI:Landroid/net/Uri;
    :cond_2
    sget v3, Lcom/zfdang/multiple_images_selector/R$drawable;->ic_photo_camera_white_48dp:I

    invoke-static {v3}, Lcom/zfdang/multiple_images_selector/utilities/FileUtils;->getUriByResId(I)Landroid/net/Uri;

    move-result-object v2

    .line 67
    .restart local v2       #newURI:Landroid/net/Uri;
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mDrawee:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v3}, Lcom/zfdang/multiple_images_selector/utilities/DraweeUtils;->showThumb(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 69
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mImageName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mChecked:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v3, p1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mMask:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;
    .locals 4
    .parameter "parent"
    .parameter "viewType"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/zfdang/multiple_images_selector/R$layout;->recyclerview_image_item:I

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;-><init>(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
