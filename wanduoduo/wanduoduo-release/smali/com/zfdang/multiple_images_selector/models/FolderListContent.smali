.class public Lcom/zfdang/multiple_images_selector/models/FolderListContent;
.super Ljava/lang/Object;
.source "FolderListContent.java"


# static fields
.field public static final FOLDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zfdang/multiple_images_selector/models/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOLDERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zfdang/multiple_images_selector/models/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedFolder:Lcom/zfdang/multiple_images_selector/models/FolderItem;

.field public static selectedFolderIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItem(Lcom/zfdang/multiple_images_selector/models/FolderItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 31
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->path:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    return-void
.end method

.method public static getItem(Ljava/lang/String;)Lcom/zfdang/multiple_images_selector/models/FolderItem;
    .locals 1
    .parameter "folderPath"

    .prologue
    .line 36
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSelectedFolder()Lcom/zfdang/multiple_images_selector/models/FolderItem;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->selectedFolder:Lcom/zfdang/multiple_images_selector/models/FolderItem;

    return-object v0
.end method

.method public static setSelectedFolder(Lcom/zfdang/multiple_images_selector/models/FolderItem;I)V
    .locals 0
    .parameter "currentFolder"
    .parameter "index"

    .prologue
    .line 21
    sput-object p0, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->selectedFolder:Lcom/zfdang/multiple_images_selector/models/FolderItem;

    .line 22
    sput p1, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->selectedFolderIndex:I

    .line 23
    return-void
.end method
