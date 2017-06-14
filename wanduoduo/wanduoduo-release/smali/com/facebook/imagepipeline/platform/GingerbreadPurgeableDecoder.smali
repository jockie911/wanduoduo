.class public Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;
.super Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;
.source "GingerbreadPurgeableDecoder.java"


# static fields
.field private static sGetFileDescriptorMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mWebpSupportEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "webpSupportEnabled"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->mWebpSupportEnabled:Z

    .line 55
    return-void
.end method

.method private static copyToMemoryFile(Lcom/facebook/common/references/CloseableReference;I[B)Landroid/os/MemoryFile;
    .locals 10
    .parameter
    .end parameter
    .parameter "inputLength"
    .end parameter
    .parameter "suffix"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;I[B)",
            "Landroid/os/MemoryFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, bytesRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/memory/PooledByteBuffer;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 94
    if-nez p2, :cond_1

    move v7, v8

    :goto_0
    add-int v4, p1, v7

    .line 95
    .local v4, outputLength:I
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v2, memoryFile:Landroid/os/MemoryFile;
    invoke-virtual {v2, v8}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 97
    const/4 v5, 0x0

    .line 98
    .local v5, pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    const/4 v0, 0x0

    .line 99
    .local v0, is:Lcom/facebook/common/streams/LimitedInputStream;
    const/4 v3, 0x0

    .line 101
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;

    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-direct {v6, v7}, Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;-><init>(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v5           #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    .local v6, pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    :try_start_1
    new-instance v1, Lcom/facebook/common/streams/LimitedInputStream;

    invoke-direct {v1, v6, p1}, Lcom/facebook/common/streams/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .end local v0           #is:Lcom/facebook/common/streams/LimitedInputStream;
    .local v1, is:Lcom/facebook/common/streams/LimitedInputStream;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 104
    invoke-static {v1, v3}, Lcom/facebook/common/internal/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 105
    if-eqz p2, :cond_0

    .line 106
    const/4 v7, 0x0

    array-length v8, p2

    invoke-virtual {v2, p2, v7, p1, v8}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 111
    invoke-static {v6}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 112
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 113
    invoke-static {v3, v9}, Lcom/facebook/common/internal/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v2

    .line 94
    .end local v1           #is:Lcom/facebook/common/streams/LimitedInputStream;
    .end local v2           #memoryFile:Landroid/os/MemoryFile;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #outputLength:I
    .end local v6           #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    :cond_1
    array-length v7, p2

    goto :goto_0

    .line 110
    .restart local v0       #is:Lcom/facebook/common/streams/LimitedInputStream;
    .restart local v2       #memoryFile:Landroid/os/MemoryFile;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #outputLength:I
    .restart local v5       #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    :catchall_0
    move-exception v7

    :goto_1
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 111
    invoke-static {v5}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 112
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 113
    invoke-static {v3, v9}, Lcom/facebook/common/internal/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7

    .line 110
    .end local v5           #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    .restart local v6       #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    .restart local v5       #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    goto :goto_1

    .end local v0           #is:Lcom/facebook/common/streams/LimitedInputStream;
    .end local v5           #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    .restart local v1       #is:Lcom/facebook/common/streams/LimitedInputStream;
    .restart local v6       #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #is:Lcom/facebook/common/streams/LimitedInputStream;
    .restart local v0       #is:Lcom/facebook/common/streams/LimitedInputStream;
    move-object v5, v6

    .end local v6           #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    .restart local v5       #pbbIs:Lcom/facebook/imagepipeline/memory/PooledByteBufferInputStream;
    goto :goto_1
.end method

.method private declared-synchronized getFileDescriptorMethod()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->sGetFileDescriptorMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 120
    :try_start_1
    const-class v1, Landroid/os/MemoryFile;

    const-string v2, "getFileDescriptor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->sGetFileDescriptorMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :cond_0
    :try_start_2
    sget-object v1, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->sGetFileDescriptorMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getMemoryFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 4
    .parameter "memoryFile"

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->getFileDescriptorMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, rawFD:Ljava/lang/Object;
    check-cast v1, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #rawFD:Ljava/lang/Object;
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method protected decodeByteArrayAsPurgeable(Lcom/facebook/common/references/CloseableReference;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter "options"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, bytesRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/memory/PooledByteBuffer;>;"
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->decodeFileDescriptorAsPurgeable(Lcom/facebook/common/references/CloseableReference;I[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected decodeFileDescriptorAsPurgeable(Lcom/facebook/common/references/CloseableReference;I[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter "inputLength"
    .parameter "suffix"
    .parameter "options"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;I[B",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, bytesRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/memory/PooledByteBuffer;>;"
    const/4 v3, 0x0

    .line 144
    .local v3, memoryFile:Landroid/os/MemoryFile;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->copyToMemoryFile(Lcom/facebook/common/references/CloseableReference;I[B)Landroid/os/MemoryFile;

    move-result-object v3

    .line 145
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->getMemoryFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 147
    .local v2, fd:Ljava/io/FileDescriptor;
    iget-boolean v4, p0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->mWebpSupportEnabled:Z

    if-eqz v4, :cond_1

    .line 148
    sget-object v4, Lcom/facebook/common/webp/WebpSupportStatus;->sWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5, p4}, Lcom/facebook/common/webp/WebpBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    const-string v4, "BitmapFactory returned null"

    invoke-static {v0, v4}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    :cond_0
    return-object v4

    .line 150
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v2, v4, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 153
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-static {v1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    :cond_2
    throw v4
.end method

.method public bridge synthetic decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;->decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method protected decodeJPEGByteArrayAsPurgeable(Lcom/facebook/common/references/CloseableReference;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter "length"
    .parameter "options"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, bytesRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/memory/PooledByteBuffer;>;"
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->endsWithEOI(Lcom/facebook/common/references/CloseableReference;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 87
    .local v0, suffix:[B
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->decodeFileDescriptorAsPurgeable(Lcom/facebook/common/references/CloseableReference;I[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 86
    .end local v0           #suffix:[B
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->EOI:[B

    goto :goto_0
.end method

.method public bridge synthetic decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;->decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pinBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;->pinBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method
