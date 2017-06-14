.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiviAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/activi/ActiviAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemPicAdapter"
.end annotation


# instance fields
.field private isVideo:Z

.field private mPics:Ljava/util/List;

.field final synthetic this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "pics"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->mPics:Ljava/util/List;

    .line 330
    return-void
.end method

.method static synthetic access$300(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->videoUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 334
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->mPics:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->mPics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->mPics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 350
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 355
    if-nez p2, :cond_0

    .line 356
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0400a5

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 358
    :cond_0
    const v6, 0x7f0e01e5

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 359
    .local v0, imageView:Landroid/widget/ImageView;
    const v6, 0x7f0e02be

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 360
    .local v3, textView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->mPics:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_1

    .line 361
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->mPics:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 367
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x4220

    invoke-static {v7, v8}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x3

    .line 368
    .local v4, width:I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 369
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 370
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 371
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v7, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->mPics:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 374
    const v6, 0x7f0e02bf

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 375
    .local v1, ivPlay:Landroid/widget/ImageView;
    iget-boolean v6, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->isVideo:Z

    if-eqz v6, :cond_2

    .line 376
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    :goto_1
    new-instance v6, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;

    invoke-direct {v6, p0, p3}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-object p2

    .line 364
    .end local v1           #ivPlay:Landroid/widget/ImageView;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #width:I
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_1
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 378
    .restart local v1       #ivPlay:Landroid/widget/ImageView;
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #width:I
    .restart local v5       #wm:Landroid/view/WindowManager;
    :cond_2
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public varargs setVideoUrl(Z[Ljava/lang/String;)V
    .locals 1
    .parameter "isVideo"
    .parameter "video"

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->isVideo:Z

    .line 339
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->videoUrl:Ljava/lang/String;

    .line 341
    :cond_0
    return-void
.end method
