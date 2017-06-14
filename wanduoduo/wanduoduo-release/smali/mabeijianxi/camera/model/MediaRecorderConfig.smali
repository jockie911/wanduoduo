.class public final Lmabeijianxi/camera/model/MediaRecorderConfig;
.super Ljava/lang/Object;
.source "MediaRecorderConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmabeijianxi/camera/model/MediaRecorderConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_FRAME_RATE:I

.field private final MIN_FRAME_RATE:I

.field private final RECORD_TIME_MAX:I

.field private final RECORD_TIME_MIN:I

.field private final SMALL_VIDEO_HEIGHT:I

.field private final SMALL_VIDEO_WIDTH:I

.field private final VIDEO_BITRATE:I

.field private final captureThumbnailsTime:I

.field private final doH264Compress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lmabeijianxi/camera/model/MediaRecorderConfig$1;

    invoke-direct {v0}, Lmabeijianxi/camera/model/MediaRecorderConfig$1;-><init>()V

    sput-object v0, Lmabeijianxi/camera/model/MediaRecorderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MAX:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MIN:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_HEIGHT:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_WIDTH:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MAX_FRAME_RATE:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MIN_FRAME_RATE:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->VIDEO_BITRATE:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->doH264Compress:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->captureThumbnailsTime:I

    .line 113
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)V
    .locals 1
    .parameter "buidler"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MAX:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$000(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MAX:I

    .line 52
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->RECORD_TIME_MIN:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$100(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MIN:I

    .line 53
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MAX_FRAME_RATE:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$200(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MAX_FRAME_RATE:I

    .line 54
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->captureThumbnailsTime:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$300(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->captureThumbnailsTime:I

    .line 55
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->MIN_FRAME_RATE:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$400(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MIN_FRAME_RATE:I

    .line 56
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_HEIGHT:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$500(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_HEIGHT:I

    .line 57
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->SMALL_VIDEO_WIDTH:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$600(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_WIDTH:I

    .line 58
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->VIDEO_BITRATE:I
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$700(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->VIDEO_BITRATE:I

    .line 59
    #getter for: Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->doH264Compress:Z
    invoke-static {p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->access$800(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)Z

    move-result v0

    iput-boolean v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->doH264Compress:Z

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;Lmabeijianxi/camera/model/MediaRecorderConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lmabeijianxi/camera/model/MediaRecorderConfig;-><init>(Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getCaptureThumbnailsTime()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->captureThumbnailsTime:I

    return v0
.end method

.method public getMaxFrameRate()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MAX_FRAME_RATE:I

    return v0
.end method

.method public getMinFrameRate()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MIN_FRAME_RATE:I

    return v0
.end method

.method public getRecordTimeMax()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MAX:I

    return v0
.end method

.method public getRecordTimeMin()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MIN:I

    return v0
.end method

.method public getSmallVideoHeight()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_HEIGHT:I

    return v0
.end method

.method public getSmallVideoWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_WIDTH:I

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->VIDEO_BITRATE:I

    return v0
.end method

.method public isDoH264Compress()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->doH264Compress:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 129
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MAX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->RECORD_TIME_MIN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_HEIGHT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->SMALL_VIDEO_WIDTH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MAX_FRAME_RATE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->MIN_FRAME_RATE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->VIDEO_BITRATE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->doH264Compress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget v0, p0, Lmabeijianxi/camera/model/MediaRecorderConfig;->captureThumbnailsTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
