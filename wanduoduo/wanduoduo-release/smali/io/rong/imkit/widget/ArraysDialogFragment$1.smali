.class Lio/rong/imkit/widget/ArraysDialogFragment$1;
.super Ljava/lang/Object;
.source "ArraysDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/ArraysDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/ArraysDialogFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/ArraysDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lio/rong/imkit/widget/ArraysDialogFragment$1;->this$0:Lio/rong/imkit/widget/ArraysDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 47
    iget-object v0, p0, Lio/rong/imkit/widget/ArraysDialogFragment$1;->this$0:Lio/rong/imkit/widget/ArraysDialogFragment;

    #getter for: Lio/rong/imkit/widget/ArraysDialogFragment;->mItemListener:Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;
    invoke-static {v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->access$000(Lio/rong/imkit/widget/ArraysDialogFragment;)Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lio/rong/imkit/widget/ArraysDialogFragment$1;->this$0:Lio/rong/imkit/widget/ArraysDialogFragment;

    #getter for: Lio/rong/imkit/widget/ArraysDialogFragment;->mItemListener:Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;
    invoke-static {v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->access$000(Lio/rong/imkit/widget/ArraysDialogFragment;)Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;->OnArraysDialogItemClick(Landroid/content/DialogInterface;I)V

    .line 50
    :cond_0
    return-void
.end method
