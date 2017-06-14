.class Lcom/wanduoduo/adapter/PhotoPicAdapter$1;
.super Ljava/lang/Object;
.source "PhotoPicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/PhotoPicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/PhotoPicAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/PhotoPicAdapter;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 155
    iget v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->val$i:I

    iget-object v1, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    #getter for: Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;
    invoke-static {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->access$100(Lcom/wanduoduo/adapter/PhotoPicAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    #getter for: Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->access$100(Lcom/wanduoduo/adapter/PhotoPicAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    #getter for: Lcom/wanduoduo/adapter/PhotoPicAdapter;->deleteListen:Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;
    invoke-static {v0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->access$200(Lcom/wanduoduo/adapter/PhotoPicAdapter;)Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;

    move-result-object v0

    iget v1, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;->onDelete(I)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    .line 162
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    iget v1, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->val$i:I

    iget-object v2, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    #getter for: Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;
    invoke-static {v2}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->access$100(Lcom/wanduoduo/adapter/PhotoPicAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
