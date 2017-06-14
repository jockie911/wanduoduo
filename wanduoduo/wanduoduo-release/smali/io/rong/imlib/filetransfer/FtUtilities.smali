.class public Lio/rong/imlib/filetransfer/FtUtilities;
.super Ljava/lang/Object;
.source "FtUtilities.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "FtUtilities"

    sput-object v0, Lio/rong/imlib/filetransfer/FtUtilities;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "mimeType"

    .prologue
    .line 65
    move-object v3, p0

    .line 66
    .local v3, szKey:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "__RC-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 68
    .local v4, time:J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, format:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 70
    .local v1, mDate:Ljava/util/Date;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    rem-int/lit16 v2, v6, 0x2710

    .line 72
    .local v2, random:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    return-object v3
.end method

.method public static getCateDir(I)Ljava/lang/String;
    .locals 1
    .parameter "categoryId"

    .prologue
    .line 97
    const-string v0, "private"

    .line 98
    .local v0, categoryPath:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 117
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    const-string v0, "private"

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    const-string v0, "discussion"

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    const-string v0, "group"

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "chatroom"

    .line 110
    goto :goto_0

    .line 112
    :pswitch_4
    const-string v0, "reception"

    .line 113
    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getFileKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileUri"

    .prologue
    const/4 v3, -0x1

    .line 126
    move-object v0, p0

    .line 127
    .local v0, fileKey:Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, pos:I
    if-eq v1, v3, :cond_0

    .line 129
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    if-eq v1, v3, :cond_1

    .line 133
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_1
    const-string v2, "%2F"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cachePath"
    .parameter "fileName"

    .prologue
    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, suffix:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 143
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    const/4 v4, 0x0

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, name:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 151
    .local v1, n:I
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    if-eqz v3, :cond_1

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    :goto_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_1

    .line 146
    .end local v0           #file:Ljava/io/File;
    .end local v1           #n:I
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_0

    .line 156
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #n:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getMediaDir(I)Ljava/lang/String;
    .locals 1
    .parameter "fileType"

    .prologue
    .line 78
    const-string v0, "image"

    .line 79
    .local v0, mediaPath:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 93
    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    const-string v0, "image"

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    const-string v0, "audio"

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    const-string v0, "video"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_3
    const-string v0, "file"

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMimeType(Ljava/lang/String;)Lio/rong/imlib/filetransfer/FtConst$MimeType;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 16
    invoke-static {p0}, Lio/rong/imlib/filetransfer/FtUtilities;->isImageFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    sget-object v0, Lio/rong/imlib/filetransfer/FtConst$MimeType;->FILE_IMAGE:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 25
    .local v0, mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    :goto_0
    return-object v0

    .line 18
    .end local v0           #mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    :cond_0
    invoke-static {p0}, Lio/rong/imlib/filetransfer/FtUtilities;->isAudioFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    sget-object v0, Lio/rong/imlib/filetransfer/FtConst$MimeType;->FILE_AUDIO:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .restart local v0       #mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    goto :goto_0

    .line 20
    .end local v0           #mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    :cond_1
    invoke-static {p0}, Lio/rong/imlib/filetransfer/FtUtilities;->isVideoFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    sget-object v0, Lio/rong/imlib/filetransfer/FtConst$MimeType;->FILE_VIDEO:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .restart local v0       #mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    goto :goto_0

    .line 23
    .end local v0           #mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    :cond_2
    sget-object v0, Lio/rong/imlib/filetransfer/FtConst$MimeType;->FILE_TEXT_PLAIN:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .restart local v0       #mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    goto :goto_0
.end method

.method private static isAudioFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "fileName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 41
    const/16 v7, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, ".au"

    aput-object v7, v2, v6

    const-string v7, ".snd"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, ".mid"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, ".rmi"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, ".aif"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, ".aifc"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, ".aiff"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, ".m3u"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, ".ra"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-string v8, ".ram"

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-string v8, ".wav"

    aput-object v8, v2, v7

    .line 44
    .local v2, imageSuffixs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 45
    .local v4, sufix:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    .end local v4           #sufix:Ljava/lang/String;
    :goto_1
    return v5

    .line 44
    .restart local v4       #sufix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #sufix:Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 49
    goto :goto_1
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static isImageFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "fileName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 29
    const/16 v7, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, ".bmp"

    aput-object v7, v2, v6

    const-string v7, ".cod"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, ".gif"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, ".ief"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, ".jpe"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, ".jpeg"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, ".jpg"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, ".jfif"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, ".svg"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-string v8, ".tif"

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-string v8, ".tiff"

    aput-object v8, v2, v7

    const/16 v7, 0xb

    const-string v8, ".ras"

    aput-object v8, v2, v7

    const/16 v7, 0xc

    const-string v8, ".ico"

    aput-object v8, v2, v7

    const/16 v7, 0xd

    const-string v8, ".pnm"

    aput-object v8, v2, v7

    const/16 v7, 0xe

    const-string v8, ".pbm"

    aput-object v8, v2, v7

    const/16 v7, 0xf

    const-string v8, ".pgm"

    aput-object v8, v2, v7

    const/16 v7, 0x10

    const-string v8, ".ppm"

    aput-object v8, v2, v7

    const/16 v7, 0x11

    const-string v8, ".xbm"

    aput-object v8, v2, v7

    const/16 v7, 0x12

    const-string v8, ".xpm"

    aput-object v8, v2, v7

    const/16 v7, 0x13

    const-string v8, ".xwd"

    aput-object v8, v2, v7

    const/16 v7, 0x14

    const-string v8, ".rgb"

    aput-object v8, v2, v7

    .line 32
    .local v2, imageSuffixs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 33
    .local v4, sufix:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    .end local v4           #sufix:Ljava/lang/String;
    :goto_1
    return v5

    .line 32
    .restart local v4       #sufix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #sufix:Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 37
    goto :goto_1
.end method

.method private static isVideoFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "fileName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 53
    const/16 v7, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, ".rmvb"

    aput-object v7, v2, v6

    const-string v7, ".avi"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, ".mp4"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, ".mp2"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, ".mpa"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, ".mpe"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, ".mpeg"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, ".mpg"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, ".mpv2"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-string v8, ".mov"

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-string v8, ".qt"

    aput-object v8, v2, v7

    const/16 v7, 0xb

    const-string v8, ".lsf"

    aput-object v8, v2, v7

    const/16 v7, 0xc

    const-string v8, ".lsx"

    aput-object v8, v2, v7

    const/16 v7, 0xd

    const-string v8, ".asf"

    aput-object v8, v2, v7

    const/16 v7, 0xe

    const-string v8, ".asr"

    aput-object v8, v2, v7

    const/16 v7, 0xf

    const-string v8, ".asx"

    aput-object v8, v2, v7

    const/16 v7, 0x10

    const-string v8, ".avi"

    aput-object v8, v2, v7

    const/16 v7, 0x11

    const-string v8, ".movie"

    aput-object v8, v2, v7

    .line 56
    .local v2, imageSuffixs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 57
    .local v4, sufix:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    .end local v4           #sufix:Ljava/lang/String;
    :goto_1
    return v5

    .line 56
    .restart local v4       #sufix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #sufix:Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 61
    goto :goto_1
.end method
