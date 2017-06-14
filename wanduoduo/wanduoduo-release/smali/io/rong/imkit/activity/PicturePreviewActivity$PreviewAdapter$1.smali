.class Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;
.super Ljava/lang/Object;
.source "PicturePreviewActivity.java"

# interfaces
.implements Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewTap(Landroid/view/View;FF)V
    .locals 8
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/16 v5, 0x400

    .line 276
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v4, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mFullScreen:Z
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$800(Lio/rong/imkit/activity/PicturePreviewActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #setter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mFullScreen:Z
    invoke-static {v4, v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$802(Lio/rong/imkit/activity/PicturePreviewActivity;Z)Z

    .line 278
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mFullScreen:Z
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$800(Lio/rong/imkit/activity/PicturePreviewActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_1

    .line 280
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 287
    :goto_1
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarTop:Landroid/view/View;
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$900(Lio/rong/imkit/activity/PicturePreviewActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarBottom:Landroid/view/View;
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$1000(Lio/rong/imkit/activity/PicturePreviewActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 276
    goto :goto_0

    .line 283
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, decorView:Landroid/view/View;
    const/4 v1, 0x4

    .line 285
    .local v1, uiOptions:I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 290
    .end local v0           #decorView:Landroid/view/View;
    .end local v1           #uiOptions:I
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_3

    .line 291
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 298
    :goto_3
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarTop:Landroid/view/View;
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$900(Lio/rong/imkit/activity/PicturePreviewActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    #getter for: Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarBottom:Landroid/view/View;
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->access$1000(Lio/rong/imkit/activity/PicturePreviewActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    iget-object v2, v2, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 295
    .restart local v0       #decorView:Landroid/view/View;
    const/4 v1, 0x0

    .line 296
    .restart local v1       #uiOptions:I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_3
.end method
