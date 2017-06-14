.class Lcom/bigkoo/pickerview/view/BasePickerView$2;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;
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
    .line 157
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$2;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$2;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->dismiss()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
