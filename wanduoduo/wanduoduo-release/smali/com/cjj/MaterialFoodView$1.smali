.class Lcom/cjj/MaterialFoodView$1;
.super Ljava/lang/Object;
.source "MaterialFoodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cjj/MaterialFoodView;->setProgressValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cjj/MaterialFoodView;


# direct methods
.method constructor <init>(Lcom/cjj/MaterialFoodView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cjj/MaterialFoodView$1;->this$0:Lcom/cjj/MaterialFoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cjj/MaterialFoodView$1;->this$0:Lcom/cjj/MaterialFoodView;

    #getter for: Lcom/cjj/MaterialFoodView;->circleProgressBar:Lcom/cjj/CircleProgressBar;
    invoke-static {v0}, Lcom/cjj/MaterialFoodView;->access$100(Lcom/cjj/MaterialFoodView;)Lcom/cjj/CircleProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cjj/MaterialFoodView$1;->this$0:Lcom/cjj/MaterialFoodView;

    #getter for: Lcom/cjj/MaterialFoodView;->progressValue:I
    invoke-static {v1}, Lcom/cjj/MaterialFoodView;->access$000(Lcom/cjj/MaterialFoodView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cjj/CircleProgressBar;->setProgress(I)V

    .line 89
    return-void
.end method
