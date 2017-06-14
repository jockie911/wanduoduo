.class Lio/rong/imkit/activity/PictureSelectorActivity$7;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/PictureSelectorActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/activity/PictureSelectorActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PictureSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$7;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$7;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogView:Landroid/view/View;
    invoke-static {v0}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$400(Lio/rong/imkit/activity/PictureSelectorActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$7;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogView:Landroid/view/View;
    invoke-static {v0}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$400(Lio/rong/imkit/activity/PictureSelectorActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_0
    return v2
.end method
