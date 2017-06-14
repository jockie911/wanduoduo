.class public Lcom/zfdang/multiple_images_selector/models/ImageListContent;
.super Ljava/lang/Object;
.source "ImageListContent.java"


# static fields
.field public static final IMAGES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zfdang/multiple_images_selector/models/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECTED_IMAGES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static bReachMaxNumber:Z

.field public static final cameraItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->bReachMaxNumber:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->IMAGES:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/zfdang/multiple_images_selector/models/ImageItem;

    const-string v1, ""

    const-string v2, "/CAMERA/CAMERA"

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/zfdang/multiple_images_selector/models/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->cameraItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItem(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 19
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    return-void
.end method

.method public static isImageSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 25
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toggleImageSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 29
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
