.class public Lmabeijianxi/camera/model/MediaThemeObject;
.super Ljava/lang/Object;
.source "MediaThemeObject.java"


# instance fields
.field public mFilterThemeName:Ljava/lang/String;

.field public mMVThemeName:Ljava/lang/String;

.field public mMusicThemeName:Ljava/lang/String;

.field public mOrgiMute:Z

.field public mSoundText:Ljava/lang/String;

.field public mSoundTextId:Ljava/lang/String;

.field public mSoundThemeName:Ljava/lang/String;

.field public mSpeedThemeName:Ljava/lang/String;

.field public mThemeMute:Z

.field public mWatermarkThemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private varargs isEmpty([Ljava/lang/String;)Z
    .locals 5
    .parameter "themes"

    .prologue
    const/4 v1, 0x0

    .line 50
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 52
    .local v0, theme:Ljava/lang/String;
    const-string v4, "Empty"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    .end local v0           #theme:Ljava/lang/String;
    :goto_1
    return v1

    .line 50
    .restart local v0       #theme:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v0           #theme:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    const-string v2, "Empty"

    iget-object v3, p0, Lmabeijianxi/camera/model/MediaThemeObject;->mMVThemeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Lmabeijianxi/camera/model/MediaThemeObject;->mOrgiMute:Z

    if-nez v2, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lmabeijianxi/camera/model/MediaThemeObject;->mMusicThemeName:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v3, p0, Lmabeijianxi/camera/model/MediaThemeObject;->mWatermarkThemeName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v4, p0, Lmabeijianxi/camera/model/MediaThemeObject;->mFilterThemeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmabeijianxi/camera/model/MediaThemeObject;->mSoundThemeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lmabeijianxi/camera/model/MediaThemeObject;->mSpeedThemeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lmabeijianxi/camera/model/MediaThemeObject;->isEmpty([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
