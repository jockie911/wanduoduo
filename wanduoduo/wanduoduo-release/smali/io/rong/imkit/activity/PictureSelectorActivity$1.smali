.class Lio/rong/imkit/activity/PictureSelectorActivity$1;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/PictureSelectorActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 80
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$1;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$1;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v0}, Lio/rong/imkit/activity/PictureSelectorActivity;->finish()V

    .line 84
    return-void
.end method
