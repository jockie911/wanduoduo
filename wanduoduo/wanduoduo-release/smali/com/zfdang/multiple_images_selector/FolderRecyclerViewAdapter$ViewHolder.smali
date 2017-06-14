.class public Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FolderRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field folderCover:Lcom/facebook/drawee/view/SimpleDraweeView;

.field folderIndicator:Landroid/widget/ImageView;

.field folderName:Landroid/widget/TextView;

.field folderPath:Landroid/widget/TextView;

.field folderSize:Landroid/widget/TextView;

.field mItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1
    .parameter "this$0"
    .parameter "view"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

    .line 87
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    iput-object p2, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 89
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->folder_cover_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderCover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 90
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->folder_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->folder_path:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderPath:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->folder_size:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderSize:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->folder_selected_indicator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderIndicator:Landroid/widget/ImageView;

    .line 94
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewHolder{folderCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderCover:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folderPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderPath:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folderIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->folderIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
