.class Lcom/cjj/MaterialProgressDrawable$1;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cjj/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cjj/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/cjj/MaterialProgressDrawable;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cjj/MaterialProgressDrawable$1;->this$0:Lcom/cjj/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$1;->this$0:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable;->invalidateSelf()V

    .line 95
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "d"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$1;->this$0:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/cjj/MaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 100
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "d"
    .parameter "what"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$1;->this$0:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/cjj/MaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
