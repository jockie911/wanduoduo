.class public Lio/rong/common/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "FileUtils"

    sput-object v0, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "buf"
    .parameter "filePath"
    .parameter "fileName"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 159
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 161
    .local v4, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 163
    sget-object v8, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    const-string v9, "byte2File: dir does not exist!"

    invoke-static {v8, v9}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    .end local v4           #file:Ljava/io/File;
    .local v5, file:Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 168
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 169
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 174
    if-eqz v1, :cond_1

    .line 176
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 181
    :cond_1
    :goto_0
    if-eqz v7, :cond_6

    .line 183
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 189
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #dir:Ljava/io/File;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_1
    return-object v4

    .line 177
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 178
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 185
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 186
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 170
    .end local v2           #dir:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 171
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    sget-object v8, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    const-string v9, "byte2File: Exception!"

    invoke-static {v8, v9}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    if-eqz v0, :cond_3

    .line 176
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 181
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v6, :cond_2

    .line 183
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 184
    :catch_3
    move-exception v3

    .line 185
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 177
    .local v3, e:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 178
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 174
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_4

    .line 176
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 181
    :cond_4
    :goto_5
    if-eqz v6, :cond_5

    .line 183
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 186
    :cond_5
    :goto_6
    throw v8

    .line 177
    :catch_5
    move-exception v3

    .line 178
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 184
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 185
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 174
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/File;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_4

    .end local v4           #file:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v8

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 170
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_2

    .end local v4           #file:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public static convertBitmap2File(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "bm"
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 78
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    sget-object v4, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertBitmap2File: dir does not exist! -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v0, bos:Ljava/io/BufferedOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 88
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    :goto_0
    return-object v3

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    sget-object v4, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    const-string v5, "convertBitmap2File: Exception!"

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "src"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, dest:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 100
    sget-object v7, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyFile: src file does not exist! -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 128
    .end local v1           #dest:Ljava/io/File;
    .local v2, dest:Ljava/io/File;
    :goto_0
    return-object v2

    .line 104
    .end local v2           #dest:Ljava/io/File;
    .restart local v1       #dest:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #dest:Ljava/io/File;
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v1       #dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 106
    sget-object v7, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    const-string v8, "copyFile: dir does not exist!"

    invoke-static {v7, v8}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1           #dest:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v1       #dest:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 113
    .local v4, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v5, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 116
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, length:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 117
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    .end local v0           #buffer:[B
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #length:I
    :catch_0
    move-exception v3

    .line 123
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    sget-object v7, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    const-string v8, "copyFile: Exception!"

    invoke-static {v7, v8}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 125
    .end local v1           #dest:Ljava/io/File;
    .restart local v2       #dest:Ljava/io/File;
    goto :goto_0

    .line 119
    .end local v2           #dest:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v1       #dest:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #length:I
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 120
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 121
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    .line 128
    .end local v1           #dest:Ljava/io/File;
    .restart local v2       #dest:Ljava/io/File;
    goto :goto_0
.end method

.method public static file2byte(Ljava/io/File;)[B
    .locals 9
    .parameter "file"

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 133
    sget-object v6, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file2byte: src file does not exist! -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v2, 0x0

    .line 153
    :goto_0
    return-object v2

    .line 137
    :cond_0
    const/4 v2, 0x0

    .line 139
    .local v2, buffer:[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v4, fis:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 143
    .local v0, b:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, n:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 144
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    .end local v0           #b:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #n:I
    :catch_0
    move-exception v3

    .line 150
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    sget-object v6, Lio/rong/common/FileUtils;->TAG:Ljava/lang/String;

    const-string v7, "file2byte: Exception!"

    invoke-static {v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v3           #e1:Ljava/lang/Exception;
    .restart local v0       #b:[B
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #n:I
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 148
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public static getByteFromUri(Landroid/net/Uri;)[B
    .locals 6
    .parameter "uri"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/rong/common/FileUtils;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 39
    .local v3, input:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 40
    .local v1, count:I
    :cond_0
    if-nez v1, :cond_1

    .line 41
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 46
    :cond_1
    new-array v0, v1, [B

    .line 47
    .local v0, bytes:[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz v3, :cond_2

    .line 55
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    .end local v0           #bytes:[B
    :cond_2
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 53
    if-eqz v3, :cond_2

    .line 55
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v4

    goto :goto_0

    .line 53
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 55
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    :cond_3
    :goto_1
    throw v4

    .line 56
    .restart local v0       #bytes:[B
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v0           #bytes:[B
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    const-string v0, "\'"

    invoke-static {p0, v0}, Lio/rong/common/FileUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .end parameter
    .parameter "dir"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    .local v1, sdCardExist:Z
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 212
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 216
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, tarDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 221
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "path"

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 29
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 33
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMediaDownloadDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 226
    .local v3, sdCardExist:Z
    const-string v2, "/sdcard"

    .line 227
    .local v2, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 228
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 229
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 232
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lio/rong/imlib/R$string;->rc_media_message_default_save_path:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    const-string v2, "/sdcard"
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 239
    const-string v2, "/sdcard"

    goto :goto_0
.end method

.method public static writeByte(Landroid/net/Uri;[B)V
    .locals 8
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 63
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, fileFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    .local v3, os:Ljava/io/OutputStream;
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v3           #os:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
