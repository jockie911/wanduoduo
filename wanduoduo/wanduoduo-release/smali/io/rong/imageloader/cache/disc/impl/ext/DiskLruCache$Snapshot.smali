.class public final Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private files:[Ljava/io/File;

.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;


# direct methods
.method private constructor <init>(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "sequenceNumber"
    .parameter "files"
    .parameter "ins"
    .parameter "lengths"

    .prologue
    .line 713
    iput-object p1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->this$0:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 715
    iput-wide p3, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 716
    iput-object p5, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->files:[Ljava/io/File;

    .line 717
    iput-object p6, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 718
    iput-object p7, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->lengths:[J

    .line 719
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 706
    invoke-direct/range {p0 .. p7}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;-><init>(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, arr$:[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 752
    .local v2, in:Ljava/io/InputStream;
    invoke-static {v2}, Lio/rong/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v2           #in:Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->this$0:Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;

    iget-object v1, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->sequenceNumber:J

    #calls: Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;J)Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;->access$1700(Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J)Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1
    .parameter "index"

    .prologue
    .line 732
    iget-object v0, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->files:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter "index"

    .prologue
    .line 737
    iget-object v0, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 747
    iget-object v0, p0, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    #calls: Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lio/rong/imageloader/cache/disc/impl/ext/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
