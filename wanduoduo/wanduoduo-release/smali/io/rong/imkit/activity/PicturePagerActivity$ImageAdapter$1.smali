.class Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$1;
.super Ljava/lang/Object;
.source "PicturePagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/rong/imkit/R$id;->rc_content:I

    if-ne v0, v1, :cond_0

    .line 178
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter$1;->this$1:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;
    invoke-static {v0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->access$900(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;)Lio/rong/imkit/widget/PicturePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/PicturePopupWindow;->dismiss()V

    .line 179
    return-void
.end method
