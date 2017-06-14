.class public Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
.super Ljava/lang/Object;
.source "MediaRecorderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/model/MediaRecorderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Buidler"
.end annotation


# instance fields
.field private MAX_FRAME_RATE:I

.field private MIN_FRAME_RATE:I

.field private RECORD_TIME_MAX:I

.field private RECORD_TIME_MIN:I

.field private SMALL_VIDEO_HEIGHT:I

.field private SMALL_VIDEO_WIDTH:I

.field private VIDEO_BITRATE:I

.field private captureThumbnailsTime:I

.field private doH264Compress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0x1770

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MAX:I

    .line 148
    const/16 v0, 0x5dc

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MIN:I

    .line 152
    const/16 v0, 0x168

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_HEIGHT:I

    .line 158
    const/16 v0, 0x1e0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_WIDTH:I

    .line 162
    const/16 v0, 0x14

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MAX_FRAME_RATE:I

    .line 166
    const/16 v0, 0x8

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MIN_FRAME_RATE:I

    .line 170
    const/16 v0, 0x800

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->VIDEO_BITRATE:I

    .line 174
    iput-boolean v1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->doH264Compress:Z

    .line 178
    iput v1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->captureThumbnailsTime:I

    return-void
.end method

.method static synthetic access$000(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MAX:I

    return v0
.end method

.method static synthetic access$100(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MIN:I

    return v0
.end method

.method static synthetic access$200(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MAX_FRAME_RATE:I

    return v0
.end method

.method static synthetic access$300(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->captureThumbnailsTime:I

    return v0
.end method

.method static synthetic access$400(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MIN_FRAME_RATE:I

    return v0
.end method

.method static synthetic access$500(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_HEIGHT:I

    return v0
.end method

.method static synthetic access$600(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_WIDTH:I

    return v0
.end method

.method static synthetic access$700(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->VIDEO_BITRATE:I

    return v0
.end method

.method static synthetic access$800(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-boolean v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->doH264Compress:Z

    return v0
.end method


# virtual methods
.method public build()Lmabeijianxi/camera/model/MediaRecorderConfig;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lmabeijianxi/camera/model/MediaRecorderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;-><init>(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;Lmabeijianxi/camera/model/MediaRecorderConfig$1;)V

    return-object v0
.end method

.method public captureThumbnailsTime(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "captureThumbnailsTime"

    .prologue
    .line 189
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->captureThumbnailsTime:I

    .line 190
    return-object p0
.end method

.method public doH264Compress(Z)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "doH264Compress"

    .prologue
    .line 198
    iput-boolean p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->doH264Compress:Z

    .line 199
    return-object p0
.end method

.method public maxFrameRate(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "MAX_FRAME_RATE"

    .prologue
    .line 207
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MAX_FRAME_RATE:I

    .line 208
    return-object p0
.end method

.method public minFrameRate(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "MIN_FRAME_RATE"

    .prologue
    .line 216
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MIN_FRAME_RATE:I

    .line 217
    return-object p0
.end method

.method public recordTimeMax(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "RECORD_TIME_MAX"

    .prologue
    .line 225
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MAX:I

    .line 226
    return-object p0
.end method

.method public recordTimeMin(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "RECORD_TIME_MIN"

    .prologue
    .line 234
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MIN:I

    .line 235
    return-object p0
.end method

.method public smallVideoHeight(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "SMALL_VIDEO_HEIGHT"

    .prologue
    .line 243
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_HEIGHT:I

    .line 244
    return-object p0
.end method

.method public smallVideoWidth(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "SMALL_VIDEO_WIDTH"

    .prologue
    .line 254
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_WIDTH:I

    .line 255
    return-object p0
.end method

.method public videoBitrate(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    .locals 0
    .parameter "VIDEO_BITRATE"

    .prologue
    .line 263
    iput p1, p0, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->VIDEO_BITRATE:I

    .line 264
    return-object p0
.end method
