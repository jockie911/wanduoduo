.class Lcom/wanduoduo/page/PerfectPicVideoFragment$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PerfectPicVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/page/PerfectPicVideoFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/page/PerfectPicVideoFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment$1;->this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;,"Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment$1;->this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;

    iget-object v0, v0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->itemIvPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/wanduoduo/page/PerfectPicVideoFragment$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
