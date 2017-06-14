.class public Lmabeijianxi/camera/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .parameter "updateFile"

    .prologue
    const/4 v6, 0x0

    .line 55
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 63
    .local v2, digest:Ljava/security/MessageDigest;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 71
    .local v4, is:Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 74
    .local v1, buffer:[B
    :goto_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-lez v7, :cond_0

    .line 75
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 83
    .end local v7           #read:I
    :catch_0
    move-exception v3

    .line 84
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to process file for MD5"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 87
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 90
    :goto_1
    throw v8

    .line 56
    .end local v1           #buffer:[B
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 57
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "FileUtils"

    const-string v9, "Exception while getting digest"

    invoke-static {v8, v9, v3}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v6

    .line 64
    .restart local v2       #digest:Ljava/security/MessageDigest;
    :catch_2
    move-exception v3

    .line 65
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v8, "FileUtils"

    const-string v9, "Exception while getting FileInputStream"

    invoke-static {v8, v9, v3}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 77
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #buffer:[B
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #read:I
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 78
    .local v5, md5sum:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 79
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, output:Ljava/lang/String;
    const-string v8, "%32s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x30

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v6

    .line 87
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 88
    :catch_3
    move-exception v3

    .line 89
    .local v3, e:Ljava/io/IOException;
    const-string v8, "FileUtils"

    const-string v9, "Exception on closing MD5 input stream"

    invoke-static {v8, v9, v3}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 88
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #md5sum:[B
    .end local v6           #output:Ljava/lang/String;
    .end local v7           #read:I
    :catch_4
    move-exception v3

    .line 89
    .restart local v3       #e:Ljava/io/IOException;
    const-string v9, "FileUtils"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v9, v10, v3}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static calculateMD5(Ljava/io/File;II)Ljava/lang/String;
    .locals 16
    .parameter "updateFile"
    .parameter "offset"
    .parameter "partSize"

    .prologue
    .line 100
    :try_start_0
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 108
    .local v7, digest:Ljava/security/MessageDigest;
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .local v9, is:Ljava/io/InputStream;
    const/16 v3, 0x2000

    .line 116
    .local v3, buffSize:I
    const/16 v13, 0x2000

    new-array v4, v13, [B

    .line 119
    .local v4, buffer:[B
    if-lez p1, :cond_0

    .line 120
    move/from16 v0, p1

    int-to-long v14, v0

    :try_start_2
    invoke-virtual {v9, v14, v15}, Ljava/io/InputStream;->skip(J)J

    .line 122
    :cond_0
    const/16 v13, 0x2000

    move/from16 v0, p2

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, byteCount:I
    const/4 v6, 0x0

    .line 123
    .local v6, byteLen:I
    :cond_1
    :goto_0
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, read:I
    if-lez v12, :cond_2

    move/from16 v0, p2

    if-ge v6, v0, :cond_2

    .line 124
    const/4 v13, 0x0

    invoke-virtual {v7, v4, v13, v12}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 125
    add-int/2addr v6, v12

    .line 127
    add-int/lit16 v13, v6, 0x2000

    move/from16 v0, p2

    if-le v13, v0, :cond_1

    .line 128
    sub-int v5, p2, v6

    goto :goto_0

    .line 101
    .end local v3           #buffSize:I
    .end local v4           #buffer:[B
    .end local v5           #byteCount:I
    .end local v6           #byteLen:I
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v12           #read:I
    :catch_0
    move-exception v8

    .line 102
    .local v8, e:Ljava/security/NoSuchAlgorithmException;
    const-string v13, "FileUtils"

    const-string v14, "Exception while getting digest"

    invoke-static {v13, v14, v8}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    const/4 v11, 0x0

    .line 144
    .end local v8           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v11

    .line 109
    .restart local v7       #digest:Ljava/security/MessageDigest;
    :catch_1
    move-exception v8

    .line 110
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string v13, "FileUtils"

    const-string v14, "Exception while getting FileInputStream"

    invoke-static {v13, v14, v8}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/4 v11, 0x0

    goto :goto_1

    .line 131
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #buffSize:I
    .restart local v4       #buffer:[B
    .restart local v5       #byteCount:I
    .restart local v6       #byteLen:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v12       #read:I
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 132
    .local v10, md5sum:[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v13, 0x1

    invoke-direct {v2, v13, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 133
    .local v2, bigInt:Ljava/math/BigInteger;
    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, output:Ljava/lang/String;
    const-string v13, "%32s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x20

    const/16 v15, 0x30

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v11

    .line 141
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 142
    :catch_2
    move-exception v8

    .line 143
    .local v8, e:Ljava/io/IOException;
    const-string v13, "FileUtils"

    const-string v14, "Exception on closing MD5 input stream"

    invoke-static {v13, v14, v8}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 137
    .end local v2           #bigInt:Ljava/math/BigInteger;
    .end local v5           #byteCount:I
    .end local v6           #byteLen:I
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #md5sum:[B
    .end local v11           #output:Ljava/lang/String;
    .end local v12           #read:I
    :catch_3
    move-exception v8

    .line 138
    .restart local v8       #e:Ljava/io/IOException;
    :try_start_5
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Unable to process file for MD5"

    invoke-direct {v13, v14, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 141
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 144
    :goto_2
    throw v13

    .line 142
    :catch_4
    move-exception v8

    .line 143
    .restart local v8       #e:Ljava/io/IOException;
    const-string v14, "FileUtils"

    const-string v15, "Exception on closing MD5 input stream"

    invoke-static {v14, v15, v8}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static checkFile(Ljava/io/File;)Z
    .locals 4
    .parameter "f"

    .prologue
    .line 152
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    .line 162
    invoke-static {p0}, Lmabeijianxi/camera/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 165
    :cond_0
    const/4 v1, 0x1

    .line 167
    .end local v0           #f:Ljava/io/File;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs concatPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "paths"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v3, result:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_5

    .line 30
    array-length v8, p0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_5

    aget-object v1, p0, v7

    .line 31
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 33
    .local v0, len:I
    if-lez v0, :cond_1

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    if-ne v9, v10, :cond_1

    move v4, v5

    .line 34
    .local v4, suffixSeparator:Z
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    if-ne v9, v10, :cond_2

    move v2, v5

    .line 35
    .local v2, prefixSeparator:Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .end local v0           #len:I
    .end local v2           #prefixSeparator:Z
    .end local v4           #suffixSeparator:Z
    :cond_0
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .restart local v0       #len:I
    :cond_1
    move v4, v6

    .line 33
    goto :goto_1

    .restart local v4       #suffixSeparator:Z
    :cond_2
    move v2, v6

    .line 34
    goto :goto_2

    .line 37
    .restart local v2       #prefixSeparator:Z
    :cond_3
    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 38
    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 41
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 46
    .end local v0           #len:I
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #prefixSeparator:Z
    .end local v4           #suffixSeparator:Z
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static deleteCacheFile(Ljava/lang/String;)V
    .locals 7
    .parameter "f"

    .prologue
    .line 243
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 244
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, files:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 247
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "temp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 246
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v0           #file:Ljava/io/File;
    .end local v1           #files:Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static deleteCacheFile2TS(Ljava/lang/String;)V
    .locals 7
    .parameter "f"

    .prologue
    .line 256
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 257
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, files:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 260
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 259
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0           #file:Ljava/io/File;
    .end local v1           #files:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 5
    .parameter "f"

    .prologue
    .line 232
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 234
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteDir(Ljava/io/File;)V

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0           #file:Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 240
    :cond_2
    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 269
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteDir(Ljava/io/File;)V

    .line 272
    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 275
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 276
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "from"
    .parameter "to"

    .prologue
    .line 338
    const/4 v7, 0x0

    .line 340
    .local v7, result:Z
    const/16 v8, 0x400

    .line 342
    .local v8, size:I
    const/4 v3, 0x0

    .line 343
    .local v3, in:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 345
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 346
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 347
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_2
    new-array v0, v8, [B

    .line 348
    .local v0, buffer:[B
    const/4 v1, -0x1

    .line 349
    .local v1, bytesRead:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_2

    .line 350
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    goto :goto_0

    .line 354
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 355
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    if-eqz v3, :cond_0

    .line 363
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 368
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 369
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 374
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return v7

    .line 352
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 353
    const/4 v7, 0x1

    .line 362
    if-eqz v4, :cond_3

    .line 363
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 368
    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    .line 369
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_4
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 372
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 371
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 373
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 356
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_2
    move-exception v2

    .line 357
    .local v2, e:Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 362
    if-eqz v3, :cond_5

    .line 363
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 368
    :cond_5
    :goto_6
    if-eqz v5, :cond_1

    .line 369
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_3

    .line 371
    :catch_3
    move-exception v9

    goto :goto_3

    .line 358
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 359
    .local v2, e:Ljava/lang/Exception;
    :goto_7
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 362
    if-eqz v3, :cond_6

    .line 363
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 368
    :cond_6
    :goto_8
    if-eqz v5, :cond_1

    .line 369
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_3

    .line 371
    :catch_5
    move-exception v9

    goto :goto_3

    .line 361
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 362
    :goto_9
    if-eqz v3, :cond_7

    .line 363
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 368
    :cond_7
    :goto_a
    if-eqz v5, :cond_8

    .line 369
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 372
    :cond_8
    :goto_b
    throw v9

    .line 365
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v9

    goto :goto_4

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v9

    goto :goto_2

    .line 371
    :catch_8
    move-exception v9

    goto :goto_3

    .line 365
    .local v2, e:Ljava/io/IOException;
    :catch_9
    move-exception v9

    goto :goto_6

    .local v2, e:Ljava/lang/Exception;
    :catch_a
    move-exception v9

    goto :goto_8

    .end local v2           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v10

    goto :goto_a

    .line 371
    :catch_c
    move-exception v10

    goto :goto_b

    .line 361
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_9

    .line 358
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v2

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_7

    .line 356
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_f
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v2

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_5

    .line 354
    :catch_11
    move-exception v2

    goto :goto_1

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_12
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->isZte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "/sdcard"

    const-string v2, "/sdcard-ext"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_0
    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 214
    const-string v1, ""

    .line 215
    .local v1, extension:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 216
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 218
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .end local v0           #dotPos:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 2
    .parameter "fn"

    .prologue
    .line 200
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 8
    .parameter "fn"

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, f:Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 189
    .local v4, size:J
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1           #f:Ljava/io/File;
    .local v2, f:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 194
    const/4 v1, 0x0

    .line 196
    .end local v2           #f:Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    const/4 v1, 0x0

    .line 195
    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    const/4 v1, 0x0

    throw v3

    .line 196
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    .line 194
    .end local v1           #f:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    goto :goto_3

    .line 191
    .end local v1           #f:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    goto :goto_2
.end method

.method public static getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fn"

    .prologue
    .line 210
    const-string v0, "application/octet-stream"

    invoke-static {p0, v0}, Lmabeijianxi/camera/util/FileUtils;->getFileType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fn"
    .parameter "defaultType"

    .prologue
    .line 204
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 205
    .local v0, fNameMap:Ljava/net/FileNameMap;
    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v1

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 327
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lmabeijianxi/camera/util/FileUtils;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "file"
    .parameter "charsetName"

    .prologue
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, fileContent:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 293
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    :goto_0
    return-object v6

    .line 296
    :cond_1
    const/4 v4, 0x0

    .line 298
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 299
    .local v2, is:Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 300
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 301
    .local v3, line:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 303
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 309
    .end local v2           #is:Ljava/io/InputStreamReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "IOException occurred. "

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_3

    .line 313
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 315
    :cond_3
    throw v6

    .line 307
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #is:Ljava/io/InputStreamReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 311
    if-eqz v5, :cond_5

    .line 313
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 319
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 315
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "IOException occurred. "

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 314
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStreamReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 315
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "IOException occurred. "

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #is:Ljava/io/InputStreamReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 308
    .end local v2           #is:Ljava/io/InputStreamReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filePath"
    .parameter "charsetName"

    .prologue
    .line 323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lmabeijianxi/camera/util/FileUtils;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
