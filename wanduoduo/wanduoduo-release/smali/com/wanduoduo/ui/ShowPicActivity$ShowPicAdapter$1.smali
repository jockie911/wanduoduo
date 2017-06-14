.class Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "ShowPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->showNetPic(Landroid/view/ViewGroup;ILandroid/widget/ImageView;Landroid/view/ViewGroup$LayoutParams;)V
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
.field final synthetic this$1:Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "this$1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->this$1:Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;

    iput-object p2, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iput-object p4, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 5
    .parameter "bitmap"
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
    .line 143
    .local p2, glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;,"Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 144
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 145
    .local v1, width:I
    iget-object v3, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 146
    .local v2, wm:Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    iget-object v3, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v4, v0

    div-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object v3, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v3, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
