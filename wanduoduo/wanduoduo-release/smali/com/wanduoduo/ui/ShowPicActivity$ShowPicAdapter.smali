.class Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ShowPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/ShowPicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowPicAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/ShowPicActivity;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/ui/ShowPicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/ui/ShowPicActivity;Lcom/wanduoduo/ui/ShowPicActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;-><init>(Lcom/wanduoduo/ui/ShowPicActivity;)V

    return-void
.end method

.method private showFileImageView(ILandroid/widget/ImageView;)V
    .locals 3
    .parameter "position"
    .parameter "imageView"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/wanduoduo/ui/ShowPicActivity;->access$300(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/wanduoduo/utils/Bimp;->revitionImageSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private showNetPic(Landroid/view/ViewGroup;ILandroid/widget/ImageView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "imageView"
    .parameter "params"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    new-instance v1, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;

    invoke-direct {v1, p0, p1, p4, p3}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter$1;-><init>(Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 152
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 166
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->kind:I
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$100(Lcom/wanduoduo/ui/ShowPicActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->kind:I
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$100(Lcom/wanduoduo/ui/ShowPicActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$300(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$300(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->kind:I
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$100(Lcom/wanduoduo/ui/ShowPicActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$300(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/ShowPicActivity;->access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wanduoduo/ui/ShowPicActivity;->access$300(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 104
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 171
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .parameter "container"
    .parameter "position"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0400aa

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0e02b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/rong/photoview/PhotoView;

    .line 117
    .local v0, imageView:Lio/rong/photoview/PhotoView;
    const v5, 0x7f0e0291

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 118
    .local v1, ivPlay:Landroid/widget/ImageView;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    const v5, 0x7f0e02c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 120
    .local v3, relRoot:Landroid/widget/RelativeLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 122
    invoke-virtual {v0}, Lio/rong/photoview/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 123
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->kind:I
    invoke-static {v5}, Lcom/wanduoduo/ui/ShowPicActivity;->access$100(Lcom/wanduoduo/ui/ShowPicActivity;)I

    move-result v5

    if-nez v5, :cond_0

    .line 124
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->showNetPic(Landroid/view/ViewGroup;ILandroid/widget/ImageView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->kind:I
    invoke-static {v5}, Lcom/wanduoduo/ui/ShowPicActivity;->access$100(Lcom/wanduoduo/ui/ShowPicActivity;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 126
    invoke-direct {p0, p2, v0}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->showFileImageView(ILandroid/widget/ImageView;)V

    .line 127
    :cond_1
    iget-object v5, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->kind:I
    invoke-static {v5}, Lcom/wanduoduo/ui/ShowPicActivity;->access$100(Lcom/wanduoduo/ui/ShowPicActivity;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 128
    iget-object v5, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/wanduoduo/ui/ShowPicActivity;->access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3

    .line 129
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->showNetPic(Landroid/view/ViewGroup;ILandroid/widget/ImageView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    return-object v4

    .line 131
    :cond_3
    iget-object v5, p0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->this$0:Lcom/wanduoduo/ui/ShowPicActivity;

    #getter for: Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/wanduoduo/ui/ShowPicActivity;->access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v5, p2, v5

    invoke-direct {p0, v5, v0}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->showFileImageView(ILandroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 109
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
