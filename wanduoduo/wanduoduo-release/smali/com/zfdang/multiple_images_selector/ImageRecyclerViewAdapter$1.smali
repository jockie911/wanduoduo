.class Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "ImageRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->onBindViewHolder(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

.field final synthetic val$holder:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;

.field final synthetic val$imageItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;Lcom/zfdang/multiple_images_selector/models/ImageItem;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    iput-object p2, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$holder:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;

    iput-object p3, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$imageItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    iput p4, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$holder:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    invoke-virtual {v0}, Lcom/zfdang/multiple_images_selector/models/ImageItem;->isCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$imageItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    iget-object v0, v0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->isImageSelected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMaxImageNumber:I

    if-ge v0, v1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$imageItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    iget-object v0, v0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->toggleImageSelected(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    iget v1, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    #getter for: Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->access$000(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;)Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    #getter for: Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->access$000(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;)Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$holder:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    invoke-interface {v0, v1}, Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;->onImageItemInteraction(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V

    .line 102
    :cond_1
    return-void

    .line 87
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->bReachMaxNumber:Z

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$imageItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    iget-object v0, v0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->toggleImageSelected(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    iget v1, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method
