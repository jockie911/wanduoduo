.class public Lio/rong/imkit/widget/provider/TakingPicturesActivity;
.super Landroid/app/Activity;
.source "TakingPicturesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CAMERA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TakingPicturesActivity"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mSavedPicUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startCamera()V
    .locals 8

    .prologue
    .line 86
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 89
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, name:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    .line 95
    const-string v5, "TakingPicturesActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCamera output pic uri ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v5, "output"

    iget-object v6, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/SecurityException;
    const-string v5, "TakingPicturesActivity"

    const-string v6, "REQUEST_CAMERA SecurityException!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 110
    const-string v1, "TakingPicturesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eq p2, v4, :cond_0

    .line 113
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 117
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    if-nez p2, :cond_1

    .line 120
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 121
    const-string v1, "TakingPicturesActivity"

    const-string v2, "RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    if-ne p2, v4, :cond_2

    .line 126
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    const/16 v3, 0x3c0

    const/16 v4, 0x3c0

    invoke-static {p0, v2, v3, v4}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 67
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lio/rong/imkit/R$id;->rc_send:I

    if-ne v2, v3, :cond_3

    .line 74
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, data:Landroid/content/Intent;
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    .end local v0           #data:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lio/rong/imkit/R$id;->rc_back:I

    if-ne v2, v3, :cond_2

    .line 81
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->requestWindowFeature(I)Z

    .line 36
    sget v4, Lio/rong/imkit/R$layout;->rc_ac_camera:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->setContentView(I)V

    .line 37
    sget v4, Lio/rong/imkit/R$id;->rc_back:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, cancel:Landroid/widget/Button;
    sget v4, Lio/rong/imkit/R$id;->rc_send:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 39
    .local v2, send:Landroid/widget/Button;
    sget v4, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mImage:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v4, "TakingPicturesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate savedInstanceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-nez p1, :cond_1

    .line 46
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->startCamera()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v4, "photo_uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 50
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    .line 52
    :try_start_0
    iget-object v4, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    const/16 v6, 0x3c0

    const/16 v7, 0x3c0

    invoke-static {p0, v5, v6, v7}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 142
    const-string v0, "TakingPicturesActivity"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 150
    const-string v0, "TakingPicturesActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v0, "photo_uri"

    iget-object v1, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method
