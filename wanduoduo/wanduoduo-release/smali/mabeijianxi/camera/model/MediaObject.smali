.class public Lmabeijianxi/camera/model/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmabeijianxi/camera/model/MediaObject$MediaPart;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_DURATION:I = 0x2710

.field public static final DEFAULT_VIDEO_BITRATE:I = 0x320

.field public static final MEDIA_PART_TYPE_IMPORT_IMAGE:I = 0x2

.field public static final MEDIA_PART_TYPE_IMPORT_VIDEO:I = 0x1

.field public static final MEDIA_PART_TYPE_RECORD:I = 0x0

.field public static final MEDIA_PART_TYPE_RECORD_MP4:I = 0x3


# instance fields
.field private volatile transient mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

.field private mKey:Ljava/lang/String;

.field private mMaxDuration:I

.field private mMediaList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lmabeijianxi/camera/model/MediaObject$MediaPart;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputDirectory:Ljava/lang/String;

.field private mOutputObjectPath:Ljava/lang/String;

.field private mOutputVideoPath:Ljava/lang/String;

.field private mOutputVideoThumbPath:Ljava/lang/String;

.field public mThemeObject:Lmabeijianxi/camera/model/MediaThemeObject;

.field private mVideoBitrate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "path"

    .prologue
    .line 50
    const/16 v0, 0x320

    invoke-direct {p0, p1, p2, v0}, Lmabeijianxi/camera/model/MediaObject;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "path"
    .parameter "videoBitrate"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    .line 54
    iput-object p1, p0, Lmabeijianxi/camera/model/MediaObject;->mKey:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    .line 56
    iput p3, p0, Lmabeijianxi/camera/model/MediaObject;->mVideoBitrate:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".obj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputObjectPath:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputVideoPath:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputVideoThumbPath:Ljava/lang/String;

    .line 60
    const/16 v0, 0x2710

    iput v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMaxDuration:I

    .line 61
    return-void
.end method

.method public static preparedMediaObject(Lmabeijianxi/camera/model/MediaObject;)V
    .locals 8
    .parameter "mMediaObject"

    .prologue
    .line 320
    if-eqz p0, :cond_0

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, duration:I
    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 323
    .local v1, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    int-to-long v4, v0

    iput-wide v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    .line 324
    iget-wide v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    iget v3, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    .line 325
    iget v3, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    add-int/2addr v0, v3

    .line 326
    goto :goto_0

    .line 328
    .end local v0           #duration:I
    .end local v1           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    return-void
.end method


