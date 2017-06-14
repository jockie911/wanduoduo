.class Lcom/cjj/MaterialHeadView$1;
.super Ljava/lang/Object;
.source "MaterialHeadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cjj/MaterialHeadView;->setProgressValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cjj/MaterialHeadView;


# direct methods
.method constructor <init>(Lcom/cjj/MaterialHeadView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cjj/MaterialHeadView$1;->this$0:Lcom/cjj/MaterialHeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cjj/MaterialHeadView$1;->this$0:Lcom/cjj/MaterialHeadView;

    #getter for: Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;
    invoke-static {v0}, Lcom/cjj/MaterialHeadView;->access$100(Lcom/cjj/MaterialHeadView;)Lcom/cjj/CircleProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cjj/MaterialHeadView$1;->this$0:Lcom/cjj/MaterialHeadView;

    #getter for: Lcom/cjj/MaterialHeadView;->progressValue:I
    invoke-static {v1}, Lcom/cjj/MaterialHeadView;->access$000(Lcom/cjj/MaterialHeadView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cjj/CircleProgressBar;->setProgress(I)V

    .line 97
    return-void
.end method
