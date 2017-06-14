.class Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;
.super Ljava/lang/Object;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadHandler"
.end annotation


# instance fields
.field private mCameraFilePath:Ljava/lang/String;

.field private mCaughtActivityNotFoundException:Z

.field private mController:Lcom/wanduoduo/base/BaseWebViewActivity$Controller;

.field private mHandled:Z

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wanduoduo/base/BaseWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/base/BaseWebViewActivity;Lcom/wanduoduo/base/BaseWebViewActivity$Controller;)V
    .locals 0
    .parameter "this$0"
    .parameter "controller"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mController:Lcom/wanduoduo/base/BaseWebViewActivity$Controller;

    .line 289
    return-void
.end method

.method private createCamcorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 465
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v1, cameraIntent:Landroid/content/Intent;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 468
    .local v2, externalDataDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, cameraDataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCameraFilePath:Ljava/lang/String;

    .line 473
    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    return-object v1
.end method

.method private varargs createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter "intents"

    .prologue
    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, chooser:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 453
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "\u9009\u62e9\u4e0a\u4f20\u6587\u4ef6"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    return-object v0
.end method

.method private createDefaultOpenableIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 446
    .local v0, chooser:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    return-object v0
.end method

.method private createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "type"

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    return-object v0
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 422
    :try_start_0
    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mController:Lcom/wanduoduo/base/BaseWebViewActivity$Controller;

    invoke-virtual {v2}, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCaughtActivityNotFoundException:Z

    .line 428
    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mController:Lcom/wanduoduo/base/BaseWebViewActivity$Controller;

    invoke-virtual {v2}, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createDefaultOpenableIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v1

    .line 432
    .local v1, e2:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mController:Lcom/wanduoduo/base/BaseWebViewActivity$Controller;

    invoke-virtual {v2}, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u4e0a\u4f20\u65e0\u6548"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCameraFilePath:Ljava/lang/String;

    return-object v0
.end method

.method handled()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mHandled:Z

    return v0
.end method

.method onResult(ILandroid/content/Intent;)V
    .locals 6
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 300
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCaughtActivityNotFoundException:Z

    if-eqz v2, :cond_0

    .line 303
    iput-boolean v5, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCaughtActivityNotFoundException:Z

    .line 327
    :goto_0
    return-void

    .line 306
    :cond_0
    if-eqz p2, :cond_1

    if-eq p1, v3, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 314
    .local v1, result:Landroid/net/Uri;
    :goto_1
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-ne p1, v3, :cond_2

    .line 315
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, cameraFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 320
    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mController:Lcom/wanduoduo/base/BaseWebViewActivity$Controller;

    invoke-virtual {v2}, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    .end local v0           #cameraFile:Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 325
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mHandled:Z

    .line 326
    iput-boolean v5, p0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCaughtActivityNotFoundException:Z

    goto :goto_0

    .line 307
    .end local v1           #result:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter
    .parameter "acceptType"
    .parameter "capture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v4, "image/*"

    .line 331
    .local v4, imageMimeType:Ljava/lang/String;
    const-string v15, "video/*"

    .line 332
    .local v15, videoMimeType:Ljava/lang/String;
    const-string v2, "audio/*"

    .line 333
    .local v2, audioMimeType:Ljava/lang/String;
    const-string v7, "capture"

    .line 334
    .local v7, mediaSourceKey:Ljava/lang/String;
    const-string v9, "camera"

    .line 335
    .local v9, mediaSourceValueCamera:Ljava/lang/String;
    const-string v10, "filesystem"

    .line 336
    .local v10, mediaSourceValueFileSystem:Ljava/lang/String;
    const-string v8, "camcorder"

    .line 337
    .local v8, mediaSourceValueCamcorder:Ljava/lang/String;
    const-string v11, "microphone"

    .line 340
    .local v11, mediaSourceValueMicrophone:Ljava/lang/String;
    const-string v6, "filesystem"

    .line 341
    .local v6, mediaSource:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 418
    :goto_0
    return-void

    .line 345
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 347
    const-string v16, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 348
    .local v14, params:[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v12, v14, v16

    .line 349
    .local v12, mimeType:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 350
    move-object/from16 v6, p3

    .line 352
    :cond_1
    const-string v16, "filesystem"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 357
    array-length v0, v14

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v13, v14, v16

    .line 358
    .local v13, p:Ljava/lang/String;
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, keyValue:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 361
    const-string v18, "capture"

    const/16 v19, 0x0

    aget-object v19, v5, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 362
    const/16 v18, 0x1

    aget-object v6, v5, v18

    .line 357
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 368
    .end local v5           #keyValue:[Ljava/lang/String;
    .end local v13           #p:Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->mCameraFilePath:Ljava/lang/String;

    .line 369
    const-string v16, "image/*"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 370
    const-string v16, "camera"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 379
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 380
    .local v3, chooser:Landroid/content/Intent;
    const-string v16, "android.intent.extra.INTENT"

    const-string v17, "image/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 384
    .end local v3           #chooser:Landroid/content/Intent;
    :cond_5
    const-string v16, "video/*"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 385
    const-string v16, "camcorder"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 394
    :cond_6
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 395
    .restart local v3       #chooser:Landroid/content/Intent;
    const-string v16, "android.intent.extra.INTENT"

    const-string v17, "video/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 396
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 399
    .end local v3           #chooser:Landroid/content/Intent;
    :cond_7
    const-string v16, "audio/*"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 400
    const-string v16, "microphone"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 409
    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 410
    .restart local v3       #chooser:Landroid/content/Intent;
    const-string v16, "android.intent.extra.INTENT"

    const-string v17, "audio/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 417
    .end local v3           #chooser:Landroid/content/Intent;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->createDefaultOpenableIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/wanduoduo/base/BaseWebViewActivity$UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