# virtual methods
.method public buildMediaPart(I)Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 5
    .parameter "cameraId"

    .prologue
    const/4 v4, 0x1

    .line 176
    new-instance v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-direct {v0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 177
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {p0}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v1

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->position:I

    .line 178
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    .line 179
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->thumbPath:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput p1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cameraId:I

    .line 183
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {v0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->prepare()V

    .line 184
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput-boolean v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    .line 185
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    .line 186
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->type:I

    .line 187
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    return-object v0
.end method

.method public buildMediaPart(ILjava/lang/String;)Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 5
    .parameter "cameraId"
    .parameter "videoSuffix"

    .prologue
    const/4 v4, 0x1

    .line 192
    new-instance v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-direct {v0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 193
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {p0}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v1

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->position:I

    .line 194
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    .line 195
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->thumbPath:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput-boolean v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    .line 199
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput p1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cameraId:I

    .line 200
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    .line 201
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->type:I

    .line 202
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    return-object v0
.end method

.method public buildMediaPart(Ljava/lang/String;II)Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 4
    .parameter "path"
    .parameter "duration"
    .parameter "type"

    .prologue
    .line 215
    new-instance v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-direct {v0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 216
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {p0}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v1

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->position:I

    .line 217
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    .line 218
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget v2, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->thumbPath:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput p2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    .line 222
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    .line 223
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    int-to-long v2, p2

    iput-wide v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    .line 224
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    const/4 v1, 0x0

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutStartTime:I

    .line 225
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput p2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutEndTime:I

    .line 226
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput-object p1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput p3, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->type:I

    .line 228
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    return-object v0
.end method

.method public cleanTheme()V
    .locals 3

    .prologue
    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mThemeObject:Lmabeijianxi/camera/model/MediaThemeObject;

    .line 97
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 99
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    const/4 v2, 0x0

    iput v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutStartTime:I

    .line 100
    iget v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    iput v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutEndTime:I

    goto :goto_0

    .line 103
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 308
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    invoke-virtual {v0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->stop()V

    goto :goto_0

    .line 311
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-static {v1}, Lmabeijianxi/camera/util/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public getConcatPCM()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v3, yuv:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 260
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 261
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v4, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempAudioPath:Ljava/lang/String;

    invoke-static {v4}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v4, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 264
    :cond_1
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v4, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    :cond_2
    const-string v4, "concat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    .local v1, j:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 268
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 269
    .local v2, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    iget-object v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempAudioPath:Ljava/lang/String;

    invoke-static {v4}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    iget-object v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :goto_2
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_3

    .line 274
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_4
    iget-object v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public getConcatYUV()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v3, yuv:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 235
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 236
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v4, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempMediaPath:Ljava/lang/String;

    invoke-static {v4}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v4, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 239
    :cond_1
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iget-object v4, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempMediaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    :cond_2
    const-string v4, "concat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    .local v1, j:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 243
    iget-object v4, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 244
    .local v2, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    iget-object v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempMediaPath:Ljava/lang/String;

    invoke-static {v4}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 245
    iget-object v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_2
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_3

    .line 249
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_4
    iget-object v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempMediaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lmabeijianxi/camera/model/MediaObject;->getCurrentPart()Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v0

    .line 293
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v0, :cond_0

    .line 294
    iget v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->index:I

    .line 295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPart()Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 288
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 288
    :cond_1
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    goto :goto_0
.end method

.method public getCutDuration()I
    .locals 7

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, duration:I
    iget-object v3, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 141
    .local v2, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    iget v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutEndTime:I

    iget v5, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutStartTime:I

    sub-int v0, v4, v5

    .line 142
    .local v0, cut:I
    iget v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->speed:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 143
    int-to-float v4, v0

    const/high16 v5, 0x4120

    iget v6, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->speed:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 145
    :cond_0
    add-int/2addr v1, v0

    .line 146
    goto :goto_0

    .line 148
    .end local v0           #cut:I
    .end local v2           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_1
    return v1
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, duration:I
    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 130
    .local v1, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->getDuration()I

    move-result v3

    add-int/2addr v0, v3

    .line 131
    goto :goto_0

    .line 133
    .end local v1           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    return v0
.end method

.method public getMaxDuration()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMaxDuration:I

    return v0
.end method

.method public getMedaParts()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lmabeijianxi/camera/model/MediaObject$MediaPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getObjectFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputObjectPath:Ljava/lang/String;

    invoke-static {v2}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputVideoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, f:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".obj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, obj:Ljava/lang/String;
    iput-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputObjectPath:Ljava/lang/String;

    .line 112
    .end local v0           #f:Ljava/io/File;
    .end local v1           #obj:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputObjectPath:Ljava/lang/String;

    return-object v2
.end method

.method public getOutputDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputTempTranscodingVideoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTempVideoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_temp.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputVideoThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mOutputVideoThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPart(I)Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 299
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 300
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lmabeijianxi/camera/model/MediaObject;->mVideoBitrate:I

    return v0
.end method

.method public removePart(Lmabeijianxi/camera/model/MediaObject$MediaPart;Z)V
    .locals 1
    .parameter "part"
    .parameter "deleteFile"

    .prologue
    .line 153
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p1}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->stop()V

    .line 159
    if-eqz p2, :cond_1

    .line 160
    invoke-virtual {p1}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->delete()V

    .line 162
    :cond_1
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/model/MediaObject;->mCurrentPart:Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 167
    :cond_2
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 75
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    .line 76
    iput p1, p0, Lmabeijianxi/camera/model/MediaObject;->mMaxDuration:I

    .line 78
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 332
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v1, result:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 336
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 339
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
