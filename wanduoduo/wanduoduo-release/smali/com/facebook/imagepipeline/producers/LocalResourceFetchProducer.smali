.class public Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;
.super Lcom/facebook/imagepipeline/producers/LocalFetchProducer;
.source "LocalResourceFetchProducer.java"


# static fields
.field static final PRODUCER_NAME:Ljava/lang/String; = "LocalResourceFetchProducer"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/PooledByteBufferFactory;Landroid/content/res/Resources;Z)V
    .locals 0
    .parameter "executor"
    .parameter "pooledByteBufferFactory"
    .parameter "resources"
    .parameter "decodeFileDescriptorEnabled"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/PooledByteBufferFactory;Z)V

    .line 37
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->mResources:Landroid/content/res/Resources;

    .line 38
    return-void
.end method

.method private getLength(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 4
    .parameter "imageRequest"

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->getResourceId(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    .line 56
    if-eqz v1, :cond_0

    .line 57
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v2, -0x1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v3

    goto :goto_0

    .line 55
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v2

    .line 56
    if-eqz v1, :cond_1

    .line 57
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 61
    :cond_1
    :goto_1
    throw v2

    .line 59
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private static getResourceId(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 2
    .parameter "imageRequest"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 2
    .parameter "imageRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->mResources:Landroid/content/res/Resources;

    .line 43
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->getResourceId(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->getLength(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v1

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    return-object v0
.end method

.method protected getProducerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "LocalResourceFetchProducer"

    return-object v0
.end method
