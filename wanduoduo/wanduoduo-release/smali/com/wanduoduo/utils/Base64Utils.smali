.class public Lcom/wanduoduo/utils/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field private static base64DecodeChars:[B

.field private static base64EncodeChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    .line 11
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/wanduoduo/utils/Base64Utils;->base64DecodeChars:[B

    return-void

    .line 6
    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data

    .line 11
    :array_1
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .parameter "str"

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/wanduoduo/utils/Base64Utils;->decodePrivate(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 62
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private static decodePrivate(Ljava/lang/String;)[B
    .locals 13
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3d

    const/4 v11, -0x1

    .line 67
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v8, sb:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 69
    .local v4, data:[B
    const-string v9, "US-ASCII"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 70
    array-length v7, v4

    .line 71
    .local v7, len:I
    const/4 v5, 0x0

    .line 73
    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 76
    :goto_1
    sget-object v9, Lcom/wanduoduo/utils/Base64Utils;->base64DecodeChars:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    aget-byte v10, v4, v5

    aget-byte v0, v9, v10

    .line 77
    .local v0, b1:I
    if-ge v6, v7, :cond_0

    if-eq v0, v11, :cond_d

    .line 78
    :cond_0
    if-ne v0, v11, :cond_2

    move v5, v6

    .line 108
    .end local v0           #b1:I
    .end local v6           #i:I
    .restart local v5       #i:I
    :cond_1
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "iso8859-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    :goto_3
    return-object v9

    .end local v5           #i:I
    .restart local v0       #b1:I
    .restart local v6       #i:I
    :cond_2
    move v5, v6

    .line 82
    .end local v6           #i:I
    .restart local v5       #i:I
    sget-object v9, Lcom/wanduoduo/utils/Base64Utils;->base64DecodeChars:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .restart local v6       #i:I
    aget-byte v10, v4, v5

    aget-byte v1, v9, v10

    .line 83
    .local v1, b2:I
    if-ge v6, v7, :cond_3

    if-eq v1, v11, :cond_2

    .line 84
    :cond_3
    if-ne v1, v11, :cond_4

    move v5, v6

    .line 85
    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 86
    .end local v5           #i:I
    .restart local v6       #i:I
    :cond_4
    shl-int/lit8 v9, v0, 0x2

    and-int/lit8 v10, v1, 0x30

    ushr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    move v5, v6

    .line 89
    .end local v6           #i:I
    .restart local v5       #i:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .restart local v6       #i:I
    aget-byte v2, v4, v5

    .line 90
    .local v2, b3:I
    if-ne v2, v12, :cond_6

    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "iso8859-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_3

    .line 92
    .end local v5           #i:I
    .restart local v6       #i:I
    :cond_6
    sget-object v9, Lcom/wanduoduo/utils/Base64Utils;->base64DecodeChars:[B

    aget-byte v2, v9, v2

    .line 93
    if-ge v6, v7, :cond_7

    if-eq v2, v11, :cond_5

    .line 94
    :cond_7
    if-ne v2, v11, :cond_8

    move v5, v6

    .line 95
    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 96
    .end local v5           #i:I
    .restart local v6       #i:I
    :cond_8
    and-int/lit8 v9, v1, 0xf

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v10, v2, 0x3c

    ushr-int/lit8 v10, v10, 0x2

    or-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    move v5, v6

    .line 99
    .end local v6           #i:I
    .restart local v5       #i:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .restart local v6       #i:I
    aget-byte v3, v4, v5

    .line 100
    .local v3, b4:I
    if-ne v3, v12, :cond_a

    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "iso8859-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_3

    .line 102
    .end local v5           #i:I
    .restart local v6       #i:I
    :cond_a
    sget-object v9, Lcom/wanduoduo/utils/Base64Utils;->base64DecodeChars:[B

    aget-byte v3, v9, v3

    .line 103
    if-ge v6, v7, :cond_b

    if-eq v3, v11, :cond_9

    .line 104
    :cond_b
    if-ne v3, v11, :cond_c

    move v5, v6

    .line 105
    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 106
    .end local v5           #i:I
    .restart local v6       #i:I
    :cond_c
    and-int/lit8 v9, v2, 0x3

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v3

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto/16 :goto_0

    .end local v1           #b2:I
    .end local v2           #b3:I
    .end local v3           #b4:I
    .end local v5           #i:I
    .restart local v6       #i:I
    :cond_d
    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto/16 :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    .line 26
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v6, sb:Ljava/lang/StringBuffer;
    array-length v5, p0

    .line 28
    .local v5, len:I
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .line 30
    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 31
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-byte v7, p0, v4

    and-int/lit16 v0, v7, 0xff

    .line 32
    .local v0, b1:I
    if-ne v3, v5, :cond_0

    .line 33
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    const-string v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .end local v0           #b1:I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 38
    .restart local v0       #b1:I
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aget-byte v7, p0, v3

    and-int/lit16 v1, v7, 0xff

    .line 39
    .local v1, b2:I
    if-ne v4, v5, :cond_1

    .line 40
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    .line 44
    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 46
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-byte v7, p0, v4

    and-int/lit16 v2, v7, 0xff

    .line 47
    .local v2, b3:I
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    and-int/lit16 v9, v2, 0xc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    sget-object v7, Lcom/wanduoduo/utils/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v8, v2, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto/16 :goto_0

    .end local v0           #b1:I
    .end local v1           #b2:I
    .end local v2           #b3:I
    :cond_2
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1
.end method
