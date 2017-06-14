.class Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;
.super Ljava/lang/Object;
.source "ImagesSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$000(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    new-instance v1, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    invoke-direct {v1}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;-><init>()V

    #setter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    invoke-static {v0, v1}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$002(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;Lcom/zfdang/multiple_images_selector/FolderPopupWindow;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    .line 138
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$000(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    invoke-virtual {v0, v1}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->initPopupWindow(Landroid/app/Activity;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$000(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$000(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->dismiss()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    invoke-static {v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$000(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mPopupAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$100(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x50

    const/16 v3, 0xa

    const/16 v4, 0x96

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
