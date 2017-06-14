.class public abstract Lio/rong/imlib/filetransfer/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field protected connTimeout:I

.field protected fileName:Ljava/lang/String;

.field protected method:Ljava/lang/String;

.field protected mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

.field protected readTimeout:I

.field protected requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

.field protected serverIp:Ljava/lang/String;

.field protected tag:Ljava/lang/Object;

.field protected terminated:Z

.field protected token:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lio/rong/imlib/filetransfer/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imlib/filetransfer/Request;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/rong/imlib/filetransfer/Configuration;Lio/rong/imlib/filetransfer/RequestCallBack;)V
    .locals 1
    .parameter "config"
    .parameter "requestCallBack"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget v0, p1, Lio/rong/imlib/filetransfer/Configuration;->connectTimeout:I

    iput v0, p0, Lio/rong/imlib/filetransfer/Request;->connTimeout:I

    .line 36
    iget v0, p1, Lio/rong/imlib/filetransfer/Configuration;->readTimeout:I

    iput v0, p0, Lio/rong/imlib/filetransfer/Request;->readTimeout:I

    .line 37
    iput-object p2, p0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract getBoundary()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getFormData()Ljava/lang/String;
.end method

.method public abstract getMimeType()Lio/rong/imlib/filetransfer/FtConst$MimeType;
.end method

