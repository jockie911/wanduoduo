.class public Lio/rong/imkit/utils/FileTypeUtils;
.super Ljava/lang/Object;
.source "FileTypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/utils/FileTypeUtils$FileNameComparator;
    }
.end annotation


# static fields
.field public static final ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

.field private static singleInstance:Lio/rong/imkit/utils/FileTypeUtils;


# instance fields
.field public final GIGABYTE:I

.field public final KILOBYTE:I

.field public final MAX_BYTE_SIZE:I

.field public final MAX_KILOBYTE_SIZE:I

.field public final MAX_MEGABYTE_SIZE:I

.field public final MEGABYTE:I

.field private audioFilesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private otherFilesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private textFilesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoFilesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lio/rong/imkit/utils/FileTypeUtils$1;

    invoke-direct {v0}, Lio/rong/imkit/utils/FileTypeUtils$1;-><init>()V

    sput-object v0, Lio/rong/imkit/utils/FileTypeUtils;->ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/16 v0, 0x400

    iput v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->KILOBYTE:I

    const/high16 v0, 0x10

    iput v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->MEGABYTE:I

    const/high16 v0, 0x4000

    iput v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->GIGABYTE:I

    const/16 v0, 0x200

    iput v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->MAX_BYTE_SIZE:I

    const/high16 v0, 0x8

    iput v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->MAX_KILOBYTE_SIZE:I

    const/high16 v0, 0x2000

    iput v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->MAX_MEGABYTE_SIZE:I

    .line 28
    return-void
.end method

.method private checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "fileName"
    .parameter "fileSuffix"

    .prologue
    .line 62
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 63
    .local v3, suffix:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const/4 v4, 0x1

    .line 69
    .end local v3           #suffix:Ljava/lang/String;
    :goto_1
    return v4

    .line 62
    .restart local v3       #suffix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v3           #suffix:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getFileTypeImageId(Ljava/lang/String;)I
    .locals 3
    .parameter "fileName"

    .prologue
    .line 290
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_file_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    sget v0, Lio/rong/imkit/R$drawable;->rc_ad_list_file_icon:I

    .line 298
    .local v0, id:I
    :goto_0
    return v0

    .line 292
    .end local v0           #id:I
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_video_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    sget v0, Lio/rong/imkit/R$drawable;->rc_ad_list_video_icon:I

    .restart local v0       #id:I
    goto :goto_0

    .line 294
    .end local v0           #id:I
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_audio_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    sget v0, Lio/rong/imkit/R$drawable;->rc_ad_list_audio_icon:I

    .restart local v0       #id:I
    goto :goto_0

    .line 297
    .end local v0           #id:I
    :cond_2
    sget v0, Lio/rong/imkit/R$drawable;->rc_ad_list_other_icon:I

    .restart local v0       #id:I
    goto :goto_0
.end method

.method public static getInstance()Lio/rong/imkit/utils/FileTypeUtils;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lio/rong/imkit/utils/FileTypeUtils;->singleInstance:Lio/rong/imkit/utils/FileTypeUtils;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lio/rong/imkit/utils/FileTypeUtils;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lio/rong/imkit/utils/FileTypeUtils;->singleInstance:Lio/rong/imkit/utils/FileTypeUtils;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lio/rong/imkit/utils/FileTypeUtils;

    invoke-direct {v0}, Lio/rong/imkit/utils/FileTypeUtils;-><init>()V

    sput-object v0, Lio/rong/imkit/utils/FileTypeUtils;->singleInstance:Lio/rong/imkit/utils/FileTypeUtils;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lio/rong/imkit/utils/FileTypeUtils;->singleInstance:Lio/rong/imkit/utils/FileTypeUtils;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getNumFilesInFolder(Lio/rong/imkit/model/FileInfo;)I
    .locals 4
    .parameter "fileInfo"

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0}, Lio/rong/imkit/model/FileInfo;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lio/rong/imkit/model/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lio/rong/imkit/utils/FileTypeUtils;->ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 273
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 274
    array-length v1, v0

    goto :goto_0
.end method


