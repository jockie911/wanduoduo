.class Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$3;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->newView(Landroid/content/Context;Lio/rong/imkit/tools/PhotoFragment$ImageInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$3;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutsidePhotoTap()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 246
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$3;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    iget-object v0, v0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-virtual {v0}, Lio/rong/imkit/tools/PhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 247
    return-void
.end method
