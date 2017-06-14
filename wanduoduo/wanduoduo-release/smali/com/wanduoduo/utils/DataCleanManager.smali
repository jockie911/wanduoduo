.class public Lcom/wanduoduo/utils/DataCleanManager;
.super Ljava/lang/Object;
.source "DataCleanManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCache()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/wanduoduo/utils/DataCleanManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/wanduoduo/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/wanduoduo/utils/DataCleanManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/wanduoduo/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    .line 34
    :cond_0
    return-void
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 38
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 41
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/wanduoduo/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 42
    .local v2, success:Z
    if-nez v2, :cond_0

    .line 43
    const/4 v3, 0x0

    .line 47
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :goto_1
    return v3

    .line 40
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #success:Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    const-wide/16 v4, 0x0

    .line 56
    .local v4, size:J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 57
    .local v1, fileList:[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 59
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/wanduoduo/utils/DataCleanManager;->getFolderSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 65
    .end local v1           #fileList:[Ljava/io/File;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-wide v4
.end method

.method public static getFormatSize(D)Ljava/lang/String;
    .locals 16
    .parameter "size"

    .prologue
    .line 78
    const-wide/high16 v12, 0x4090

    div-double v2, p0, v12

    .line 79
    .local v2, kiloByte:D
    const-wide/high16 v12, 0x3ff0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_0

    .line 81
    const-string v12, "0K"

    .line 105
    :goto_0
    return-object v12

    .line 84
    :cond_0
    const-wide/high16 v12, 0x4090

    div-double v4, v2, v12

    .line 85
    .local v4, megaByte:D
    const-wide/high16 v12, 0x3ff0

    cmpg-double v12, v4, v12

    if-gez v12, :cond_1

    .line 86
    new-instance v6, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 87
    .local v6, result1:Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v6, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    .line 88
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "KB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 91
    .end local v6           #result1:Ljava/math/BigDecimal;
    :cond_1
    const-wide/high16 v12, 0x4090

    div-double v0, v4, v12

    .line 92
    .local v0, gigaByte:D
    const-wide/high16 v12, 0x3ff0

    cmpg-double v12, v0, v12

    if-gez v12, :cond_2

    .line 93
    new-instance v7, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 94
    .local v7, result2:Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v7, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    .line 95
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 98
    .end local v7           #result2:Ljava/math/BigDecimal;
    :cond_2
    const-wide/high16 v12, 0x4090

    div-double v10, v0, v12

    .line 99
    .local v10, teraBytes:D
    const-wide/high16 v12, 0x3ff0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_3

    .line 100
    new-instance v8, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 101
    .local v8, result3:Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v8, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    .line 102
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "GB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 104
    .end local v8           #result3:Ljava/math/BigDecimal;
    :cond_3
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 105
    .local v9, result4:Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v9, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "TB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method public static getTotalCacheSize()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/wanduoduo/utils/DataCleanManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/wanduoduo/utils/DataCleanManager;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    .line 22
    .local v0, cacheSize:J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {}, Lcom/wanduoduo/utils/DataCleanManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/wanduoduo/utils/DataCleanManager;->getFolderSize(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 25
    :cond_0
    long-to-double v2, v0

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/DataCleanManager;->getFormatSize(D)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
