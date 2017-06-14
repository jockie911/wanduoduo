.class Lcom/moxun/tagcloudlib/view/TagCloudView$2;
.super Ljava/lang/Object;
.source "TagCloudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moxun/tagcloudlib/view/TagCloudView;->addListener(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/moxun/tagcloudlib/view/TagCloudView;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$2;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    iput p2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$2;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->onTagClickListener:Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;
    invoke-static {v0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$1200(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$2;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    iget v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$2;->val$position:I

    invoke-interface {v0, v1, p1, v2}, Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;->onItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 216
    return-void
.end method
