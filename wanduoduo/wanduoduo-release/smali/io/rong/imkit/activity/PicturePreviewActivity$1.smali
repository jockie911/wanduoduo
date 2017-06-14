.class Lio/rong/imkit/activity/PicturePreviewActivity$1;
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
    .line 88
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$1;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sendOrigin"

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$1;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$000(Lio/rong/imkit/activity/PicturePreviewActivity;)Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->getChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$1;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$1;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-virtual {v1}, Lio/rong/imkit/activity/PicturePreviewActivity;->finish()V

    .line 95
    return-void
.end method
