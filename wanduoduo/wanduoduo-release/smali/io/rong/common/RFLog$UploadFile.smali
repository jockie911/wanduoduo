.class Lio/rong/common/RFLog$UploadFile;
.super Ljava/lang/Thread;
.source "RFLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/common/RFLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadFile"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/common/RFLog$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lio/rong/common/RFLog$UploadFile;-><init>()V

    return-void
.end method

.method private static zipLogFile()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x10

    const/4 v7, 0x0

    .line 247
    new-instance v4, Ljava/io/FileInputStream;

    invoke-static {}, Lio/rong/common/RFLog;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 248
    .local v4, fi:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 249
    .local v5, origin:Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lio/rong/common/RFLog;->access$200()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, dest:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 252
    .local v6, out:Ljava/util/zip/ZipOutputStream;
    const/high16 v8, 0x10

    :try_start_0
    new-array v1, v8, [B

    .line 253
    .local v1, data:[B
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-static {}, Lio/rong/common/RFLog;->access$100()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lio/rong/common/RFLog;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 255
    :goto_0
    const/4 v8, 0x0

    const/high16 v9, 0x10

    invoke-virtual {v5, v1, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 256
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v3

    .line 259
    .local v3, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 263
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 265
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v7

    .line 262
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 263
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 265
    const/4 v7, 0x1

    goto :goto_1

    .line 262
    .end local v0           #count:I
    .end local v1           #data:[B
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 263
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    throw v7
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 174
    const/4 v9, 0x0

    .line 175
    .local v9, outStream:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    .line 176
    .local v4, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 177
    .local v7, logFile:Ljava/io/File;
    const/4 v12, 0x0

    .line 179
    .local v12, zipFile:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lio/rong/common/RFLog;->access$100()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 180
    .end local v7           #logFile:Ljava/io/File;
    .local v8, logFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-result v14

    if-nez v14, :cond_5

    .line 223
    if-eqz v4, :cond_0

    .line 225
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 232
    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 237
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    .line 238
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 240
    :cond_2
    if-eqz v8, :cond_3

    .line 241
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v7, v8

    .line 244
    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    :cond_4
    :goto_2
    return-void

    .line 226
    .end local v7           #logFile:Ljava/io/File;
    .restart local v8       #logFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 227
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 234
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    :try_start_4
    invoke-static {}, Lio/rong/common/RFLog$UploadFile;->zipLogFile()Z

    move-result v14

    if-nez v14, :cond_a

    .line 185
    const-string v14, "RFLog"

    const-string v15, "UploadFile log file == null."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 223
    if-eqz v4, :cond_6

    .line 225
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 230
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    .line 232
    :try_start_6
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 237
    :cond_7
    :goto_4
    if-eqz v12, :cond_8

    .line 238
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 240
    :cond_8
    if-eqz v8, :cond_9

    .line 241
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_9
    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    goto :goto_2

    .line 226
    .end local v7           #logFile:Ljava/io/File;
    .restart local v8       #logFile:Ljava/io/File;
    :catch_2
    move-exception v3

    .line 227
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 233
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 234
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 189
    .end local v3           #e:Ljava/io/IOException;
    :cond_a
    :try_start_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, boundary:Ljava/lang/String;
    new-instance v11, Ljava/net/URL;

    const-string v14, "http://feedback.cn.ronghub.com"

    invoke-direct {v11, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    .local v11, uri:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 192
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/16 v14, 0x1388

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 193
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 194
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 195
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 196
    const-string v14, "POST"

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 197
    const-string v14, "RC-App-Key"

    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v15

    invoke-virtual {v15}, Lio/rong/imlib/NativeClient;->getAppKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v14, "RC-User-Token"

    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v15

    invoke-virtual {v15}, Lio/rong/imlib/NativeClient;->getToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v14, "Connection"

    const-string v15, "keep-alive"

    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v14, "Content-Type"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "multipart/form-data; boundary="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 203
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .local v10, outStream:Ljava/io/DataOutputStream;
    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 204
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Disposition: form-data; name=\"fileLog\"; filename=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v15

    invoke-virtual {v15}, Lio/rong/imlib/NativeClient;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".zip\"\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 206
    const-string v14, "Content-Type: application/octet-stream\r\n\r\n"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 208
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lio/rong/common/RFLog;->access$200()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    .line 209
    .end local v12           #zipFile:Ljava/io/File;
    .local v13, zipFile:Ljava/io/File;
    :try_start_9
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    .line 210
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    const/16 v14, 0x400

    :try_start_a
    new-array v1, v14, [B

    .line 212
    .local v1, buffer:[B
    :goto_5
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, len:I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_e

    .line 213
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v6}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    .line 219
    .end local v1           #buffer:[B
    .end local v6           #len:I
    :catch_4
    move-exception v3

    move-object v12, v13

    .end local v13           #zipFile:Ljava/io/File;
    .restart local v12       #zipFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    move-object v9, v10

    .line 220
    .end local v0           #boundary:Ljava/lang/String;
    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .end local v11           #uri:Ljava/net/URL;
    .local v3, e:Ljava/lang/Exception;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    :goto_6
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    const-string v14, "RFLog"

    const-string v15, "UploadFile log failed."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 223
    if-eqz v4, :cond_b

    .line 225
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 230
    .end local v3           #e:Ljava/lang/Exception;
    :cond_b
    :goto_7
    if-eqz v9, :cond_c

    .line 232
    :try_start_d
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 237
    :cond_c
    :goto_8
    if-eqz v12, :cond_d

    .line 238
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 240
    :cond_d
    if-eqz v7, :cond_4

    .line 241
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 216
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #zipFile:Ljava/io/File;
    .restart local v0       #boundary:Ljava/lang/String;
    .restart local v1       #buffer:[B
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v11       #uri:Ljava/net/URL;
    .restart local v13       #zipFile:Ljava/io/File;
    :cond_e
    :try_start_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\r\n--"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "--\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 218
    const-string v14, "RFLog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UploadFile log end. code = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 223
    if-eqz v5, :cond_f

    .line 225
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 230
    :cond_f
    :goto_9
    if-eqz v10, :cond_10

    .line 232
    :try_start_10
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 237
    :cond_10
    :goto_a
    if-eqz v13, :cond_11

    .line 238
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 240
    :cond_11
    if-eqz v8, :cond_16

    .line 241
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-object v12, v13

    .end local v13           #zipFile:Ljava/io/File;
    .restart local v12       #zipFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    goto/16 :goto_2

    .line 226
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #zipFile:Ljava/io/File;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v13       #zipFile:Ljava/io/File;
    :catch_5
    move-exception v3

    .line 227
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 233
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 234
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 226
    .end local v0           #boundary:Ljava/lang/String;
    .end local v1           #buffer:[B
    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v8           #logFile:Ljava/io/File;
    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .end local v11           #uri:Ljava/net/URL;
    .end local v13           #zipFile:Ljava/io/File;
    .local v3, e:Ljava/lang/Exception;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #logFile:Ljava/io/File;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    .restart local v12       #zipFile:Ljava/io/File;
    :catch_7
    move-exception v3

    .line 227
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 233
    .end local v3           #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 234
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 223
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_b
    if-eqz v4, :cond_12

    .line 225
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 230
    :cond_12
    :goto_c
    if-eqz v9, :cond_13

    .line 232
    :try_start_12
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 237
    :cond_13
    :goto_d
    if-eqz v12, :cond_14

    .line 238
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 240
    :cond_14
    if-eqz v7, :cond_15

    .line 241
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_15
    throw v14

    .line 226
    :catch_9
    move-exception v3

    .line 227
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 233
    .end local v3           #e:Ljava/io/IOException;
    :catch_a
    move-exception v3

    .line 234
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 223
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #logFile:Ljava/io/File;
    .restart local v8       #logFile:Ljava/io/File;
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    goto :goto_b

    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .restart local v0       #boundary:Ljava/lang/String;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v11       #uri:Ljava/net/URL;
    :catchall_2
    move-exception v14

    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    goto :goto_b

    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #zipFile:Ljava/io/File;
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v13       #zipFile:Ljava/io/File;
    :catchall_3
    move-exception v14

    move-object v12, v13

    .end local v13           #zipFile:Ljava/io/File;
    .restart local v12       #zipFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    goto :goto_b

    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #zipFile:Ljava/io/File;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v13       #zipFile:Ljava/io/File;
    :catchall_4
    move-exception v14

    move-object v12, v13

    .end local v13           #zipFile:Ljava/io/File;
    .restart local v12       #zipFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    goto :goto_b

    .line 219
    .end local v0           #boundary:Ljava/lang/String;
    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v11           #uri:Ljava/net/URL;
    :catch_b
    move-exception v3

    goto/16 :goto_6

    .end local v7           #logFile:Ljava/io/File;
    .restart local v8       #logFile:Ljava/io/File;
    :catch_c
    move-exception v3

    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    goto/16 :goto_6

    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .restart local v0       #boundary:Ljava/lang/String;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v11       #uri:Ljava/net/URL;
    :catch_d
    move-exception v3

    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #zipFile:Ljava/io/File;
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v13       #zipFile:Ljava/io/File;
    :catch_e
    move-exception v3

    move-object v12, v13

    .end local v13           #zipFile:Ljava/io/File;
    .restart local v12       #zipFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #logFile:Ljava/io/File;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #zipFile:Ljava/io/File;
    .restart local v1       #buffer:[B
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v8       #logFile:Ljava/io/File;
    .restart local v10       #outStream:Ljava/io/DataOutputStream;
    .restart local v13       #zipFile:Ljava/io/File;
    :cond_16
    move-object v12, v13

    .end local v13           #zipFile:Ljava/io/File;
    .restart local v12       #zipFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #logFile:Ljava/io/File;
    .restart local v7       #logFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/DataOutputStream;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method
