.class public Lcom/wanduoduo/adapter/activi/ItemPicAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemPicAdapter.java"


# instance fields
.field private isVideo:Z

.field private mPics:Ljava/util/List;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter "pics"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->mPics:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/adapter/activi/ItemPicAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->videoUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->mPics:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->mPics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v9, 0x4

    .line 50
    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0400a5

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    const v6, 0x7f0e01e5

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .local v0, imageView:Landroid/widget/ImageView;
    const v6, 0x7f0e02be

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 61
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

    .line 62
    .local v4, width:I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 64
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v7, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->mPics:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 69
    const v6, 0x7f0e02bf

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .local v1, ivPlay:Landroid/widget/ImageView;
    iget-boolean v6, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->isVideo:Z

    if-eqz v6, :cond_1

    .line 71
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :goto_0
    new-instance v6, Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;

    invoke-direct {v6, p0, p3}, Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;-><init>(Lcom/wanduoduo/adapter/activi/ItemPicAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object p2

    .line 73
    :cond_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public varargs setVideoUrl(Z[Ljava/lang/String;)V
    .locals 1
    .parameter "isVideo"
    .parameter "video"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->isVideo:Z

    .line 89
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->videoUrl:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method
