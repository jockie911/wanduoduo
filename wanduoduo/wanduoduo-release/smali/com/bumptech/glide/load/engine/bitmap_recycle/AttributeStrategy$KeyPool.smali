.class Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool",
        "<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V

    return-object v0
.end method

.method protected bridge synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->create()Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    .line 64
    .local v0, result:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->init(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    return-object v0
.end method
