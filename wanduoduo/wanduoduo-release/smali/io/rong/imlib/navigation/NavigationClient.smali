.class public Lio/rong/imlib/navigation/NavigationClient;
.super Ljava/lang/Object;
.source "NavigationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/navigation/NavigationClient$SingletonHolder;
    }
.end annotation


# static fields
.field private static final NAVIGATION_HTTPS_URL:Ljava/lang/String; = "https://nav.cn.ronghub.com/navi.xml"

.field private static NAVIGATION_HTTP_URL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NavigationClient"


# instance fields
.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

.field private verifyCertificate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "http://nav.cn.ronghub.com/navi.xml"

    sput-object v0, Lio/rong/imlib/navigation/NavigationClient;->NAVIGATION_HTTP_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/navigation/NavigationClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/navigation/NavigationClient$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lio/rong/imlib/navigation/NavigationClient;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lio/rong/imlib/navigation/NavigationClient;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imlib/navigation/NavigationClient;->request(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lio/rong/imlib/navigation/NavigationClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method private createConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "appKey"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7530

    const/4 v9, 0x1

    .line 263
    iget-boolean v7, p0, Lio/rong/imlib/navigation/NavigationClient;->verifyCertificate:Z

    if-eqz v7, :cond_0

    .line 264
    new-instance v5, Ljava/net/URL;

    const-string v7, "https://nav.cn.ronghub.com/navi.xml"

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 265
    .local v5, url:Ljava/net/URL;
    invoke-direct {p0}, Lio/rong/imlib/navigation/NavigationClient;->initSSL()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 266
    .local v4, sslContext:Ljavax/net/ssl/SSLContext;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 267
    .local v0, c:Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 268
    move-object v1, v0

    .line 273
    .end local v0           #c:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #sslContext:Ljavax/net/ssl/SSLContext;
    .local v1, conn:Ljava/net/HttpURLConnection;
    :goto_0
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 274
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 275
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 277
    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 278
    const-string v7, "Connection"

    const-string v8, "Close"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v7, "User-Agent"

    const-string v8, "RongCloud"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v3, "token="

    .line 281
    .local v3, params:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {p2, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lio/rong/imlib/common/BuildVar;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    const-string v7, "Content-Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v7, "Content-type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v7, "appId"

    invoke-virtual {v1, v7, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 288
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 290
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 291
    .local v2, os:Ljava/io/OutputStream;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 292
    .local v6, writer:Ljava/io/BufferedWriter;
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 294
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 295
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 297
    return-object v1

    .line 270
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #os:Ljava/io/OutputStream;
    .end local v3           #params:Ljava/lang/String;
    .end local v5           #url:Ljava/net/URL;
    .end local v6           #writer:Ljava/io/BufferedWriter;
    :cond_0
    new-instance v5, Ljava/net/URL;

    sget-object v7, Lio/rong/imlib/navigation/NavigationClient;->NAVIGATION_HTTP_URL:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v5       #url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    goto/16 :goto_0
.end method

.method public static getInstance()Lio/rong/imlib/navigation/NavigationClient;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient$SingletonHolder;->access$100()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    return-object v0
.end method

.method private initSSL()Ljavax/net/ssl/SSLContext;
    .locals 5

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 236
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lio/rong/imlib/navigation/NavigationClient$4;

    invoke-direct {v4, p0}, Lio/rong/imlib/navigation/NavigationClient$4;-><init>(Lio/rong/imlib/navigation/NavigationClient;)V

    aput-object v4, v2, v3

    .line 252
    .local v2, tm:[Ljavax/net/ssl/TrustManager;
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 253
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-object v1

    .line 254
    .end local v2           #tm:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22
    .parameter "appKey"
    .parameter "token"
    .parameter "forceUpdate"

    .prologue
    .line 149
    const-string v18, "NavigationClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request start: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v6, 0x0

    .line 151
    .local v6, connection:Ljava/net/HttpURLConnection;
    const/4 v15, 0x0

    .line 152
    .local v15, responseStream:Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 155
    .local v13, responseCode:I
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lio/rong/imlib/navigation/NavigationClient;->createConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 156
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 158
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 160
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 161
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    .line 166
    .local v10, inputStream:Ljava/io/InputStream;
    :goto_0
    new-instance v16, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 167
    .end local v15           #responseStream:Ljava/io/BufferedInputStream;
    .local v16, responseStream:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0x200

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 169
    .local v14, responseData:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    .local v4, c:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_4

    .line 170
    invoke-virtual {v14, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 212
    .end local v4           #c:I
    .end local v14           #responseData:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v8

    move-object/from16 v15, v16

    .line 213
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v16           #responseStream:Ljava/io/BufferedInputStream;
    .local v8, e:Ljava/lang/Exception;
    .restart local v15       #responseStream:Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getCMPServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7534

    invoke-interface/range {v18 .. v20}, Lio/rong/imlib/navigation/NavigationObserver;->onError(Ljava/lang/String;I)V

    .line 215
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const-string v18, "NavigationClient"

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lio/rong/common/RFLog;->write(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    const-string v18, "NavigationClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request end: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", force = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v15, :cond_1

    .line 221
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 226
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 227
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 230
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 163
    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    .restart local v10       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 172
    .end local v15           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v4       #c:I
    .restart local v14       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #responseStream:Ljava/io/BufferedInputStream;
    :cond_4
    :try_start_5
    new-instance v18, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    const-string v20, "utf-8"

    invoke-direct/range {v18 .. v20}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, data:Ljava/lang/String;
    if-eqz p3, :cond_a

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v13}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode2cmp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, newCmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getCMPServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, oldCmp:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    new-instance v19, Lio/rong/imlib/navigation/NavigationClient$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v7, v2, v3}, Lio/rong/imlib/navigation/NavigationClient$3;-><init>(Lio/rong/imlib/navigation/NavigationClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Lio/rong/imlib/navigation/NavigationObserver;->onReconnect(Ljava/lang/String;Lio/rong/imlib/navigation/NavigationCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 218
    .end local v11           #newCmp:Ljava/lang/String;
    .end local v12           #oldCmp:Ljava/lang/String;
    :cond_5
    :goto_5
    const-string v18, "NavigationClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request end: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", force = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v16, :cond_6

    .line 221
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 226
    :cond_6
    :goto_6
    if-eqz v6, :cond_e

    .line 227
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v15, v16

    .end local v16           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v15       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 194
    .end local v15           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v11       #newCmp:Ljava/lang/String;
    .restart local v12       #oldCmp:Ljava/lang/String;
    .restart local v16       #responseStream:Ljava/io/BufferedInputStream;
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v13}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode2File(Landroid/content/Context;Ljava/lang/String;I)I

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lio/rong/imlib/navigation/NavigationCacheHelper;->cacheRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    .line 218
    .end local v4           #c:I
    .end local v7           #data:Ljava/lang/String;
    .end local v11           #newCmp:Ljava/lang/String;
    .end local v12           #oldCmp:Ljava/lang/String;
    .end local v14           #responseData:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v18

    move-object/from16 v15, v16

    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v16           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v15       #responseStream:Ljava/io/BufferedInputStream;
    :goto_7
    const-string v19, "NavigationClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "request end: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", force = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v15, :cond_8

    .line 221
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 226
    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    .line 227
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v18

    .line 199
    .end local v15           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v4       #c:I
    .restart local v7       #data:Ljava/lang/String;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v14       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #responseStream:Ljava/io/BufferedInputStream;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v13}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode2File(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    .line 200
    .local v17, result:I
    if-nez v17, :cond_c

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getCMPServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, cmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lio/rong/imlib/navigation/NavigationObserver;->onSuccess(Ljava/lang/String;)V

    .line 205
    .end local v5           #cmp:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lio/rong/imlib/navigation/NavigationCacheHelper;->cacheRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 207
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lio/rong/imlib/navigation/NavigationObserver;->onError(Ljava/lang/String;I)V

    .line 209
    :cond_d
    const-string v18, "NavigationClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request failure : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", data = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5

    .line 222
    .end local v17           #result:I
    :catch_1
    move-exception v9

    .line 223
    .local v9, ignored:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 222
    .end local v4           #c:I
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #ignored:Ljava/io/IOException;
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v14           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v16           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v8       #e:Ljava/lang/Exception;
    .restart local v15       #responseStream:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v9

    .line 223
    .restart local v9       #ignored:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 222
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #ignored:Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 223
    .restart local v9       #ignored:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 218
    .end local v9           #ignored:Ljava/io/IOException;
    :catchall_1
    move-exception v18

    goto/16 :goto_7

    .line 212
    :catch_4
    move-exception v8

    goto/16 :goto_2

    .end local v15           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v4       #c:I
    .restart local v7       #data:Ljava/lang/String;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v14       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #responseStream:Ljava/io/BufferedInputStream;
    :cond_e
    move-object/from16 v15, v16

    .end local v16           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v15       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_4
.end method


# virtual methods
.method public addObserver(Lio/rong/imlib/navigation/NavigationObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 64
    iput-object p1, p0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    .line 65
    return-void
.end method

.method public clearCache(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 129
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->clearCache(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public clearObserver()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    .line 69
    return-void
.end method

.method public enablePublicKeyPinning()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/navigation/NavigationClient;->verifyCertificate:Z

    .line 57
    return-void
.end method

.method public getCMPServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getCMPServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCMPServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appKey"
    .parameter "token"

    .prologue
    .line 80
    iput-object p1, p0, Lio/rong/imlib/navigation/NavigationClient;->context:Landroid/content/Context;

    .line 82
    invoke-static {p1, p2, p3}, Lio/rong/imlib/navigation/NavigationCacheHelper;->isCacheValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    if-eqz v1, :cond_0

    .line 84
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getCMPServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, cmp:Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/navigation/NavigationClient;->navigationObserver:Lio/rong/imlib/navigation/NavigationObserver;

    invoke-interface {v1, v0}, Lio/rong/imlib/navigation/NavigationObserver;->onSuccess(Ljava/lang/String;)V

    .line 96
    .end local v0           #cmp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->clearCache(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lio/rong/imlib/navigation/NavigationClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/rong/imlib/navigation/NavigationClient$1;

    invoke-direct {v2, p0, p2, p3}, Lio/rong/imlib/navigation/NavigationClient$1;-><init>(Lio/rong/imlib/navigation/NavigationClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public getLastCachedTime()J
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getCachedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationConfig(Landroid/content/Context;)Lio/rong/imlib/navigation/LocationConfig;
    .locals 1
    .parameter "context"

    .prologue
    .line 145
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getLocationConfig(Landroid/content/Context;)Lio/rong/imlib/navigation/LocationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getMediaServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoIPCallInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->getVoIPCallInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMPOpened(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->isMPOpened(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public needUpdateCMP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "appKey"
    .parameter "token"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, updated:Z
    invoke-static {p1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->isCacheTimeout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lio/rong/imlib/navigation/NavigationClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/rong/imlib/navigation/NavigationClient$2;

    invoke-direct {v2, p0, p2, p3}, Lio/rong/imlib/navigation/NavigationClient$2;-><init>(Lio/rong/imlib/navigation/NavigationClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 123
    const/4 v0, 0x1

    .line 125
    :cond_0
    return v0
.end method

.method public setNaviDomain(Ljava/lang/String;)V
    .locals 3
    .parameter "navi"

    .prologue
    .line 60
    const-string v0, "http://%s/navi.xml"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imlib/navigation/NavigationClient;->NAVIGATION_HTTP_URL:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public updateCacheTime(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lio/rong/imlib/navigation/NavigationCacheHelper;->updateTime(Landroid/content/Context;J)V

    .line 134
    return-void
.end method
