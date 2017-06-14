.class public final Lio/rong/imlib/navigation/CertificateTrustManager;
.super Ljava/lang/Object;
.source "CertificateTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 27
    .local p1, certificates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 29
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You must specify non-empty keys list"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 32
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/rong/imlib/navigation/CertificateTrustManager;->keys:Ljava/util/List;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    .local v3, key:Ljava/lang/String;
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 35
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 36
    .local v0, cert:Ljava/security/cert/Certificate;
    iget-object v4, p0, Lio/rong/imlib/navigation/CertificateTrustManager;->keys:Ljava/util/List;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "xcs"
    .parameter "string"

    .prologue
    .line 81
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "PublicKeyManager: X509Certificate array is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 45
    :cond_0
    array-length v8, p1

    if-gtz v8, :cond_1

    .line 46
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "PublicKeyManager: X509Certificate is empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 49
    :cond_1
    if-eqz p2, :cond_2

    const-string v8, "RSA"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 50
    :cond_2
    new-instance v8, Ljava/security/cert/CertificateException;

    const-string v9, "PublicKeyManager: AuthType is not RSA"

    invoke-direct {v8, v9}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 56
    :cond_3
    :try_start_0
    const-string v8, "X509"

    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 57
    .local v6, tmf:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v8, 0x0

    check-cast v8, Ljava/security/KeyStore;

    invoke-virtual {v6, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 59
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .local v0, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v7, v0, v2

    .line 60
    .local v7, trustManager:Ljavax/net/ssl/TrustManager;
    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    .end local v7           #trustManager:Ljavax/net/ssl/TrustManager;
    invoke-interface {v7, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v6           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/Exception;
    new-instance v8, Ljava/security/cert/CertificateException;

    invoke-direct {v8, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 67
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljavax/net/ssl/TrustManager;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :cond_4
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    .line 69
    .local v5, server:[B
    iget-object v8, p0, Lio/rong/imlib/navigation/CertificateTrustManager;->keys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 70
    .local v3, key:[B
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 71
    return-void

    .line 75
    .end local v3           #key:[B
    :cond_6
    new-instance v8, Ljava/security/cert/CertificateException;

    const-string v9, "Public keys didn\'t pass checks"

    invoke-direct {v8, v9}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method
