.class Lio/rong/imkit/widget/InputView$4;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
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
    .line 470
    iput-object p1, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 473
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->currentType:Lio/rong/imlib/model/CustomServiceMode;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$200(Lio/rong/imkit/widget/InputView;)Lio/rong/imlib/model/CustomServiceMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->currentType:Lio/rong/imlib/model/CustomServiceMode;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$200(Lio/rong/imkit/widget/InputView;)Lio/rong/imlib/model/CustomServiceMode;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/CustomServiceMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->switcherListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$000(Lio/rong/imkit/widget/InputView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->switcherListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$000(Lio/rong/imkit/widget/InputView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$300(Lio/rong/imkit/widget/InputView;)Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    #getter for: Lio/rong/imkit/widget/InputView;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;
    invoke-static {v0}, Lio/rong/imkit/widget/InputView;->access$300(Lio/rong/imkit/widget/InputView;)Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imkit/widget/InputView$OnInfoButtonClick;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v1, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v1, v1, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    iget-object v2, p0, Lio/rong/imkit/widget/InputView$4;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v2, v2, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    #calls: Lio/rong/imkit/widget/InputView;->changeMainProvider(Landroid/view/View;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    invoke-static {v0, p1, v1, v2}, Lio/rong/imkit/widget/InputView;->access$100(Lio/rong/imkit/widget/InputView;Landroid/view/View;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto :goto_0
.end method