.method public sendRequest()V
    .locals 30

    .prologue
    .line 55
    const/16 v20, 0x0

    .line 56
    .local v20, responseStream:Ljava/io/BufferedInputStream;
    const/16 v18, 0x0

    .line 57
    .local v18, responseData:Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 58
    .local v13, os:Ljava/io/DataOutputStream;
    const/4 v11, 0x0

    .line 60
    .local v11, is:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->method:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "POST"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 61
    new-instance v12, Ljava/io/FileInputStream;

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 62
    .end local v11           #is:Ljava/io/FileInputStream;
    .local v12, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->serverIp:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v25, u:Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    check-cast v26, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->method:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const-string v27, "Connection"

    const-string v28, "close"

    invoke-virtual/range {v26 .. v28}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const-string v27, "Charset"

    const-string v28, "UTF-8"

    invoke-virtual/range {v26 .. v28}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const-string v27, "Content-Type"

    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/filetransfer/Request;->getContentType()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "\r\n--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/filetransfer/Request;->getBoundary()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, endBoundary:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/filetransfer/Request;->getFormData()Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, formData:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 74
    .local v8, fileSize:I
    if-nez v8, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    const/16 v27, 0x791a

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onError(I)V

    .line 77
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v27

    add-int v24, v26, v27

    .line 78
    .local v24, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const-string v27, "Content-Length"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->connect()V

    .line 82
    new-instance v14, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 83
    .end local v13           #os:Ljava/io/DataOutputStream;
    .local v14, os:Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {v14, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 86
    .local v4, current:I
    const/4 v15, 0x1

    .line 87
    .local v15, progress:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Lio/rong/imlib/filetransfer/RequestCallBack;->onProgress(I)V

    .line 89
    const/16 v26, 0x400

    move/from16 v0, v26

    new-array v2, v0, [B

    .line 91
    .local v2, buffer:[B
    :cond_1
    :goto_0
    invoke-virtual {v12, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    .local v16, read:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 92
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v14, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 93
    add-int v4, v4, v16

    .line 94
    mul-int/lit8 v26, v4, 0x64

    div-int v22, v26, v24

    .line 95
    .local v22, size:I
    move/from16 v0, v22

    if-le v0, v15, :cond_1

    .line 96
    move/from16 v15, v22

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Lio/rong/imlib/filetransfer/RequestCallBack;->onProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    .end local v2           #buffer:[B
    .end local v4           #current:I
    .end local v15           #progress:I
    .end local v16           #read:I
    .end local v22           #size:I
    :catch_0
    move-exception v5

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    move-object v13, v14

    .line 162
    .end local v6           #endBoundary:Ljava/lang/String;
    .end local v8           #fileSize:I
    .end local v9           #formData:Ljava/lang/String;
    .end local v14           #os:Ljava/io/DataOutputStream;
    .end local v24           #total:I
    .end local v25           #u:Ljava/net/URL;
    .local v5, e:Ljava/lang/Exception;
    .restart local v13       #os:Ljava/io/DataOutputStream;
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/rong/imlib/filetransfer/Request;->terminated:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    const/16 v27, 0x7532

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onError(I)V

    .line 165
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    if-eqz v18, :cond_3

    .line 169
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 171
    :cond_3
    if-eqz v20, :cond_4

    .line 172
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V

    .line 174
    :cond_4
    if-eqz v13, :cond_5

    .line 175
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 177
    :cond_5
    if-eqz v11, :cond_6

    .line 178
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 183
    .end local v5           #e:Ljava/lang/Exception;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 185
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    .line 188
    :cond_7
    :goto_3
    return-void

    .line 100
    .end local v11           #is:Ljava/io/FileInputStream;
    .end local v13           #os:Ljava/io/DataOutputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #current:I
    .restart local v6       #endBoundary:Ljava/lang/String;
    .restart local v8       #fileSize:I
    .restart local v9       #formData:Ljava/lang/String;
    .restart local v12       #is:Ljava/io/FileInputStream;
    .restart local v14       #os:Ljava/io/DataOutputStream;
    .restart local v15       #progress:I
    .restart local v16       #read:I
    .restart local v24       #total:I
    .restart local v25       #u:Ljava/net/URL;
    :cond_8
    :try_start_5
    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    const/16 v27, 0x64

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onProgress(I)V

    .line 103
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 104
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 106
    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 107
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .local v21, responseStream:Ljava/io/BufferedInputStream;
    :try_start_6
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    const/16 v26, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 109
    .end local v18           #responseData:Ljava/io/ByteArrayOutputStream;
    .local v19, responseData:Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    .local v3, c:I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_9

    .line 110
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 161
    .end local v3           #c:I
    :catch_1
    move-exception v5

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #os:Ljava/io/DataOutputStream;
    .restart local v13       #os:Ljava/io/DataOutputStream;
    move-object/from16 v18, v19

    .end local v19           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #responseData:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .line 112
    .end local v11           #is:Ljava/io/FileInputStream;
    .end local v13           #os:Ljava/io/DataOutputStream;
    .end local v18           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v3       #c:I
    .restart local v12       #is:Ljava/io/FileInputStream;
    .restart local v14       #os:Ljava/io/DataOutputStream;
    .restart local v19       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 113
    .local v17, responseCode:I
    const/16 v26, 0xc8

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_a

    const/16 v26, 0x12c

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_10

    .line 114
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    const/16 v27, 0x7532

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onError(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_5
    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #os:Ljava/io/DataOutputStream;
    .restart local v13       #os:Ljava/io/DataOutputStream;
    move-object/from16 v18, v19

    .end local v19           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #responseData:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .line 168
    .end local v2           #buffer:[B
    .end local v3           #c:I
    .end local v4           #current:I
    .end local v6           #endBoundary:Ljava/lang/String;
    .end local v8           #fileSize:I
    .end local v9           #formData:Ljava/lang/String;
    .end local v15           #progress:I
    .end local v16           #read:I
    .end local v17           #responseCode:I
    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .end local v24           #total:I
    .end local v25           #u:Ljava/net/URL;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    :cond_b
    :goto_6
    if-eqz v18, :cond_c

    .line 169
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 171
    :cond_c
    if-eqz v20, :cond_d

    .line 172
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V

    .line 174
    :cond_d
    if-eqz v13, :cond_e

    .line 175
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 177
    :cond_e
    if-eqz v11, :cond_f

    .line 178
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 183
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 185
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    goto/16 :goto_3

    .line 116
    .end local v11           #is:Ljava/io/FileInputStream;
    .end local v13           #os:Ljava/io/DataOutputStream;
    .end local v18           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #c:I
    .restart local v4       #current:I
    .restart local v6       #endBoundary:Ljava/lang/String;
    .restart local v8       #fileSize:I
    .restart local v9       #formData:Ljava/lang/String;
    .restart local v12       #is:Ljava/io/FileInputStream;
    .restart local v14       #os:Ljava/io/DataOutputStream;
    .restart local v15       #progress:I
    .restart local v16       #read:I
    .restart local v17       #responseCode:I
    .restart local v19       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    .restart local v24       #total:I
    .restart local v25       #u:Ljava/net/URL;
    :cond_10
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onComplete(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_5

    .line 167
    .end local v3           #c:I
    .end local v17           #responseCode:I
    :catchall_0
    move-exception v26

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #os:Ljava/io/DataOutputStream;
    .restart local v13       #os:Ljava/io/DataOutputStream;
    move-object/from16 v18, v19

    .end local v19           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #responseData:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .line 168
    .end local v2           #buffer:[B
    .end local v4           #current:I
    .end local v6           #endBoundary:Ljava/lang/String;
    .end local v8           #fileSize:I
    .end local v9           #formData:Ljava/lang/String;
    .end local v15           #progress:I
    .end local v16           #read:I
    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .end local v24           #total:I
    .end local v25           #u:Ljava/net/URL;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    :goto_8
    if-eqz v18, :cond_11

    .line 169
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 171
    :cond_11
    if-eqz v20, :cond_12

    .line 172
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V

    .line 174
    :cond_12
    if-eqz v13, :cond_13

    .line 175
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 177
    :cond_13
    if-eqz v11, :cond_14

    .line 178
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 183
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 185
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    :cond_15
    throw v26

    .line 118
    :cond_16
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->method:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "GET"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 119
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->url:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v25       #u:Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    check-cast v26, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->method:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 127
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v24

    .line 128
    .restart local v24       #total:I
    const/4 v4, 0x0

    .line 129
    .restart local v4       #current:I
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    const/16 v26, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 131
    .end local v18           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #responseData:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    .line 132
    .restart local v15       #progress:I
    const/16 v23, 0x0

    .line 133
    .local v23, temp:I
    :cond_17
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    .restart local v3       #c:I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_19

    .line 134
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    add-int/lit8 v4, v4, 0x1

    .line 136
    mul-int/lit8 v26, v4, 0x64

    div-int v23, v26, v24

    .line 137
    move/from16 v0, v23

    if-ge v15, v0, :cond_18

    .line 138
    move/from16 v15, v23

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lio/rong/imlib/filetransfer/RequestCallBack;->onProgress(I)V

    .line 141
    :cond_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 142
    sget-object v26, Lio/rong/imlib/filetransfer/Request;->TAG:Ljava/lang/String;

    const-string v27, "sendRequest terminated."

    invoke-static/range {v26 .. v27}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lio/rong/imlib/filetransfer/Request;->terminated:Z

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->tag:Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onCanceled(Ljava/lang/Object;)V

    .line 145
    new-instance v26, Ljava/io/InterruptedIOException;

    invoke-direct/range {v26 .. v26}, Ljava/io/InterruptedIOException;-><init>()V

    throw v26

    .line 161
    .end local v3           #c:I
    :catch_2
    move-exception v5

    move-object/from16 v18, v19

    .end local v19           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #responseData:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .line 149
    .end local v18           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v3       #c:I
    .restart local v19       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 150
    .restart local v17       #responseCode:I
    const/16 v26, 0xc8

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_1a

    const/16 v26, 0x12c

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_1b

    .line 151
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    const/16 v27, 0x7532

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onError(I)V

    .line 152
    const-string v26, "fileTransfer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "download request response code is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v19

    .end local v19           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #responseData:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .line 154
    .end local v18           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v19       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    :cond_1b
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->fileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v7, f:Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 156
    .local v10, fos:Ljava/io/FileOutputStream;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 157
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imlib/filetransfer/Request;->fileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Lio/rong/imlib/filetransfer/RequestCallBack;->onComplete(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    move-object/from16 v18, v19

    .end local v19           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #responseData:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .line 180
    .end local v3           #c:I
    .end local v4           #current:I
    .end local v7           #f:Ljava/io/File;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v15           #progress:I
    .end local v17           #responseCode:I
    .end local v23           #temp:I
    .end local v24           #total:I
    .end local v25           #u:Ljava/net/URL;
    :catch_3
    move-exception v5

    .line 181
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 180
    .local v5, e:Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 181
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 180
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 181
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 167
    .end local v5           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v26

    goto/16 :goto_8

    .end local v11           #is:Ljava/io/FileInputStream;
    .restart local v12       #is:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v26

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v11           #is:Ljava/io/FileInputStream;
    .end local v13           #os:Ljava/io/DataOutputStream;
    .restart local v6       #endBoundary:Ljava/lang/String;
    .restart local v8       #fileSize:I
    .restart local v9       #formData:Ljava/lang/String;
    .restart local v12       #is:Ljava/io/FileInputStream;
    .restart local v14       #os:Ljava/io/DataOutputStream;
    .restart local v24       #total:I
    .restart local v25       #u:Ljava/net/URL;
    :catchall_3
    move-exception v26

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #os:Ljava/io/DataOutputStream;
    .restart local v13       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_8

    .end local v11           #is:Ljava/io/FileInputStream;
    .end local v13           #os:Ljava/io/DataOutputStream;
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #current:I
    .restart local v12       #is:Ljava/io/FileInputStream;
    .restart local v14       #os:Ljava/io/DataOutputStream;
    .restart local v15       #progress:I
    .restart local v16       #read:I
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    :catchall_4
    move-exception v26

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #os:Ljava/io/DataOutputStream;
    .restart local v13       #os:Ljava/io/DataOutputStream;
    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .end local v2           #buffer:[B
    .end local v4           #current:I
    .end local v6           #endBoundary:Ljava/lang/String;
    .end local v8           #fileSize:I
    .end local v9           #formData:Ljava/lang/String;
    .end local v15           #progress:I
    .end local v16           #read:I
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .end local v24           #total:I
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    :catchall_5
    move-exception v26

    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .end local v18           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v4       #current:I
    .restart local v15       #progress:I
    .restart local v19       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    .restart local v23       #temp:I
    .restart local v24       #total:I
    :catchall_6
    move-exception v26

    move-object/from16 v18, v19

    .end local v19           #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #responseData:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .line 161
    .end local v4           #current:I
    .end local v15           #progress:I
    .end local v23           #temp:I
    .end local v24           #total:I
    .end local v25           #u:Ljava/net/URL;
    :catch_6
    move-exception v5

    goto/16 :goto_1

    .end local v11           #is:Ljava/io/FileInputStream;
    .restart local v12       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v11           #is:Ljava/io/FileInputStream;
    .end local v13           #os:Ljava/io/DataOutputStream;
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #current:I
    .restart local v6       #endBoundary:Ljava/lang/String;
    .restart local v8       #fileSize:I
    .restart local v9       #formData:Ljava/lang/String;
    .restart local v12       #is:Ljava/io/FileInputStream;
    .restart local v14       #os:Ljava/io/DataOutputStream;
    .restart local v15       #progress:I
    .restart local v16       #read:I
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    .restart local v24       #total:I
    .restart local v25       #u:Ljava/net/URL;
    :catch_8
    move-exception v5

    move-object v11, v12

    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v11       #is:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #os:Ljava/io/DataOutputStream;
    .restart local v13       #os:Ljava/io/DataOutputStream;
    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .end local v2           #buffer:[B
    .end local v4           #current:I
    .end local v6           #endBoundary:Ljava/lang/String;
    .end local v8           #fileSize:I
    .end local v9           #formData:Ljava/lang/String;
    .end local v15           #progress:I
    .end local v16           #read:I
    .end local v20           #responseStream:Ljava/io/BufferedInputStream;
    .end local v24           #total:I
    .restart local v21       #responseStream:Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v5

    move-object/from16 v20, v21

    .end local v21           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v20       #responseStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_1
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 41
    iput-object p1, p0, Lio/rong/imlib/filetransfer/Request;->url:Ljava/lang/String;

    .line 42
    return-void
.end method
