.class public interface abstract Lcom/facebook/drawee/interfaces/DraweeController;
.super Ljava/lang/Object;
.source "DraweeController.java"


# virtual methods
.method public abstract getAnimatable()Landroid/graphics/drawable/Animatable;
.end method

.method public abstract getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract onAttach()V
.end method

.method public abstract onDetach()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method
