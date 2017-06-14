.class Lio/rong/imkit/widget/InputView$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/InputView;->setPriorRobotInputType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/InputView;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/InputView;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lio/rong/imkit/widget/InputView$1;->this$0:Lio/rong/imkit/widget/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 357
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$1;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->switcherListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$000(Lio/rong/imkit/widget/InputView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$1;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->switcherListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$000(Lio/rong/imkit/widget/InputView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 359
    :cond_0
    return-void
.end method
