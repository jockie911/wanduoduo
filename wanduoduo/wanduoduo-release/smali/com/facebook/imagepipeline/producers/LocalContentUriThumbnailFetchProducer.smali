.class public Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;
.super Lcom/facebook/imagepipeline/producers/LocalFetchProducer;
.source "LocalContentUriThumbnailFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ThumbnailProducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/LocalFetchProducer;",
        "Lcom/facebook/imagepipeline/producers/ThumbnailProducer",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect; = null

.field private static final MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect; = null

.field private static final NO_THUMBNAIL:I = 0x0

.field static final PRODUCER_NAME:Ljava/lang/String; = "LocalContentUriThumbnailFetchProducer"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final THUMBNAIL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    const-class v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->TAG:Ljava/lang/Class;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->PROJECTION:[Ljava/lang/String;

    .line 48
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;Z)V
    .locals 0
    .parameter "executor"
    .parameter "pooledByteBufferFactory"
    .parameter "contentResolver"
    .parameter "decodeFileDescriptorEnabled"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/PooledByteBufferFactory;Z)V

    .line 65
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    return-void
.end method

.method private getCameraImage(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 10
    .parameter "uri"
    .parameter "resizeOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 115
    :goto_0
    return-object v3

    .line 98
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 101
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    const-string v0, "_data"

    .line 103
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, pathname:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 105
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 106
    .local v7, imageIdColumnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getThumbnail(Lcom/facebook/imagepipeline/common/ResizeOptions;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v9

    .line 107
    .local v9, thumbnail:Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v9, :cond_2

    .line 108
    invoke-static {v8}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getRotationAngle(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->setRotationAngle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    goto :goto_0

    .end local v7           #imageIdColumnIndex:I
    .end local v9           #thumbnail:Lcom/facebook/imagepipeline/image/EncodedImage;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #pathname:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "pathname"

    .prologue
    .line 173
    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method private static getRotationAngle(Ljava/lang/String;)I
    .locals 6
    .parameter "pathname"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 182
    if-eqz p0, :cond_0

    .line 184
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, exif:Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/facebook/imageutils/JfifUtil;->getAutoRotateAngleFromOrientation(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 191
    .end local v0           #exif:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return v2

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, ioe:Ljava/io/IOException;
    sget-object v3, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->TAG:Ljava/lang/Class;

    const-string v4, "Unable to retrieve thumbnail rotation for %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v3, v1, v4, v5}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getThumbnail(Lcom/facebook/imagepipeline/common/ResizeOptions;I)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 8
    .parameter "resizeOptions"
    .parameter "imageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getThumbnailKind(Lcom/facebook/imagepipeline/common/ResizeOptions;)I

    move-result v1

    .line 123
    .local v1, thumbnailKind:I
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v3

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, thumbnailCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->mContentResolver:Landroid/content/ContentResolver;

    int-to-long v6, p2

    sget-object v5, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v4, v6, v7, v1, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 133
    if-nez v0, :cond_2

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 138
    const-string v4, "_data"

    .line 139
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 138
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, thumbnailUri:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getLength(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    .end local v2           #thumbnailUri:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private static getThumbnailKind(Lcom/facebook/imagepipeline/common/ResizeOptions;)I
    .locals 2
    .parameter "resizeOptions"

    .prologue
    .line 157
    sget-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 157
    invoke-static {v0, v1, p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x3

    .line 168
    :goto_0
    return v0

    .line 162
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 164
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 162
    invoke-static {v0, v1, p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canProvideImageForSize(Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 2
    .parameter "resizeOptions"

    .prologue
    .line 70
    sget-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 70
    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    return v0
.end method

.method protected getEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 3
    .parameter "imageRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->isLocalCameraUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getCameraImage(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    .line 82
    .local v0, cameraImage:Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v0, :cond_0

    .line 87
    .end local v0           #cameraImage:Lcom/facebook/imagepipeline/image/EncodedImage;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getProducerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "LocalContentUriThumbnailFetchProducer"

    return-object v0
.end method
