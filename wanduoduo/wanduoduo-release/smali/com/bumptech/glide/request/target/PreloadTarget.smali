.class public final Lcom/bumptech/glide/request/target/PreloadTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<TZ;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 26
    .local p0, this:Lcom/bumptech/glide/request/target/PreloadTarget;,"Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 27
    return-void
.end method

.method public static obtain(II)Lcom/bumptech/glide/request/target/PreloadTarget;
    .locals 1
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/bumptech/glide/request/target/PreloadTarget",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/request/target/PreloadTarget;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/request/target/PreloadTarget;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/bumptech/glide/request/target/PreloadTarget;,"Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    .local p1, resource:Ljava/lang/Object;,"TZ;"
    .local p2, glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;,"Lcom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;"
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 32
    return-void
.end method
