.class Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$1;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;
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
    .line 209
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/rong/imkit/R$id;->rc_content:I

    if-ne v0, v1, :cond_0

    .line 215
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter$1;->this$1:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    #getter for: Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->menuWindow:Lio/rong/imkit/widget/PicturePopupWindow;
    invoke-static {v0}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->access$1000(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;)Lio/rong/imkit/widget/PicturePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/PicturePopupWindow;->dismiss()V

    .line 216
    return-void
.end method
