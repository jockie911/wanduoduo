.class public Lio/rong/imlib/statistics/ConnectionProcessor;
.super Ljava/lang/Object;
.source "ConnectionProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONNECT_TIMEOUT_IN_MILLISECONDS:I = 0x7530

.field private static final READ_TIMEOUT_IN_MILLISECONDS:I = 0x7530


# instance fields
.field private final deviceId_:Lio/rong/imlib/statistics/DeviceId;

.field private final serverURL_:Ljava/lang/String;

.field private final sslContext_:Ljavax/net/ssl/SSLContext;

.field private final store_:Lio/rong/imlib/statistics/StatisticsStore;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/rong/imlib/statistics/StatisticsStore;Lio/rong/imlib/statistics/DeviceId;Ljavax/net/ssl/SSLContext;)V
    .locals 2
    .parameter "serverURL"
    .parameter "store"
    .parameter "deviceId"
    .parameter "sslContext"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionProcessor;->serverURL_:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lio/rong/imlib/statistics/ConnectionProcessor;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    .line 62
    iput-object p3, p0, Lio/rong/imlib/statistics/ConnectionProcessor;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    .line 63
    iput-object p4, p0, Lio/rong/imlib/statistics/ConnectionProcessor;->sslContext_:Ljavax/net/ssl/SSLContext;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 67
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method getCountlyStore()Lio/rong/imlib/statistics/StatisticsStore;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionProcessor;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    return-object v0
.end method

.method getDeviceId()Lio/rong/imlib/statistics/DeviceId;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionProcessor;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    return-object v0
.end method

