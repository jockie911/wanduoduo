.class Lcom/bigkoo/pickerview/view/BasePickerView$1;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/BasePickerView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$1;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    #getter for: Lcom/bigkoo/pickerview/view/BasePickerView;->decorView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$100(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$1$1;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 123
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 102
    return-void
.end method
