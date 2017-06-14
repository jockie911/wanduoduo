.class public Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FolderRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zfdang/multiple_images_selector/models/FolderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;)V
    .locals 1
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zfdang/multiple_images_selector/models/FolderItem;",
            ">;",
            "Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/zfdang/multiple_images_selector/models/FolderItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const-string v0, "FolderAdapter"

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->mValues:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;)Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    check-cast p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->onBindViewHolder(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;I)V
    .locals 3
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;

    .line 39
    .local v0, folderItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    iput-object v0, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->mItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;

    .line 40
    iget-object v1, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderPath:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zfdang/multiple_images_selector/models/FolderItem;->getNumOfImages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget v1, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->selectedFolderIndex:I

    if-ne p2, v1, :cond_0

    .line 45
    iget-object v1, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->coverImagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderCover:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v2}, Lcom/zfdang/multiple_images_selector/utilities/DraweeUtils;->showThumb(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 52
    iget-object v1, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v2, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;-><init>(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 47
    :cond_0
    iget-object v1, p1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderIndicator:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;
    .locals 4
    .parameter "parent"
    .parameter "viewType"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/zfdang/multiple_images_selector/R$layout;->popup_folder_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;-><init>(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
