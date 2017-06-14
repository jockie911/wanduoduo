.class Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;
.super Ljava/lang/Object;
.source "ImagesSelectorActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->LoadFolderAndImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Lrx/Observable",
        "<",
        "Lcom/zfdang/multiple_images_selector/models/ImageItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 226
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lrx/Observable;
    .locals 21
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/zfdang/multiple_images_selector/models/ImageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v20, results:Ljava/util/List;,"Ljava/util/List<Lcom/zfdang/multiple_images_selector/models/ImageItem;>;"
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 232
    .local v3, contentUri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_size > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMinImageSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, where:Ljava/lang/String;
    const-string v7, "date_added DESC"

    .line 235
    .local v7, sortOrder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    invoke-virtual {v4}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    #setter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->contentResolver:Landroid/content/ContentResolver;
    invoke-static {v2, v4}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$302(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->contentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$300(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    #getter for: Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->projections:[Ljava/lang/String;
    invoke-static {v4}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->access$400(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 237
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 238
    const-string v2, "ImageSelector"

    const-string v4, "call: Empty images"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    invoke-static/range {v20 .. v20}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    return-object v2

    .line 239
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v9, 0x0

    .line 241
    .local v9, allImagesFolderItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 242
    .local v19, pathCol:I
    const-string v2, "_display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 243
    .local v17, nameCol:I
    const-string v2, "date_added"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 245
    .local v8, DateCol:I
    :cond_2
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 246
    .local v18, path:Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 247
    .local v16, name:Ljava/lang/String;
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 249
    .local v12, dateTime:J
    new-instance v15, Lcom/zfdang/multiple_images_selector/models/ImageItem;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1, v12, v13}, Lcom/zfdang/multiple_images_selector/models/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 252
    .local v15, item:Lcom/zfdang/multiple_images_selector/models/ImageItem;
    sget-object v2, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 254
    const/4 v2, 0x0

    sput v2, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->selectedFolderIndex:I

    .line 257
    new-instance v9, Lcom/zfdang/multiple_images_selector/models/FolderItem;

    .end local v9           #allImagesFolderItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;->this$0:Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;

    sget v4, Lcom/zfdang/multiple_images_selector/R$string;->selector_folder_all:I

    invoke-virtual {v2, v4}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-direct {v9, v2, v4, v0}, Lcom/zfdang/multiple_images_selector/models/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .restart local v9       #allImagesFolderItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    invoke-static {v9}, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->addItem(Lcom/zfdang/multiple_images_selector/models/FolderItem;)V

    .line 261
    sget-boolean v2, Lcom/zfdang/multiple_images_selector/SelectorSettings;->isShowCamera:Z

    if-eqz v2, :cond_3

    .line 262
    sget-object v2, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->cameraItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v2, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->cameraItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

    invoke-virtual {v9, v2}, Lcom/zfdang/multiple_images_selector/models/FolderItem;->addImageItem(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V

    .line 268
    :cond_3
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v9, v15}, Lcom/zfdang/multiple_images_selector/models/FolderItem;->addImageItem(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V

    .line 274
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, folderPath:Ljava/lang/String;
    invoke-static {v14}, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->getItem(Ljava/lang/String;)Lcom/zfdang/multiple_images_selector/models/FolderItem;

    move-result-object v11

    .line 276
    .local v11, folderItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    if-nez v11, :cond_4

    .line 278
    new-instance v11, Lcom/zfdang/multiple_images_selector/models/FolderItem;

    .end local v11           #folderItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    invoke-static {v14}, Lcom/zfdang/multiple_images_selector/utilities/StringUtils;->getLastPathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v11, v2, v14, v0}, Lcom/zfdang/multiple_images_selector/models/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .restart local v11       #folderItem:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    invoke-static {v11}, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->addItem(Lcom/zfdang/multiple_images_selector/models/FolderItem;)V

    .line 281
    :cond_4
    invoke-virtual {v11, v15}, Lcom/zfdang/multiple_images_selector/models/FolderItem;->addImageItem(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V

    .line 282
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 283
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
