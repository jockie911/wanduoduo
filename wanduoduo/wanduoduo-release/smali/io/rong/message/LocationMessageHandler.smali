.class public Lio/rong/message/LocationMessageHandler;
.super Lio/rong/message/MessageHandler;
.source "LocationMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/message/MessageHandler",
        "<",
        "Lio/rong/message/LocationMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCATION_PATH:Ljava/lang/String; = "/location/"

.field private static final TAG:Ljava/lang/String; = "LocationMessageHandler"

.field private static final THUMB_COMPRESSED_QUALITY:I = 0x1e

.field private static final THUMB_HEIGHT:I = 0xf0

.field private static final THUMB_WIDTH:I = 0x198


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lio/rong/message/MessageHandler;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private loadLocationThumbnail(Lio/rong/message/LocationMessage;Ljava/lang/String;)Ljava/io/File;
    .locals 17
    .parameter "content"
    .parameter "name"

    .prologue
    .line 147
    const/4 v4, 0x0

    .line 148
    .local v4, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 149
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 151
    .local v10, responseCode:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v11

    .line 152
    .local v11, uri:Landroid/net/Uri;
    new-instance v12, Ljava/net/URL;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v12, url:Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 154
    const-string v13, "GET"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 155
    const/16 v13, 0xbb8

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 156
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 158
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 159
    const/16 v13, 0xc8

    if-lt v10, v13, :cond_3

    const/16 v13, 0x12c

    if-ge v10, v13, :cond_3

    .line 160
    invoke-virtual/range {p0 .. p0}, Lio/rong/message/LocationMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "location"

    invoke-static {v13, v14}, Lio/rong/common/FileUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v4           #file:Ljava/io/File;
    .local v5, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 163
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 167
    .local v6, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 168
    .local v8, os:Ljava/io/FileOutputStream;
    const/16 v13, 0x400

    new-array v1, v13, [B

    .line 170
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, len:I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    .line 171
    const/4 v13, 0x0

    invoke-virtual {v8, v1, v13, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 176
    .end local v1           #buffer:[B
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len:I
    .end local v8           #os:Ljava/io/FileOutputStream;
    .end local v9           #path:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 177
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 182
    :cond_1
    const-string v13, "LocationMessageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadLocationThumbnail result : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    return-object v4

    .line 173
    .restart local v1       #buffer:[B
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #len:I
    .restart local v8       #os:Ljava/io/FileOutputStream;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v11       #uri:Landroid/net/Uri;
    .restart local v12       #url:Ljava/net/URL;
    :cond_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 174
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 179
    .end local v1           #buffer:[B
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len:I
    .end local v8           #os:Ljava/io/FileOutputStream;
    .end local v9           #path:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 180
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 182
    :cond_4
    const-string v13, "LocationMessageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadLocationThumbnail result : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 179
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #url:Ljava/net/URL;
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v2, :cond_5

    .line 180
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 182
    :cond_5
    const-string v14, "LocationMessageHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadLocationThumbnail result : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v13

    .line 179
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v11       #uri:Landroid/net/Uri;
    .restart local v12       #url:Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_3

    .line 176
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_1
.end method

.method private static obtainLocationUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6
    .parameter "context"

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 137
    .local v0, file:Ljava/io/File;
    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/NativeClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, userId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/location/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 143
    .local v2, uri:Landroid/net/Uri;
    return-object v2
.end method


# virtual methods
.method public bridge synthetic decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    check-cast p2, Lio/rong/message/LocationMessage;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lio/rong/message/LocationMessageHandler;->decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/LocationMessage;)V

    return-void
.end method

.method public decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/message/LocationMessage;)V
    .locals 11
    .parameter "message"
    .parameter "content"

    .prologue
    const/4 v10, 0x0

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v6

    if-nez v6, :cond_0

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/LocationMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lio/rong/message/LocationMessageHandler;->obtainLocationUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 42
    .local v5, uri:Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getBase64()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, base64:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 50
    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V

    .line 52
    invoke-virtual {p2, v10}, Lio/rong/message/LocationMessage;->setBase64(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getBase64()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 56
    .local v0, audio:[B
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lio/rong/common/FileUtils;->byte2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 57
    invoke-virtual {p2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_4

    .line 58
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 59
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0           #audio:[B
    :cond_4
    :goto_1
    invoke-virtual {p1, p2}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 69
    invoke-virtual {p2, v10}, Lio/rong/message/LocationMessage;->setBase64(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .restart local v0       #audio:[B
    :cond_5
    :try_start_1
    const-string v6, "LocationMessageHandler"

    const-string v7, "getImgUri is null"

    invoke-static {v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 64
    .end local v0           #audio:[B
    :catch_0
    move-exception v2

    .line 65
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "LocationMessageHandler"

    const-string v7, "Not Base64 Content!"

    invoke-static {v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public encodeMessage(Lio/rong/imlib/model/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 77
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    check-cast v2, Lio/rong/message/LocationMessage;

    .line 78
    .local v2, content:Lio/rong/message/LocationMessage;
    invoke-virtual {v2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_1

    .line 79
    const-string v9, "LocationMessageHandler"

    const-string v10, "No thumbnail uri."

    invoke-static {v9, v10}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    if-eqz v9, :cond_0

    .line 81
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    invoke-interface {v9, p1, v11}, Lio/rong/message/IHandleMessageListener;->onHandleResult(Lio/rong/imlib/model/Message;I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lio/rong/message/LocationMessageHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lio/rong/message/LocationMessageHandler;->obtainLocationUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 88
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 89
    invoke-virtual {v2}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, thumbnailPath:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_4

    .line 95
    const-string v9, "LocationMessageHandler"

    const-string v10, "load thumbnailPath null!"

    invoke-static {v9, v10}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    if-eqz v9, :cond_0

    .line 97
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    invoke-interface {v9, p1, v12}, Lio/rong/message/IHandleMessageListener;->onHandleResult(Lio/rong/imlib/model/Message;I)V

    goto :goto_0

    .line 91
    .end local v7           #thumbnailPath:Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2, v9}, Lio/rong/message/LocationMessageHandler;->loadLocationThumbnail(Lio/rong/message/LocationMessage;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 92
    .local v5, file:Ljava/io/File;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #thumbnailPath:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v7           #thumbnailPath:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 102
    .end local v5           #file:Ljava/io/File;
    .restart local v7       #thumbnailPath:Ljava/lang/String;
    :cond_4
    const/16 v9, 0x198

    const/16 v10, 0xf0

    :try_start_0
    invoke-static {v7, v9, v10}, Lio/rong/message/utils/BitmapUtil;->interceptBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    .line 104
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    .local v6, outputStream:Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x1e

    invoke-virtual {v1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 106
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 107
    .local v3, data:[B
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 109
    const/4 v9, 0x2

    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, base64:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lio/rong/message/LocationMessage;->setBase64(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lio/rong/common/FileUtils;->byte2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 112
    .restart local v5       #file:Ljava/io/File;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 113
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V

    .line 115
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 116
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    :cond_6
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    if-eqz v9, :cond_0

    .line 118
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    const/4 v10, 0x0

    invoke-interface {v9, p1, v10}, Lio/rong/message/IHandleMessageListener;->onHandleResult(Lio/rong/imlib/model/Message;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 126
    .end local v0           #base64:Ljava/lang/String;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #data:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 127
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "LocationMessageHandler"

    const-string v10, "Not Base64 Content!"

    invoke-static {v9, v10}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    if-eqz v9, :cond_0

    .line 130
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    invoke-interface {v9, p1, v12}, Lio/rong/message/IHandleMessageListener;->onHandleResult(Lio/rong/imlib/model/Message;I)V

    goto/16 :goto_0

    .line 121
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    :try_start_1
    const-string v9, "LocationMessageHandler"

    const-string v10, "get null bitmap!"

    invoke-static {v9, v10}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    if-eqz v9, :cond_0

    .line 123
    iget-object v9, p0, Lio/rong/message/LocationMessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    const/4 v10, -0x1

    invoke-interface {v9, p1, v10}, Lio/rong/message/IHandleMessageListener;->onHandleResult(Lio/rong/imlib/model/Message;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
