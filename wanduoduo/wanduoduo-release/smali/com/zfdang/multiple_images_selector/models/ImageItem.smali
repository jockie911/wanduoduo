.class public Lcom/zfdang/multiple_images_selector/models/ImageItem;
.super Ljava/lang/Object;
.source "ImageItem.java"


# static fields
.field public static final CAMERA_PATH:Ljava/lang/String; = "Camera"

.field private static final TAG:Ljava/lang/String; = "ImageItem"


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "path"
    .parameter "time"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->time:J

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .line 29
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/zfdang/multiple_images_selector/models/ImageItem;

    move-object v2, v0

    .line 30
    .local v2, other:Lcom/zfdang/multiple_images_selector/models/ImageItem;
    iget-object v3, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    iget-object v4, v2, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 34
    .end local v2           #other:Lcom/zfdang/multiple_images_selector/models/ImageItem;
    :goto_0
    return v3

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "ImageItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "equals: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public isCamera()Z
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    const-string v1, "/CAMERA/CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageItem{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zfdang/multiple_images_selector/models/ImageItem;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
