.class Lcom/wanduoduo/widget/HorizontalListView$1;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/widget/HorizontalListView;->bindGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/wanduoduo/widget/HorizontalListView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView$1;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$1;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/wanduoduo/widget/HorizontalListView;->access$100(Lcom/wanduoduo/widget/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
