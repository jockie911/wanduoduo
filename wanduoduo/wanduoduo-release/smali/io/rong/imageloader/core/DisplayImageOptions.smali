.class public final Lio/rong/imageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imageloader/core/DisplayImageOptions$1;,
        Lio/rong/imageloader/core/DisplayImageOptions$Builder;
    }
.end annotation


# instance fields
.field private final cacheInMemory:Z

.field private final cacheOnDisk:Z

.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final delayBeforeLoading:I

.field private final displayer:Lio/rong/imageloader/core/display/BitmapDisplayer;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final handler:Landroid/os/Handler;

.field private final imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private final imageOnFail:Landroid/graphics/drawable/Drawable;

.field private final imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private final imageResForEmptyUri:I

.field private final imageResOnFail:I

.field private final imageResOnLoading:I

.field private final imageScaleType:Lio/rong/imageloader/core/assist/ImageScaleType;

.field private final isSyncLoading:Z

.field private final postProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

.field private final preProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

.field private final resetViewBeforeLoading:Z


# direct methods
.method private constructor <init>(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$000(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnLoading:I

    .line 91
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$100(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    .line 92
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$200(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnFail:I

    .line 93
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$300(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 94
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$400(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 95
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$500(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 96
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$600(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    .line 97
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$700(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->cacheInMemory:Z

    .line 98
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$800(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    .line 99
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lio/rong/imageloader/core/assist/ImageScaleType;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$900(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Lio/rong/imageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageScaleType:Lio/rong/imageloader/core/assist/ImageScaleType;

    .line 100
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1000(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 101
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1100(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    .line 102
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1200(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->considerExifParams:Z

    .line 103
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1300(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    .line 104
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->preProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1400(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Lio/rong/imageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->preProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    .line 105
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->postProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1500(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Lio/rong/imageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->postProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    .line 106
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->displayer:Lio/rong/imageloader/core/display/BitmapDisplayer;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1600(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Lio/rong/imageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->displayer:Lio/rong/imageloader/core/display/BitmapDisplayer;

    .line 107
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1700(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    .line 108
    #getter for: Lio/rong/imageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z
    invoke-static {p1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->access$1800(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->isSyncLoading:Z

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imageloader/core/DisplayImageOptions$Builder;Lio/rong/imageloader/core/DisplayImageOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lio/rong/imageloader/core/DisplayImageOptions;-><init>(Lio/rong/imageloader/core/DisplayImageOptions$Builder;)V

    return-void
.end method

.method static synthetic access$1900(Lio/rong/imageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$2000(Lio/rong/imageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$2100(Lio/rong/imageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$2200(Lio/rong/imageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2300(Lio/rong/imageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2400(Lio/rong/imageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2500(Lio/rong/imageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic access$2600(Lio/rong/imageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$2700(Lio/rong/imageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$2800(Lio/rong/imageloader/core/DisplayImageOptions;)Lio/rong/imageloader/core/assist/ImageScaleType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageScaleType:Lio/rong/imageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic access$2900(Lio/rong/imageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$3000(Lio/rong/imageloader/core/DisplayImageOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic access$3100(Lio/rong/imageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method static synthetic access$3200(Lio/rong/imageloader/core/DisplayImageOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lio/rong/imageloader/core/DisplayImageOptions;)Lio/rong/imageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->preProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$3400(Lio/rong/imageloader/core/DisplayImageOptions;)Lio/rong/imageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->postProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$3500(Lio/rong/imageloader/core/DisplayImageOptions;)Lio/rong/imageloader/core/display/BitmapDisplayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->displayer:Lio/rong/imageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$3600(Lio/rong/imageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lio/rong/imageloader/core/DisplayImageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public static createSimple()Lio/rong/imageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 519
    new-instance v0, Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->build()Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "drawable"

    .prologue
    const/4 v7, 0x0

    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 122
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 123
    .local v3, height:I
    if-lez v4, :cond_0

    if-gtz v3, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 127
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 126
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDelayBeforeLoading()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method public getDisplayer()Lio/rong/imageloader/core/display/BitmapDisplayer;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->displayer:Lio/rong/imageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 155
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 159
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnFail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 151
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnLoading:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageScaleType()Lio/rong/imageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageScaleType:Lio/rong/imageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getPostProcessor()Lio/rong/imageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->postProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public getPreProcessor()Lio/rong/imageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->preProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public isCacheInMemory()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method public isCacheOnDisk()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method public isConsiderExifParams()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method public isResetViewBeforeLoading()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method isSyncLoading()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public shouldDelayBeforeLoading()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldPostProcess()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->postProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldPreProcess()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->preProcessor:Lio/rong/imageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageForEmptyUri()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageOnFail()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageOnLoading()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
