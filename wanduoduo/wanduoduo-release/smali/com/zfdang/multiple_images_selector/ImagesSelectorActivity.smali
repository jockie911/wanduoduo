.class public Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ImagesSelectorActivity.java"

# interfaces
.implements Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;
.implements Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_COLUMN_COUNT:Ljava/lang/String; = "column-count"

.field private static final CAMERA_REQUEST_CODE:I = 0x2b6

.field private static final MY_PERMISSIONS_REQUEST_CAMERA_CODE:I = 0x155

.field private static final MY_PERMISSIONS_REQUEST_STORAGE_CODE:I = 0xc5

.field private static final TAG:Ljava/lang/String; = "ImageSelector"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private currentFolderPath:Ljava/lang/String;

.field private mButtonBack:Landroid/widget/ImageView;

.field private mButtonConfirm:Landroid/widget/Button;

.field private mColumnCount:I

.field private mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

.field private mFolderSelectButton:Landroid/widget/TextView;

.field private mPopupAnchorView:Landroid/view/View;

.field private mTempImageFile:Ljava/io/File;

.field private final projections:[Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 48
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    iput v3, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mColumnCount:I

    .line 214
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->projections:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;Lcom/zfdang/multiple_images_selector/FolderPopupWindow;)Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mPopupAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->contentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->projections:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public LoadFolderAndImages()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "ImageSelector"

    const-string v1, "Load Folder And Images..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, ""

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;

    invoke-direct {v1, p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$3;-><init>(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)V

    .line 226
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 288
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 289
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$2;

    invoke-direct {v1, p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$2;-><init>(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)V

    .line 290
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 307
    return-void
.end method

.method public OnFolderChange()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderPopupWindow:Lcom/zfdang/multiple_images_selector/FolderPopupWindow;

    invoke-virtual {v1}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->dismiss()V

    .line 323
    invoke-static {}, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->getSelectedFolder()Lcom/zfdang/multiple_images_selector/models/FolderItem;

    move-result-object v0

    .line 324
    .local v0, folder:Lcom/zfdang/multiple_images_selector/models/FolderItem;
    iget-object v1, v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->currentFolderPath:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    iget-object v1, v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->path:Ljava/lang/String;

    iput-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->currentFolderPath:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderSelectButton:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    sget-object v1, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 329
    sget-object v1, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->IMAGES:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/zfdang/multiple_images_selector/models/FolderItem;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v1, "ImageSelector"

    const-string v2, "OnFolderChange: Same folder selected, skip loading."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, cameraIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 364
    :try_start_0
    invoke-static {p0}, Lcom/zfdang/multiple_images_selector/utilities/FileUtils;->createTmpFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "output"

    iget-object v3, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    const/16 v2, 0x2b6

    invoke-virtual {p0, v0, v2}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    :goto_1
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ImageSelector"

    const-string v3, "launchCamera: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 372
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    sget v2, Lcom/zfdang/multiple_images_selector/R$string;->camera_temp_file_error:I

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 375
    :cond_1
    sget v2, Lcom/zfdang/multiple_images_selector/R$string;->msg_no_camera:I

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 384
    const/16 v2, 0x2b6

    if-ne p1, v2, :cond_0

    .line 385
    if-ne p2, v5, :cond_1

    .line 386
    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 388
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v4, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, resultIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->clear()V

    .line 392
    sget-object v2, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v2, "selector_results"

    sget-object v3, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v5, v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 395
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->finish()V

    .line 407
    .end local v0           #resultIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 399
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 401
    .local v1, success:Z
    if-eqz v1, :cond_1

    .line 402
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mTempImageFile:Ljava/io/File;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonBack:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->setResult(I)V

    .line 414
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->finish()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonConfirm:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v0, data:Landroid/content/Intent;
    const-string v1, "selector_results"

    sget-object v2, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 418
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 419
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v6, Lcom/zfdang/multiple_images_selector/R$layout;->activity_images_selector:I

    invoke-virtual {p0, v6}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, actionBar:Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 89
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "selector_max_image_number"

    sget v7, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMaxImageNumber:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMaxImageNumber:I

    .line 90
    const-string v6, "selector_show_camera"

    sget-boolean v7, Lcom/zfdang/multiple_images_selector/SelectorSettings;->isShowCamera:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/zfdang/multiple_images_selector/SelectorSettings;->isShowCamera:Z

    .line 91
    const-string v6, "selector_min_image_size"

    sget v7, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMinImageSize:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMinImageSize:I

    .line 93
    const-string v6, "selector_initial_selected_list"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 94
    .local v5, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 95
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 96
    sget-object v6, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_1
    sget v6, Lcom/zfdang/multiple_images_selector/R$id;->selector_button_back:I

    invoke-virtual {p0, v6}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonBack:Landroid/widget/ImageView;

    .line 101
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonBack:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v6, Lcom/zfdang/multiple_images_selector/R$id;->selector_button_confirm:I

    invoke-virtual {p0, v6}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonConfirm:Landroid/widget/Button;

    .line 104
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonConfirm:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v6, Lcom/zfdang/multiple_images_selector/R$id;->image_recycerview:I

    invoke-virtual {p0, v6}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 109
    .local v4, rview:Landroid/view/View;
    instance-of v6, v4, Landroid/support/v7/widget/RecyclerView;

    if-eqz v6, :cond_2

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    .local v1, context:Landroid/content/Context;
    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .end local v4           #rview:Landroid/view/View;
    iput-object v4, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iget v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mColumnCount:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_3

    .line 113
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v7, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    :goto_0
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    sget-object v8, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->IMAGES:Ljava/util/ArrayList;

    invoke-direct {v7, v8, p0}, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;-><init>(Ljava/util/List;Lcom/zfdang/multiple_images_selector/OnImageRecyclerViewInteractionListener;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 119
    sget v6, Lcom/zfdang/multiple_images_selector/R$id;->recyclerview_fast_scroller:I

    invoke-virtual {p0, v6}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    .line 121
    .local v2, fastScroller:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 123
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 127
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #fastScroller:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;
    :cond_2
    sget v6, Lcom/zfdang/multiple_images_selector/R$id;->selector_footer:I

    invoke-virtual {p0, v6}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mPopupAnchorView:Landroid/view/View;

    .line 130
    sget v6, Lcom/zfdang/multiple_images_selector/R$id;->selector_image_folder_button:I

    invoke-virtual {p0, v6}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderSelectButton:Landroid/widget/TextView;

    .line 131
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderSelectButton:Landroid/widget/TextView;

    sget v7, Lcom/zfdang/multiple_images_selector/R$string;->selector_folder_all:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mFolderSelectButton:Landroid/widget/TextView;

    new-instance v7, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;

    invoke-direct {v7, p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity$1;-><init>(Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const-string v6, ""

    iput-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->currentFolderPath:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->clear()V

    .line 151
    invoke-static {}, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->clear()V

    .line 153
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->updateDoneButton()V

    .line 155
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->requestReadStorageRuntimePermission()V

    .line 156
    return-void

    .line 115
    .restart local v1       #context:Landroid/content/Context;
    :cond_3
    iget-object v6, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Landroid/support/v7/widget/GridLayoutManager;

    iget v8, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mColumnCount:I

    invoke-direct {v7, v1, v8}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method public onFolderItemInteraction(Lcom/zfdang/multiple_images_selector/models/FolderItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->OnFolderChange()V

    .line 341
    return-void
.end method

.method public onImageItemInteraction(Lcom/zfdang/multiple_images_selector/models/ImageItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 345
    sget-boolean v1, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->bReachMaxNumber:Z

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zfdang/multiple_images_selector/R$string;->selector_reach_max_image_hint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMaxImageNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, hint:Ljava/lang/String;
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 348
    sput-boolean v5, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->bReachMaxNumber:Z

    .line 351
    .end local v0           #hint:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/zfdang/multiple_images_selector/models/ImageItem;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->requestCameraRuntimePermissions()V

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->updateDoneButton()V

    .line 356
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .parameter "requestCode"
    .parameter "permissions"
    .parameter "grantResults"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    sparse-switch p1, :sswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 186
    :sswitch_0
    array-length v0, p3

    if-ne v0, v3, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->LoadFolderAndImages()V

    goto :goto_0

    .line 193
    :cond_0
    sget v0, Lcom/zfdang/multiple_images_selector/R$string;->selector_permission_error:I

    invoke-virtual {p0, v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 199
    :sswitch_1
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    aget v0, p3, v3

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->launchCamera()V

    goto :goto_0

    .line 207
    :cond_1
    sget v0, Lcom/zfdang/multiple_images_selector/R$string;->selector_permission_error:I

    invoke-virtual {p0, v0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0xc5 -> :sswitch_0
        0x155 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestCameraRuntimePermissions()V
    .locals 3

    .prologue
    .line 170
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 171
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->launchCamera()V

    goto :goto_0
.end method

.method public requestReadStorageRuntimePermission()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->LoadFolderAndImages()V

    goto :goto_0
.end method

.method public updateDoneButton()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    sget-object v1, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonConfirm:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zfdang/multiple_images_selector/R$string;->selector_action_done:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/zfdang/multiple_images_selector/models/ImageListContent;->SELECTED_IMAGES:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget v4, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMaxImageNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, caption:Ljava/lang/String;
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonConfirm:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void

    .line 313
    .end local v0           #caption:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/ImagesSelectorActivity;->mButtonConfirm:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
