.class public Lmabeijianxi/camera/VCamera;
.super Ljava/lang/Object;
.source "VCamera.java"


# static fields
.field public static final FFMPEG_LOG_FILENAME:Ljava/lang/String; = "ffmpeg.log"

.field public static final FFMPEG_LOG_FILENAME_TEMP:Ljava/lang/String; = "temp_ffmpeg.log"

.field public static final VCAMERA_SDK_VERSION:Ljava/lang/String; = "1.2.0"

.field private static mAppVersionCode:I

.field private static mAppVersionName:Ljava/lang/String;

.field private static mPackageName:Ljava/lang/String;

.field private static mVideoCachePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static copyFFmpegLog(Ljava/lang/String;)Z
    .locals 13
    .parameter "cmd"

    .prologue
    const/4 v10, 0x0

    .line 120
    const/4 v7, 0x0

    .line 122
    .local v7, result:Z
    const/16 v8, 0x400

    .line 124
    .local v8, size:I
    const/4 v3, 0x0

    .line 125
    .local v3, in:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 127
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lmabeijianxi/camera/VCamera;->getVideoCachePath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "temp_ffmpeg.log"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v9, temp:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 129
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 152
    if-eqz v3, :cond_0

    .line 153
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 158
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 159
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 164
    .end local v9           #temp:Ljava/io/File;
    :cond_1
    :goto_1
    return v10

    .line 132
    .restart local v9       #temp:Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 133
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    invoke-static {}, Lmabeijianxi/camera/VCamera;->getVideoCachePath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ffmpeg.log"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-direct {v6, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f

    .line 134
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_5
    const-string v10, "--------------------------------------------------\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 136
    const-string v10, "\r\n\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 137
    new-array v0, v8, [B

    .line 138
    .local v0, buffer:[B
    const/4 v1, -0x1

    .line 139
    .local v1, bytesRead:I
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_5

    .line 140
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    goto :goto_2

    .line 144
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 145
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v9           #temp:Ljava/io/File;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    const-string v10, "upload"

    invoke-static {v10, v2}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    if-eqz v3, :cond_3

    .line 153
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 158
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 159
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    move v10, v7

    .line 164
    goto :goto_1

    .line 142
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v9       #temp:Ljava/io/File;
    :cond_5
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    .line 143
    const/4 v7, 0x1

    .line 152
    if-eqz v4, :cond_6

    .line 153
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 158
    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    .line 159
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :cond_7
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 162
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_5

    .line 161
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 163
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_5

    .line 146
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v9           #temp:Ljava/io/File;
    :catch_2
    move-exception v2

    .line 147
    .local v2, e:Ljava/io/IOException;
    :goto_7
    :try_start_c
    const-string v10, "upload"

    invoke-static {v10, v2}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 152
    if-eqz v3, :cond_8

    .line 153
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 158
    :cond_8
    :goto_8
    if-eqz v5, :cond_4

    .line 159
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_5

    .line 161
    :catch_3
    move-exception v10

    goto :goto_5

    .line 148
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 149
    .local v2, e:Ljava/lang/Exception;
    :goto_9
    :try_start_f
    const-string v10, "upload"

    invoke-static {v10, v2}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 152
    if-eqz v3, :cond_9

    .line 153
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 158
    :cond_9
    :goto_a
    if-eqz v5, :cond_4

    .line 159
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_5

    .line 161
    :catch_5
    move-exception v10

    goto :goto_5

    .line 151
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 152
    :goto_b
    if-eqz v3, :cond_a

    .line 153
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 158
    :cond_a
    :goto_c
    if-eqz v5, :cond_b

    .line 159
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 162
    :cond_b
    :goto_d
    throw v10

    .line 155
    .restart local v9       #temp:Ljava/io/File;
    :catch_6
    move-exception v11

    goto/16 :goto_0

    .line 161
    :catch_7
    move-exception v11

    goto/16 :goto_1

    .line 155
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v10

    goto :goto_6

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v9           #temp:Ljava/io/File;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v10

    goto :goto_4

    .line 161
    :catch_a
    move-exception v10

    goto :goto_5

    .line 155
    .local v2, e:Ljava/io/IOException;
    :catch_b
    move-exception v10

    goto :goto_8

    .local v2, e:Ljava/lang/Exception;
    :catch_c
    move-exception v10

    goto :goto_a

    .end local v2           #e:Ljava/lang/Exception;
    :catch_d
    move-exception v11

    goto :goto_c

    .line 161
    :catch_e
    move-exception v11

    goto :goto_d

    .line 151
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v9       #temp:Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_b

    .line 148
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_f
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_9

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
    goto :goto_9

    .line 146
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_11
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v2

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_7

    .line 144
    .end local v9           #temp:Ljava/io/File;
    :catch_13
    move-exception v2

    goto/16 :goto_3

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v9       #temp:Ljava/io/File;
    :catch_14
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lmabeijianxi/camera/VCamera;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getVerCode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, -0x1

    .line 59
    .local v0, verCode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    const-string v0, ""

    goto :goto_0
.end method

.method public static getVideoCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lmabeijianxi/camera/VCamera;->mVideoCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmabeijianxi/camera/VCamera;->mPackageName:Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lmabeijianxi/camera/VCamera;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmabeijianxi/camera/VCamera;->mAppVersionName:Ljava/lang/String;

    .line 45
    invoke-static {p0}, Lmabeijianxi/camera/VCamera;->getVerCode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lmabeijianxi/camera/VCamera;->mAppVersionCode:I

    .line 48
    const-string v0, "versionName=%s&versionCode=%d&sdkVersion=%s&android=%s&device=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lmabeijianxi/camera/VCamera;->mAppVersionName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lmabeijianxi/camera/VCamera;->mAppVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1.2.0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->getReleaseVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegInit(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static isLog()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lmabeijianxi/camera/util/Log;->getIsLog()Z

    move-result v0

    return v0
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 90
    invoke-static {p0}, Lmabeijianxi/camera/util/Log;->setLog(Z)V

    .line 91
    return-void
.end method

.method public static setVideoCachePath(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 105
    :cond_0
    sput-object p0, Lmabeijianxi/camera/VCamera;->mVideoCachePath:Ljava/lang/String;

    .line 108
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lmabeijianxi/camera/VCamera;->getVideoCachePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "temp_ffmpeg.log"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v2, temp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
