.class Lcom/wanduoduo/widget/MarqueeImageView$1;
.super Landroid/os/Handler;
.source "MarqueeImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/widget/MarqueeImageView;->Start(Landroid/graphics/Bitmap;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/widget/MarqueeImageView;


# direct methods
.method constructor <init>(Lcom/wanduoduo/widget/MarqueeImageView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wanduoduo/widget/MarqueeImageView$1;->this$0:Lcom/wanduoduo/widget/MarqueeImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/wanduoduo/widget/MarqueeImageView$1;->this$0:Lcom/wanduoduo/widget/MarqueeImageView;

    invoke-virtual {v0}, Lcom/wanduoduo/widget/MarqueeImageView;->invalidate()V

    .line 75
    :cond_0
    return-void
.end method