.method getServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionProcessor;->serverURL_:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 16

    .prologue
    const/4 v12, 0x0

    .line 157
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lio/rong/imlib/statistics/ConnectionProcessor;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v13}, Lio/rong/imlib/statistics/StatisticsStore;->connections()[Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, storedEvents:[Ljava/lang/String;
    if-eqz v10, :cond_1

    array-length v13, v10

    if-nez v13, :cond_2

    .line 246
    :cond_1
    :goto_1
    return-void

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lio/rong/imlib/statistics/ConnectionProcessor;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    invoke-virtual {v13}, Lio/rong/imlib/statistics/DeviceId;->getId()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    .line 167
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 168
    const-string v13, "Statistics"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No Device ID available yet, skipping request "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v12, v10, v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    :cond_3
    aget-object v4, v10, v12

    .line 174
    .local v4, eventData:Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, conn:Ljava/net/URLConnection;
    const/4 v8, 0x0

    .line 178
    .local v8, responseStream:Ljava/io/BufferedInputStream;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lio/rong/imlib/statistics/ConnectionProcessor;->urlConnectionForEventData(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 182
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 183
    .end local v8           #responseStream:Ljava/io/BufferedInputStream;
    .local v9, responseStream:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x100

    invoke-direct {v7, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 185
    .local v7, responseData:Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .local v1, c:I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_6

    .line 186
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 226
    .end local v1           #c:I
    .end local v7           #responseData:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 227
    .end local v9           #responseStream:Ljava/io/BufferedInputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v8       #responseStream:Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_2
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v12

    invoke-virtual {v12}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 228
    const-string v12, "Statistics"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got exception while trying to submit event data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :cond_4
    if-eqz v8, :cond_5

    .line 237
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 241
    :cond_5
    :goto_4
    if-eqz v2, :cond_1

    instance-of v12, v2, Ljava/net/HttpURLConnection;

    if-eqz v12, :cond_1

    .line 242
    check-cast v2, Ljava/net/HttpURLConnection;

    .end local v2           #conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 190
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v1       #c:I
    .restart local v2       #conn:Ljava/net/URLConnection;
    .restart local v7       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #responseStream:Ljava/io/BufferedInputStream;
    :cond_6
    const/4 v11, 0x1

    .line 191
    .local v11, success:Z
    :try_start_4
    instance-of v13, v2, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_7

    .line 192
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 193
    .local v5, httpConn:Ljava/net/HttpURLConnection;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 194
    .local v6, responseCode:I
    const/16 v13, 0xc8

    if-lt v6, v13, :cond_a

    const/16 v13, 0x12c

    if-ge v6, v13, :cond_a

    const/4 v11, 0x1

    .line 195
    :goto_5
    const-string v13, "Statistics"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-nez v11, :cond_7

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 197
    const-string v13, "Statistics"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTTP error response code was "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from submitting event data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v5           #httpConn:Ljava/net/HttpURLConnection;
    .end local v6           #responseCode:I
    :cond_7
    if-eqz v11, :cond_b

    .line 213
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 214
    const-string v13, "Statistics"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ok ->"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lio/rong/imlib/statistics/ConnectionProcessor;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Lio/rong/imlib/statistics/StatisticsStore;->removeConnection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 235
    if-eqz v9, :cond_9

    .line 237
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 241
    :cond_9
    :goto_6
    if-eqz v2, :cond_0

    instance-of v13, v2, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_0

    .line 242
    check-cast v2, Ljava/net/HttpURLConnection;

    .end local v2           #conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .restart local v2       #conn:Ljava/net/URLConnection;
    .restart local v5       #httpConn:Ljava/net/HttpURLConnection;
    .restart local v6       #responseCode:I
    :cond_a
    move v11, v12

    .line 194
    goto/16 :goto_5

    .line 235
    .end local v5           #httpConn:Ljava/net/HttpURLConnection;
    .end local v6           #responseCode:I
    :cond_b
    if-eqz v9, :cond_c

    .line 237
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 241
    :cond_c
    :goto_7
    if-eqz v2, :cond_1

    instance-of v12, v2, Ljava/net/HttpURLConnection;

    if-eqz v12, :cond_1

    .line 242
    check-cast v2, Ljava/net/HttpURLConnection;

    .end local v2           #conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 235
    .end local v1           #c:I
    .end local v7           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v9           #responseStream:Ljava/io/BufferedInputStream;
    .end local v11           #success:Z
    .restart local v2       #conn:Ljava/net/URLConnection;
    .restart local v8       #responseStream:Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v8, :cond_d

    .line 237
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 241
    :cond_d
    :goto_9
    if-eqz v2, :cond_e

    instance-of v13, v2, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_e

    .line 242
    check-cast v2, Ljava/net/HttpURLConnection;

    .end local v2           #conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v12

    .line 239
    .end local v8           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v1       #c:I
    .restart local v2       #conn:Ljava/net/URLConnection;
    .restart local v7       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #responseStream:Ljava/io/BufferedInputStream;
    .restart local v11       #success:Z
    :catch_1
    move-exception v12

    goto :goto_7

    :catch_2
    move-exception v13

    goto :goto_6

    .end local v1           #c:I
    .end local v7           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v9           #responseStream:Ljava/io/BufferedInputStream;
    .end local v11           #success:Z
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v8       #responseStream:Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v12

    goto/16 :goto_4

    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v13

    goto :goto_9

    .line 235
    .end local v8           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v9       #responseStream:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v8       #responseStream:Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 226
    :catch_5
    move-exception v3

    goto/16 :goto_3
.end method

.method urlConnectionForEventData(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 20
    .parameter "eventData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imlib/statistics/ConnectionProcessor;->serverURL_:Ljava/lang/String;

    .line 76
    .local v15, urlStr:Ljava/lang/String;
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v14, url:Ljava/net/URL;
    sget-object v17, Lio/rong/imlib/statistics/Statistics;->publicKeyPinCertificates:Ljava/util/List;

    if-nez v17, :cond_1

    .line 79
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 85
    .local v8, conn:Ljava/net/HttpURLConnection;
    :goto_0
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 87
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 88
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 89
    invoke-static {v14}, Lio/rong/imlib/statistics/UserData;->getPicturePathFromQuery(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, picturePath:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 91
    const-string v17, "Statistics"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got picturePath: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 97
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, binaryFile:Ljava/io/File;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, boundary:Ljava/lang/String;
    const-string v2, "\r\n"

    .line 103
    .local v2, CRLF:Ljava/lang/String;
    const-string v7, "UTF-8"

    .line 104
    .local v7, charset:Ljava/lang/String;
    const-string v17, "Content-Type"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "multipart/form-data; boundary="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 106
    .local v12, output:Ljava/io/OutputStream;
    new-instance v16, Ljava/io/PrintWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v18, 0x1

    invoke-direct/range {v16 .. v18}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 108
    .local v16, writer:Ljava/io/PrintWriter;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "--"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 109
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Content-Disposition: form-data; name=\"binaryFile\"; filename=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 110
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Content-Type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 111
    const-string v17, "Content-Transfer-Encoding: binary"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 112
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V

    .line 113
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v9, fileInputStream:Ljava/io/FileInputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 116
    .local v5, buffer:[B
    :goto_1
    invoke-virtual {v9, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .local v10, len:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_2

    .line 117
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v5, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 81
    .end local v2           #CRLF:Ljava/lang/String;
    .end local v3           #binaryFile:Ljava/io/File;
    .end local v4           #boundary:Ljava/lang/String;
    .end local v5           #buffer:[B
    .end local v7           #charset:Ljava/lang/String;
    .end local v8           #conn:Ljava/net/HttpURLConnection;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .end local v10           #len:I
    .end local v12           #output:Ljava/io/OutputStream;
    .end local v13           #picturePath:Ljava/lang/String;
    .end local v16           #writer:Ljava/io/PrintWriter;
    :cond_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 82
    .local v6, c:Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/statistics/ConnectionProcessor;->sslContext_:Ljavax/net/ssl/SSLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 83
    move-object v8, v6

    .restart local v8       #conn:Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 119
    .end local v6           #c:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2       #CRLF:Ljava/lang/String;
    .restart local v3       #binaryFile:Ljava/io/File;
    .restart local v4       #boundary:Ljava/lang/String;
    .restart local v5       #buffer:[B
    .restart local v7       #charset:Ljava/lang/String;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v10       #len:I
    .restart local v12       #output:Ljava/io/OutputStream;
    .restart local v13       #picturePath:Ljava/lang/String;
    .restart local v16       #writer:Ljava/io/PrintWriter;
    :cond_2
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 120
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V

    .line 121
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 124
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "--"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "--"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V

    .line 151
    .end local v2           #CRLF:Ljava/lang/String;
    .end local v3           #binaryFile:Ljava/io/File;
    .end local v4           #boundary:Ljava/lang/String;
    .end local v5           #buffer:[B
    .end local v7           #charset:Ljava/lang/String;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .end local v10           #len:I
    .end local v12           #output:Ljava/io/OutputStream;
    .end local v16           #writer:Ljava/io/PrintWriter;
    :goto_2
    return-object v8

    .line 126
    :cond_3
    const-string v17, "&crash="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 127
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 128
    const-string v17, "Statistics"

    const-string v18, "Using post because of crash"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 131
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 133
    .local v11, os:Ljava/io/OutputStream;
    new-instance v16, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 134
    .local v16, writer:Ljava/io/BufferedWriter;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V

    .line 137
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    .line 141
    .end local v11           #os:Ljava/io/OutputStream;
    .end local v16           #writer:Ljava/io/BufferedWriter;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 142
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 143
    const-string v17, "Connection"

    const-string v18, "close"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 145
    .restart local v11       #os:Ljava/io/OutputStream;
    new-instance v16, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    .restart local v16       #writer:Ljava/io/BufferedWriter;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->flush()V

    .line 148
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V

    .line 149
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_2
.end method
