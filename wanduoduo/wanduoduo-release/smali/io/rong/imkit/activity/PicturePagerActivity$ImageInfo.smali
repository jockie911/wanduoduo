.class Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;
.super Ljava/lang/Object;
.source "PicturePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PicturePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageInfo"
.end annotation


# instance fields
.field private largeImageUri:Landroid/net/Uri;

.field private messageId:I

.field final synthetic this$0:Lio/rong/imkit/activity/PicturePagerActivity;

.field private thumbUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PicturePagerActivity;ILandroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "messageId"
    .parameter "thumbnail"
    .parameter "largeImageUri"

    .prologue
    .line 389
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput p2, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->messageId:I

    .line 391
    iput-object p3, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->thumbUri:Landroid/net/Uri;

    .line 392
    iput-object p4, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->largeImageUri:Landroid/net/Uri;

    .line 393
    return-void
.end method


# virtual methods
.method public getLargeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->largeImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->messageId:I

    return v0
.end method

.method public getThumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->thumbUri:Landroid/net/Uri;

    return-object v0
.end method
