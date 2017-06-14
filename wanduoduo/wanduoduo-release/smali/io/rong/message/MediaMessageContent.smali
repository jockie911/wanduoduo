.class public abstract Lio/rong/message/MediaMessageContent;
.super Lio/rong/imlib/model/MessageContent;
.source "MediaMessageContent.java"


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mLocalPath:Landroid/net/Uri;

.field private mMediaUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/rong/message/MediaMessageContent;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/rong/message/MediaMessageContent;->mLocalPath:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/rong/message/MediaMessageContent;->mMediaUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "mExtra"

    .prologue
    .line 33
    iput-object p1, p0, Lio/rong/message/MediaMessageContent;->mExtra:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLocalPath(Landroid/net/Uri;)V
    .locals 0
    .parameter "mLocalPath"

    .prologue
    .line 25
    iput-object p1, p0, Lio/rong/message/MediaMessageContent;->mLocalPath:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public setMediaUrl(Landroid/net/Uri;)V
    .locals 0
    .parameter "mMediaUrl"

    .prologue
    .line 21
    iput-object p1, p0, Lio/rong/message/MediaMessageContent;->mMediaUrl:Landroid/net/Uri;

    .line 22
    return-void
.end method
