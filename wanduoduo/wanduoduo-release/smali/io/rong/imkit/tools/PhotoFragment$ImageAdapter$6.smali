.class Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->updatePhotoView(ILandroid/view/View;Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

.field final synthetic val$holder:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    iput-object p2, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;->val$holder:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Ljava/lang/String;Landroid/view/View;II)V
    .locals 5
    .parameter "imageUri"
    .parameter "view"
    .parameter "current"
    .parameter "total"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;->val$holder:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p3, 0x64

    div-int/2addr v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    if-ne p3, p4, :cond_0

    .line 400
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;->val$holder:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;->val$holder:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 406
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;->val$holder:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$6;->val$holder:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
