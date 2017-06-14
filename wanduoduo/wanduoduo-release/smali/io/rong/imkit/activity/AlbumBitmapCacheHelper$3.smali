.class Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;
.super Ljava/lang/Object;
.source "AlbumBitmapCacheHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->decodeBitmapFromPath(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$height:I

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    iput-object p2, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$path:Ljava/lang/String;

    iput p3, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$width:I

    iput p4, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$height:I

    iput-object p5, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 146
    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    #getter for: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->currentShowString:Ljava/util/ArrayList;
    invoke-static {v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$000(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    #getter for: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;
    invoke-static {v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$100(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Landroid/support/v4/util/LruCache;

    move-result-object v10

    if-nez v10, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$width:I

    if-eqz v10, :cond_2

    iget v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$height:I

    if-nez v10, :cond_5

    .line 153
    :cond_2
    :try_start_0
    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    iget-object v11, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$path:Ljava/lang/String;

    iget v12, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$width:I

    iget v13, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$height:I

    #calls: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    invoke-static {v10, v11, v12, v13}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$200(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    #getter for: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;
    invoke-static {v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$100(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Landroid/support/v4/util/LruCache;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 208
    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    #getter for: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;
    invoke-static {v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$100(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Landroid/support/v4/util/LruCache;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 210
    .local v6, msg:Landroid/os/Message;
    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 154
    .end local v6           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/rong/imkit/utils/CommonUtils;->md5(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, hash:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    iget-object v11, v11, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->mContext:Landroid/content/Context;

    const-string v12, "image"

    invoke-static {v11, v12}, Lio/rong/common/FileUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".temp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, tempPath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$path:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v7, picFile:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v8, tempFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_6

    .line 168
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 170
    :cond_6
    if-nez v1, :cond_a

    .line 172
    :try_start_1
    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    iget-object v11, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$path:Ljava/lang/String;

    iget v12, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$width:I

    iget v13, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->val$height:I

    #calls: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    invoke-static {v10, v11, v12, v13}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$200(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 176
    :goto_2
    if-eqz v1, :cond_7

    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    #getter for: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;
    invoke-static {v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$100(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Landroid/support/v4/util/LruCache;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 177
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    :goto_3
    invoke-static {v1, v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->centerSquareScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    :cond_7
    if-eqz v1, :cond_3

    .line 181
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_9

    .line 183
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 188
    :goto_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 189
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 192
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 193
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 194
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 195
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 173
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 174
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_2

    .line 177
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    goto :goto_3

    .line 185
    .restart local v3       #file:Ljava/io/File;
    :cond_9
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 196
    .end local v3           #file:Ljava/io/File;
    :catch_3
    move-exception v2

    .line 197
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 202
    .end local v2           #e:Ljava/io/IOException;
    :cond_a
    iget-object v10, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;->this$0:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    #getter for: Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;
    invoke-static {v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->access$100(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Landroid/support/v4/util/LruCache;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 203
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    :goto_5
    invoke-static {v1, v10}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->centerSquareScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    goto :goto_5
.end method
