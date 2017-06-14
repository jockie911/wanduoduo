.class public final Lcom/facebook/imageformat/GifFormatChecker;
.super Ljava/lang/Object;
.source "GifFormatChecker.java"


# static fields
.field private static final FRAME_HEADER_END_1:[B = null

.field private static final FRAME_HEADER_END_2:[B = null

.field private static final FRAME_HEADER_SIZE:I = 0xa

.field private static final FRAME_HEADER_START:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_START:[B

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_1:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_2:[B

    return-void

    .line 30
    :array_0
    .array-data 0x1
        0x0t
        0x21t
        0xf9t
        0x4t
    .end array-data

    .line 36
    :array_1
    .array-data 0x1
        0x0t
        0x2ct
    .end array-data

    .line 38
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x21t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static circularBufferMatchesBytePattern([BI[B)Z
    .locals 5
    .parameter "byteArray"
    .parameter "offset"
    .parameter "pattern"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    if-ltz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 92
    array-length v1, p2

    array-length v4, p0

    if-le v1, v4, :cond_2

    .line 101
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v3

    .line 91
    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 97
    add-int v1, v0, p1

    array-length v4, p0

    rem-int/2addr v1, v4

    aget-byte v1, p0, v1

    aget-byte v4, p2, v0

    if-ne v1, v4, :cond_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 101
    goto :goto_1
.end method

.method public static isAnimated(Ljava/io/InputStream;)Z
    .locals 8
    .parameter "source"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    new-array v0, v6, [B

    .line 51
    .local v0, buffer:[B
    const/4 v6, 0x0

    const/16 v7, 0xa

    :try_start_0
    invoke-virtual {p0, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, offset:I
    const/4 v1, 0x0

    .line 58
    .local v1, frameHeaders:I
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_2

    .line 61
    add-int/lit8 v6, v3, 0x1

    sget-object v7, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_START:[B

    invoke-static {v0, v6, v7}, Lcom/facebook/imageformat/GifFormatChecker;->circularBufferMatchesBytePattern([BI[B)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v3, 0x9

    sget-object v7, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_1:[B

    .line 62
    invoke-static {v0, v6, v7}, Lcom/facebook/imageformat/GifFormatChecker;->circularBufferMatchesBytePattern([BI[B)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v6, v3, 0x9

    sget-object v7, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_2:[B

    .line 63
    invoke-static {v0, v6, v7}, Lcom/facebook/imageformat/GifFormatChecker;->circularBufferMatchesBytePattern([BI[B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    if-le v1, v4, :cond_1

    .line 75
    :goto_1
    return v4

    .line 69
    :cond_1
    add-int/lit8 v6, v3, 0x1

    array-length v7, v0

    rem-int v3, v6, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1           #frameHeaders:I
    .end local v3           #offset:I
    :catch_0
    move-exception v2

    .line 72
    .local v2, ioe:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #frameHeaders:I
    .restart local v3       #offset:I
    :cond_2
    move v4, v5

    .line 75
    goto :goto_1
.end method