# virtual methods
.method public audioFilesInfo(Ljava/io/File;)V
    .locals 9
    .parameter "fileDir"

    .prologue
    .line 184
    sget-object v6, Lio/rong/imkit/utils/FileTypeUtils;->ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 185
    .local v5, listFiles:[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 186
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 187
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->audioFilesInfo(Ljava/io/File;)V

    .line 186
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$array;->rc_audio_file_suffix:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->getFileInfoFromFile(Ljava/io/File;)Lio/rong/imkit/model/FileInfo;

    move-result-object v2

    .line 192
    .local v2, fileInfo:Lio/rong/imkit/model/FileInfo;
    iget-object v6, p0, Lio/rong/imkit/utils/FileTypeUtils;->audioFilesInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileInfo:Lio/rong/imkit/model/FileInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method

.method public fileTypeImageId(Ljava/lang/String;)I
    .locals 3
    .parameter "fileName"

    .prologue
    .line 43
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_image_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget v0, Lio/rong/imkit/R$drawable;->rc_file_icon_picture:I

    .line 57
    .local v0, id:I
    :goto_0
    return v0

    .line 45
    .end local v0           #id:I
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_file_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    sget v0, Lio/rong/imkit/R$drawable;->rc_file_icon_file:I

    .restart local v0       #id:I
    goto :goto_0

    .line 47
    .end local v0           #id:I
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_video_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    sget v0, Lio/rong/imkit/R$drawable;->rc_file_icon_video:I

    .restart local v0       #id:I
    goto :goto_0

    .line 49
    .end local v0           #id:I
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_audio_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    sget v0, Lio/rong/imkit/R$drawable;->rc_file_icon_audio:I

    .restart local v0       #id:I
    goto :goto_0

    .line 51
    .end local v0           #id:I
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_word_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    sget v0, Lio/rong/imkit/R$drawable;->rc_file_icon_word:I

    .restart local v0       #id:I
    goto :goto_0

    .line 53
    .end local v0           #id:I
    :cond_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$array;->rc_excel_file_suffix:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    sget v0, Lio/rong/imkit/R$drawable;->rc_file_icon_excel:I

    .restart local v0       #id:I
    goto :goto_0

    .line 56
    .end local v0           #id:I
    :cond_5
    sget v0, Lio/rong/imkit/R$drawable;->rc_file_icon_else:I

    .restart local v0       #id:I
    goto :goto_0
.end method

.method public formatFileSize(J)Ljava/lang/String;
    .locals 5
    .parameter "size"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 313
    const-wide/32 v0, 0x80000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 314
    const-string v0, "%.2f K"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p1

    const/high16 v3, 0x4480

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 315
    :cond_0
    const-wide/32 v0, 0x20000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 316
    const-string v0, "%.2f M"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p1

    const/high16 v3, 0x4980

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, "%.2f G"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p1

    const/high16 v3, 0x4e80

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAudioFilesInfo(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .parameter "fileDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->audioFilesInfo:Ljava/util/List;

    .line 179
    invoke-virtual {p0, p1}, Lio/rong/imkit/utils/FileTypeUtils;->audioFilesInfo(Ljava/io/File;)V

    .line 180
    iget-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->audioFilesInfo:Ljava/util/List;

    return-object v0
.end method

.method public getFileIconResource(Lio/rong/imkit/model/FileInfo;)I
    .locals 1
    .parameter "file"

    .prologue
    .line 281
    invoke-virtual {p1}, Lio/rong/imkit/model/FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget v0, Lio/rong/imkit/R$drawable;->rc_ad_list_folder_icon:I

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lio/rong/imkit/model/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/rong/imkit/utils/FileTypeUtils;->getFileTypeImageId(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getFileInfoFromFile(Ljava/io/File;)Lio/rong/imkit/model/FileInfo;
    .locals 6
    .parameter "file"

    .prologue
    .line 231
    new-instance v0, Lio/rong/imkit/model/FileInfo;

    invoke-direct {v0}, Lio/rong/imkit/model/FileInfo;-><init>()V

    .line 232
    .local v0, fileInfo:Lio/rong/imkit/model/FileInfo;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/rong/imkit/model/FileInfo;->setFileSize(J)V

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/FileInfo;->setDirectory(Z)V

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 237
    .local v2, lastDotIndex:I
    if-lez v2, :cond_0

    .line 238
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, fileSuffix:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lio/rong/imkit/model/FileInfo;->setSuffix(Ljava/lang/String;)V

    .line 241
    .end local v1           #fileSuffix:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFileInfosFromFileArray([Ljava/io/File;)Ljava/util/List;
    .locals 6
    .parameter "files"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v3, fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 224
    .local v1, file:Ljava/io/File;
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->getFileInfoFromFile(Ljava/io/File;)Lio/rong/imkit/model/FileInfo;

    move-result-object v2

    .line 225
    .local v2, fileInfo:Lio/rong/imkit/model/FileInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileInfo:Lio/rong/imkit/model/FileInfo;
    :cond_0
    return-object v3
.end method

.method public getOpenFileIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "fileName"
    .parameter "fileSavePath"

    .prologue
    const/high16 v6, 0x400

    const/high16 v5, 0x1000

    const/4 v4, 0x0

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$array;->rc_image_file_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$array;->rc_file_file_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$array;->rc_video_file_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$array;->rc_audio_file_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$array;->rc_word_file_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .end local v1           #uri:Landroid/net/Uri;
    :cond_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$array;->rc_excel_file_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .end local v1           #uri:Landroid/net/Uri;
    :cond_5
    return-object v0
.end method

.method public getOtherFilesInfo(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .parameter "fileDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->otherFilesInfo:Ljava/util/List;

    .line 201
    invoke-virtual {p0, p1}, Lio/rong/imkit/utils/FileTypeUtils;->otherFilesInfo(Ljava/io/File;)V

    .line 202
    iget-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->otherFilesInfo:Ljava/util/List;

    return-object v0
.end method

.method public getTextFilesInfo(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .parameter "fileDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->textFilesInfo:Ljava/util/List;

    .line 135
    invoke-virtual {p0, p1}, Lio/rong/imkit/utils/FileTypeUtils;->textFilesInfo(Ljava/io/File;)V

    .line 136
    iget-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->textFilesInfo:Ljava/util/List;

    return-object v0
.end method

.method public getVideoFilesInfo(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .parameter "fileDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->videoFilesInfo:Ljava/util/List;

    .line 157
    invoke-virtual {p0, p1}, Lio/rong/imkit/utils/FileTypeUtils;->videoFilesInfo(Ljava/io/File;)V

    .line 158
    iget-object v0, p0, Lio/rong/imkit/utils/FileTypeUtils;->videoFilesInfo:Ljava/util/List;

    return-object v0
.end method

.method public otherFilesInfo(Ljava/io/File;)V
    .locals 9
    .parameter "fileDir"

    .prologue
    .line 206
    sget-object v6, Lio/rong/imkit/utils/FileTypeUtils;->ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 207
    .local v5, listFiles:[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 208
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 209
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->otherFilesInfo(Ljava/io/File;)V

    .line 208
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$array;->rc_other_file_suffix:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->getFileInfoFromFile(Ljava/io/File;)Lio/rong/imkit/model/FileInfo;

    move-result-object v2

    .line 214
    .local v2, fileInfo:Lio/rong/imkit/model/FileInfo;
    iget-object v6, p0, Lio/rong/imkit/utils/FileTypeUtils;->otherFilesInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileInfo:Lio/rong/imkit/model/FileInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method

.method public textFilesInfo(Ljava/io/File;)V
    .locals 9
    .parameter "fileDir"

    .prologue
    .line 140
    sget-object v6, Lio/rong/imkit/utils/FileTypeUtils;->ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 141
    .local v5, listFiles:[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 142
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 143
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->textFilesInfo(Ljava/io/File;)V

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$array;->rc_file_file_suffix:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->getFileInfoFromFile(Ljava/io/File;)Lio/rong/imkit/model/FileInfo;

    move-result-object v2

    .line 148
    .local v2, fileInfo:Lio/rong/imkit/model/FileInfo;
    iget-object v6, p0, Lio/rong/imkit/utils/FileTypeUtils;->textFilesInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileInfo:Lio/rong/imkit/model/FileInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method

.method public videoFilesInfo(Ljava/io/File;)V
    .locals 9
    .parameter "fileDir"

    .prologue
    .line 162
    sget-object v6, Lio/rong/imkit/utils/FileTypeUtils;->ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 163
    .local v5, listFiles:[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 164
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 165
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->videoFilesInfo(Ljava/io/File;)V

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$array;->rc_video_file_suffix:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lio/rong/imkit/utils/FileTypeUtils;->checkSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->getFileInfoFromFile(Ljava/io/File;)Lio/rong/imkit/model/FileInfo;

    move-result-object v2

    .line 170
    .local v2, fileInfo:Lio/rong/imkit/model/FileInfo;
    iget-object v6, p0, Lio/rong/imkit/utils/FileTypeUtils;->videoFilesInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileInfo:Lio/rong/imkit/model/FileInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method
