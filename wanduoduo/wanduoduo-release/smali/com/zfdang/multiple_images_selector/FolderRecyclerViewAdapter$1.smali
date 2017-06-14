.class Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "FolderRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->onBindViewHolder(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

.field final synthetic val$holder:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

    iput-object p2, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->val$holder:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;

    iput p3, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 57
    sget v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->selectedFolderIndex:I

    .line 58
    .local v0, previousSelectedIndex:I
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->val$holder:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->mItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;

    iget v2, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->val$position:I

    invoke-static {v1, v2}, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->setSelectedFolder(Lcom/zfdang/multiple_images_selector/models/FolderItem;I)V

    .line 60
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 61
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

    iget v2, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 62
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

    #getter for: Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;
    invoke-static {v1}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->access$000(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;)Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->this$0:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

    #getter for: Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;
    invoke-static {v1}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;->access$000(Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;)Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$1;->val$holder:Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter$ViewHolder;->mItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;

    invoke-interface {v1, v2}, Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;->onFolderItemInteraction(Lcom/zfdang/multiple_images_selector/models/FolderItem;)V

    .line 67
    :cond_0
    return-void
.end method
