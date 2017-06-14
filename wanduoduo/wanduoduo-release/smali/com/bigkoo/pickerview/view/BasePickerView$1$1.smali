.class Lcom/bigkoo/pickerview/view/BasePickerView$1$1;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/BasePickerView$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/BasePickerView$1;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    iget-object v0, v0, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    #getter for: Lcom/bigkoo/pickerview/view/BasePickerView;->decorView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$100(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    iget-object v1, v1, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    #getter for: Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$000(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    iget-object v0, v0, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    #setter for: Lcom/bigkoo/pickerview/view/BasePickerView;->showing:Z
    invoke-static {v0, v2}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$202(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z

    .line 112
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    iget-object v0, v0, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    #setter for: Lcom/bigkoo/pickerview/view/BasePickerView;->dismissing:Z
    invoke-static {v0, v2}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$302(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z

    .line 113
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    iget-object v0, v0, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    #getter for: Lcom/bigkoo/pickerview/view/BasePickerView;->onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$400(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    iget-object v0, v0, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    #getter for: Lcom/bigkoo/pickerview/view/BasePickerView;->onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$400(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;->this$1:Lcom/bigkoo/pickerview/view/BasePickerView$1;

    iget-object v1, v1, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-interface {v0, v1}, Lcom/bigkoo/pickerview/listener/OnDismissListener;->onDismiss(Ljava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method
