.class public Lcom/wanduoduo/adapter/PhotoPicAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoPicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;,
        Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private UP_LOAD_PIC_DEFAULT:I

.field private deleteListen:Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;

.field private exitPicLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCanEdit:Z

.field private maxUpLoadNums:I

.field private type:I


# direct methods
.method public varargs constructor <init>(Ljava/util/List;IILcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;[Z)V
    .locals 3
    .parameter
    .parameter "maxUpLoadNums"
    .parameter "type"
    .parameter "deleteListen"
    .parameter "isCanEdit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;",
            "[Z)V"
        }
    .end annotation

    .prologue
    .local p1, alreadyPicLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x7f020164

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->isCanEdit:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    .line 35
    iput v2, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->UP_LOAD_PIC_DEFAULT:I

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_0
    array-length v0, p5

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x0

    aget-boolean v0, p5, v0

    iput-boolean v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->isCanEdit:Z

    .line 49
    :cond_1
    if-ne p3, v1, :cond_3

    .line 50
    iput v2, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->UP_LOAD_PIC_DEFAULT:I

    .line 57
    :cond_2
    :goto_0
    iput p2, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->maxUpLoadNums:I

    .line 58
    iput-object p4, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->deleteListen:Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;

    .line 59
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    .line 60
    return-void

    .line 51
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 52
    const v0, 0x7f020156

    iput v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->UP_LOAD_PIC_DEFAULT:I

    goto :goto_0

    .line 53
    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 54
    iput p3, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->type:I

    .line 55
    const v0, 0x7f020155

    iput v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->UP_LOAD_PIC_DEFAULT:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/wanduoduo/adapter/PhotoPicAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/adapter/PhotoPicAdapter;)Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->deleteListen:Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;

    return-object v0
.end method

.method private setFilePicShow(ILandroid/widget/ImageView;)V
    .locals 4
    .parameter "i"
    .parameter "imageView"

    .prologue
    .line 169
    :try_start_0
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/wanduoduo/utils/Bimp;->revitionImageSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addAlreadyPic(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, alreadyPicLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    .line 68
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->maxUpLoadNums:I

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->maxUpLoadNums:I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/high16 v7, 0x428c

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 92
    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0400a8

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    :cond_0
    #calls: Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;

    move-result-object v1

    .line 96
    .local v1, holder:Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->type:I

    if-ne v5, v11, :cond_1

    .line 100
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 101
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 102
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    :goto_0
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-boolean v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->isCanEdit:Z

    if-eqz v5, :cond_9

    .line 114
    iget v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->maxUpLoadNums:I

    iget-object v6, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sget-object v7, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_4

    .line 115
    iget-object v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_3

    .line 116
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 117
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_1
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    new-instance v6, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/wanduoduo/adapter/PhotoPicAdapter$1;-><init>(Lcom/wanduoduo/adapter/PhotoPicAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-object p2

    .line 105
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 106
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4248

    invoke-static {v6, v7}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x3

    .line 107
    .local v3, width:I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 119
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #width:I
    .end local v4           #wm:Landroid/view/WindowManager;
    :cond_3
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->setFilePicShow(ILandroid/widget/ImageView;)V

    .line 120
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 123
    :cond_4
    iget-object v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_5

    .line 124
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 125
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_6

    .line 127
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->setFilePicShow(ILandroid/widget/ImageView;)V

    .line 128
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 130
    :cond_6
    iget v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->type:I

    if-ne v5, v11, :cond_7

    .line 131
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 132
    const v5, 0x7f020155

    iput v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->UP_LOAD_PIC_DEFAULT:I

    .line 137
    :cond_7
    :goto_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->UP_LOAD_PIC_DEFAULT:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 134
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    const v5, 0x7f020154

    iput v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->UP_LOAD_PIC_DEFAULT:I

    goto :goto_2

    .line 143
    :cond_9
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_a

    .line 145
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v5, p0, Lcom/wanduoduo/adapter/PhotoPicAdapter;->exitPicLists:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_1

    .line 147
    :cond_a
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    iget-object v5, v1, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v6, 0x7f02015c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
