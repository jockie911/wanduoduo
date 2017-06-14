.class Lcom/wanduoduo/widget/MarqueeImageView$2;
.super Ljava/util/TimerTask;
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

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/wanduoduo/widget/MarqueeImageView;Landroid/os/Handler;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wanduoduo/widget/MarqueeImageView$2;->this$0:Lcom/wanduoduo/widget/MarqueeImageView;

    iput-object p2, p0, Lcom/wanduoduo/widget/MarqueeImageView$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wanduoduo/widget/MarqueeImageView$2;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x123

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method
