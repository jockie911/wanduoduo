.class public interface abstract Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
.super Ljava/lang/Object;
.source "SimpleDraweeControllerBuilder.java"


# virtual methods
.method public abstract build()Lcom/facebook/drawee/interfaces/DraweeController;
.end method

.method public abstract setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
.end method

.method public abstract setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract setUri(Landroid/net/Uri;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
.end method

.method public abstract setUri(Ljava/lang/String;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method