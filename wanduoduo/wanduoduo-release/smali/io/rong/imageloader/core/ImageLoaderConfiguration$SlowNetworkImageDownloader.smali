.class Lio/rong/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"

# interfaces
.implements Lio/rong/imageloader/core/download/ImageDownloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlowNetworkImageDownloader"
.end annotation


# instance fields
.field private final wrappedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;


# direct methods
.method public constructor <init>(Lio/rong/imageloader/core/download/ImageDownloader;)V
    .locals 0
    .parameter "wrappedDownloader"

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;->wrappedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 641
    return-void
.end method


# virtual methods
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 3
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    iget-object v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;->wrappedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    invoke-interface {v1, p1, p2}, Lio/rong/imageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 646
    .local v0, imageStream:Ljava/io/InputStream;
    sget-object v1, Lio/rong/imageloader/core/ImageLoaderConfiguration$1;->$SwitchMap$io$rong$imageloader$core$download$ImageDownloader$Scheme:[I

    invoke-static {p1}, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lio/rong/imageloader/core/download/ImageDownloader$Scheme;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 651
    .end local v0           #imageStream:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 649
    .restart local v0       #imageStream:Ljava/io/InputStream;
    :pswitch_0
    new-instance v1, Lio/rong/imageloader/core/assist/FlushedInputStream;

    invoke-direct {v1, v0}, Lio/rong/imageloader/core/assist/FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
