.class Lcom/facebook/imagepipeline/cache/BufferedDiskCache$6;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Lcom/facebook/cache/common/WriterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeToDiskCache(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field final synthetic val$encodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$6;->this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$6;->val$encodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$6;->this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    #getter for: Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->mPooledByteStreams:Lcom/facebook/imagepipeline/memory/PooledByteStreams;
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$600(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)Lcom/facebook/imagepipeline/memory/PooledByteStreams;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$6;->val$encodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/PooledByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 347
    return-void
.end method
