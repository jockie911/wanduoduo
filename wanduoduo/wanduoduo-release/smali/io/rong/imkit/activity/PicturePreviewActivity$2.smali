.class Lio/rong/imkit/activity/PicturePreviewActivity$2;
.super Ljava/lang/Object;
.source "PicturePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/PicturePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/activity/PicturePreviewActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, data:Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$100(Lio/rong/imkit/activity/PicturePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    .line 103
    .local v2, item:Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    iget-boolean v4, v2, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->selected:Z

    if-eqz v4, :cond_0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v2           #item:Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 109
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mSelectBox:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;
    invoke-static {v4}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$200(Lio/rong/imkit/activity/PicturePreviewActivity;)Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setChecked(Z)V

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$100(Lio/rong/imkit/activity/PicturePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mCurrentIndex:I
    invoke-static {v6}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$300(Lio/rong/imkit/activity/PicturePreviewActivity;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-object v4, v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->uri:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    const-string v4, "sendOrigin"

    iget-object v5, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$000(Lio/rong/imkit/activity/PicturePreviewActivity;)Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->getChecked()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v4, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 114
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-virtual {v4, v7, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity$2;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-virtual {v4}, Lio/rong/imkit/activity/PicturePreviewActivity;->finish()V

    .line 116
    return-void
.end method
