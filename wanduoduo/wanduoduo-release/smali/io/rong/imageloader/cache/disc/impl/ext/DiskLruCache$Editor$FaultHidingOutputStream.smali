.class Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 881
    iput-object p1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 882
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 883
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 880
    invoke-direct {p0, p1, p2}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 903
    :try_start_0
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 887
    :try_start_0
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 895
    :try_start_0
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
