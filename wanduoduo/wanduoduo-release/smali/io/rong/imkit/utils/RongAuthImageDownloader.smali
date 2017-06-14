.class public Lio/rong/imkit/utils/RongAuthImageDownloader;
.super Lio/rong/imageloader/core/download/BaseImageDownloader;
.source "RongAuthImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/utils/RongAuthImageDownloader$miTM;
    }
.end annotation


# instance fields
.field final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lio/rong/imageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v1, Lio/rong/imkit/utils/RongAuthImageDownloader$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/utils/RongAuthImageDownloader$1;-><init>(Lio/rong/imkit/utils/RongAuthImageDownloader;)V

    iput-object v1, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 30
    invoke-direct {p0}, Lio/rong/imkit/utils/RongAuthImageDownloader;->sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 31
    .local v0, sslContext:Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "connectTimeout"
    .parameter "readTimeout"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    .line 72
    new-instance v1, Lio/rong/imkit/utils/RongAuthImageDownloader$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/utils/RongAuthImageDownloader$1;-><init>(Lio/rong/imkit/utils/RongAuthImageDownloader;)V

    iput-object v1, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 36
    invoke-direct {p0}, Lio/rong/imkit/utils/RongAuthImageDownloader;->sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 37
    .local v0, sslContext:Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 38
    return-void
.end method

.method private sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
    .locals 7

    .prologue
    .line 80
    const/4 v5, 0x1

    new-array v4, v5, [Ljavax/net/ssl/TrustManager;

    .line 81
    .local v4, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    new-instance v3, Lio/rong/imkit/utils/RongAuthImageDownloader$miTM;

    invoke-direct {v3, p0}, Lio/rong/imkit/utils/RongAuthImageDownloader$miTM;-><init>(Lio/rong/imkit/utils/RongAuthImageDownloader;)V

    .line 82
    .local v3, tm:Ljavax/net/ssl/TrustManager;
    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v5, "SSL"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 86
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    .line 93
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    .local v2, sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-object v2

    .line 88
    .end local v2           #sc:Ljavax/net/ssl/SSLContext;
    .restart local v1       #sc:Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v2, v1

    .line 93
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    .restart local v2       #sc:Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v2           #sc:Ljavax/net/ssl/SSLContext;
    .restart local v1       #sc:Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v0

    .line 91
    .local v0, e:Ljava/security/KeyManagementException;
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 93
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    .restart local v2       #sc:Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .end local v0           #e:Ljava/security/KeyManagementException;
    .end local v2           #sc:Ljavax/net/ssl/SSLContext;
    .restart local v1       #sc:Ljavax/net/ssl/SSLContext;
    :catchall_0
    move-exception v5

    move-object v2, v1

    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    .restart local v2       #sc:Ljavax/net/ssl/SSLContext;
    goto :goto_0
.end method


# virtual methods
.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 8
    .parameter "imageUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v3, 0x0

    .line 44
    .local v3, url:Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #url:Ljava/net/URL;
    .local v4, url:Ljava/net/URL;
    move-object v3, v4

    .line 48
    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 49
    .local v0, conn:Ljava/net/HttpURLConnection;
    iget v5, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->connectTimeout:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 50
    iget v5, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->readTimeout:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 52
    instance-of v5, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 53
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v5, v0

    .line 54
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, p0, Lio/rong/imkit/utils/RongAuthImageDownloader;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 64
    .local v2, imageStream:Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lio/rong/imkit/utils/RongAuthImageDownloader;->shouldBeProcessed(Ljava/net/HttpURLConnection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    invoke-static {v2}, Lio/rong/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 66
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image request failed with response code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 45
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #imageStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v1           #e:Ljava/net/MalformedURLException;
    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lio/rong/imageloader/utils/IoUtils;->readAndCloseStream(Ljava/io/InputStream;)V

    .line 62
    throw v1

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #imageStream:Ljava/io/InputStream;
    :cond_1
    new-instance v5, Lio/rong/imageloader/core/assist/ContentLengthInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    const v7, 0x8000

    invoke-direct {v6, v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lio/rong/imageloader/core/assist/ContentLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v5
.end method
