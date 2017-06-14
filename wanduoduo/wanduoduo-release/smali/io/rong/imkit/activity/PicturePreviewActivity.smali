.class public Lio/rong/imkit/activity/PicturePreviewActivity;
.super Landroid/app/Activity;
.source "PicturePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;,
        Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;
    }
.end annotation


# static fields
.field public static final RESULT_SEND:I = 0x1


# instance fields
.field private mBtnBack:Landroid/widget/ImageButton;

.field private mBtnSend:Landroid/widget/Button;

.field private mCurrentIndex:I

.field private mFullScreen:Z

.field private mIndexTotal:Landroid/widget/TextView;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectBox:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

.field private mToolbarBottom:Landroid/view/View;

.field private mToolbarTop:Landroid/view/View;

.field private mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

.field private mViewPager:Lio/rong/imkit/widget/HackyViewPager;

.field private mWholeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/activity/PicturePreviewActivity;)Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/activity/PicturePreviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lio/rong/imkit/activity/PicturePreviewActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/activity/PicturePreviewActivity;)Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mSelectBox:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/activity/PicturePreviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$302(Lio/rong/imkit/activity/PicturePreviewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$400(Lio/rong/imkit/activity/PicturePreviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getTotalSelectedNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/rong/imkit/activity/PicturePreviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->updateToolbar()V

    return-void
.end method

.method static synthetic access$700(Lio/rong/imkit/activity/PicturePreviewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mIndexTotal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lio/rong/imkit/activity/PicturePreviewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mFullScreen:Z

    return v0
.end method

.method static synthetic access$802(Lio/rong/imkit/activity/PicturePreviewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mFullScreen:Z

    return p1
.end method

.method static synthetic access$900(Lio/rong/imkit/activity/PicturePreviewActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarTop:Landroid/view/View;

    return-object v0
.end method

.method public static getSmartBarHeight(Landroid/content/Context;)I
    .locals 6
    .parameter "context"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 247
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 249
    .local v4, obj:Ljava/lang/Object;
    const-string v5, "mz_action_button_min_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 250
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 251
    .local v3, height:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 255
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #height:I
    .end local v4           #obj:Ljava/lang/Object;
    :goto_0
    return v5

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getTotalSelectedNum()I
    .locals 3

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 202
    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-boolean v2, v2, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->selected:Z

    if-eqz v2, :cond_0

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return v1
.end method

.method private getTotalSelectedSize()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x4480

    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, size:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 212
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-boolean v4, v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->selected:Z

    if-eqz v4, :cond_0

    .line 213
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-object v4, v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->uri:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    add-float/2addr v2, v4

    .line 211
    .end local v0           #file:Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_1
    cmpg-float v4, v2, v8

    if-gez v4, :cond_2

    .line 220
    const-string v4, "%.0fK"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, totalSize:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 222
    .end local v3           #totalSize:Ljava/lang/String;
    :cond_2
    const-string v4, "%.1fM"

    new-array v5, v10, [Ljava/lang/Object;

    div-float v6, v2, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #totalSize:Ljava/lang/String;
    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 170
    sget v0, Lio/rong/imkit/R$id;->toolbar_top:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarTop:Landroid/view/View;

    .line 171
    sget v0, Lio/rong/imkit/R$id;->index_total:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mIndexTotal:Landroid/widget/TextView;

    .line 172
    sget v0, Lio/rong/imkit/R$id;->back:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mBtnBack:Landroid/widget/ImageButton;

    .line 173
    sget v0, Lio/rong/imkit/R$id;->send:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mBtnSend:Landroid/widget/Button;

    .line 175
    sget v0, Lio/rong/imkit/R$id;->whole_layout:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mWholeView:Landroid/view/View;

    .line 176
    sget v0, Lio/rong/imkit/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/HackyViewPager;

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    .line 178
    sget v0, Lio/rong/imkit/R$id;->toolbar_bottom:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarBottom:Landroid/view/View;

    .line 179
    new-instance v0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    sget v1, Lio/rong/imkit/R$id;->origin_check:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$drawable;->rc_origin_check_nor:I

    sget v3, Lio/rong/imkit/R$drawable;->rc_origin_check_sel:I

    invoke-direct {v0, p0, v1, v2, v3}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;Landroid/view/View;II)V

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    .line 180
    new-instance v0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    sget v1, Lio/rong/imkit/R$id;->select_check:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$drawable;->select_check_nor:I

    sget v3, Lio/rong/imkit/R$drawable;->select_check_sel:I

    invoke-direct {v0, p0, v1, v2, v3}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;Landroid/view/View;II)V

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mSelectBox:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    .line 181
    return-void
.end method

.method private updateToolbar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 228
    invoke-direct {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getTotalSelectedNum()I

    move-result v0

    .line 229
    .local v0, selNum:I
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_1

    if-nez v0, :cond_1

    .line 230
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mBtnSend:Landroid/widget/Button;

    sget v2, Lio/rong/imkit/R$string;->rc_picsel_toolbar_send:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 231
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    sget v2, Lio/rong/imkit/R$string;->rc_picprev_origin:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setText(I)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    if-nez v0, :cond_2

    .line 236
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mBtnSend:Landroid/widget/Button;

    sget v2, Lio/rong/imkit/R$string;->rc_picsel_toolbar_send:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 237
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    sget v2, Lio/rong/imkit/R$string;->rc_picprev_origin:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setText(I)V

    goto :goto_0

    .line 238
    :cond_2
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 239
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_picsel_toolbar_send_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_picprev_origin_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getTotalSelectedSize()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v9}, Lio/rong/imkit/activity/PicturePreviewActivity;->requestWindowFeature(I)Z

    .line 60
    sget v4, Lio/rong/imkit/R$layout;->rc_picprev_activity:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/activity/PicturePreviewActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->initView()V

    .line 63
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "sendOrigin"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setChecked(Z)V

    .line 64
    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "index"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mCurrentIndex:I

    .line 65
    sget-object v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItemHolder;->itemList:Ljava/util/ArrayList;

    iput-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    .line 66
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mIndexTotal:Landroid/widget/TextView;

    const-string v5, "%d/%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mCurrentIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 69
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mWholeView:Landroid/view/View;

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    invoke-static {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getSmartBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 71
    .local v1, margin:I
    if-lez v1, :cond_0

    .line 72
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarBottom:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8, v8, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarBottom:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #margin:I
    :cond_0
    const/4 v3, 0x0

    .line 79
    .local v3, result:I
    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "status_bar_height"

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, resourceId:I
    if-lez v2, :cond_1

    .line 81
    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 84
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarTop:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mToolbarTop:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mBtnBack:Landroid/widget/ImageButton;

    new-instance v5, Lio/rong/imkit/activity/PicturePreviewActivity$1;

    invoke-direct {v5, p0}, Lio/rong/imkit/activity/PicturePreviewActivity$1;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mBtnSend:Landroid/widget/Button;

    new-instance v5, Lio/rong/imkit/activity/PicturePreviewActivity$2;

    invoke-direct {v5, p0}, Lio/rong/imkit/activity/PicturePreviewActivity$2;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    sget v5, Lio/rong/imkit/R$string;->rc_picprev_origin:I

    invoke-virtual {v4, v5}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setText(I)V

    .line 120
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    new-instance v5, Lio/rong/imkit/activity/PicturePreviewActivity$3;

    invoke-direct {v5, p0}, Lio/rong/imkit/activity/PicturePreviewActivity$3;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mSelectBox:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    sget v5, Lio/rong/imkit/R$string;->rc_picprev_select:I

    invoke-virtual {v4, v5}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setText(I)V

    .line 132
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mSelectBox:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mItemList:Ljava/util/ArrayList;

    iget v6, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mCurrentIndex:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-boolean v4, v4, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->selected:Z

    invoke-virtual {v5, v4}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setChecked(Z)V

    .line 133
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mSelectBox:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    new-instance v5, Lio/rong/imkit/activity/PicturePreviewActivity$4;

    invoke-direct {v5, p0}, Lio/rong/imkit/activity/PicturePreviewActivity$4;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    new-instance v5, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lio/rong/imkit/activity/PicturePreviewActivity$PreviewAdapter;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;Lio/rong/imkit/activity/PicturePreviewActivity$1;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 148
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    iget v5, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/HackyViewPager;->setCurrentItem(I)V

    .line 149
    iget-object v4, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    new-instance v5, Lio/rong/imkit/activity/PicturePreviewActivity$5;

    invoke-direct {v5, p0}, Lio/rong/imkit/activity/PicturePreviewActivity$5;-><init>(Lio/rong/imkit/activity/PicturePreviewActivity;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/HackyViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 166
    invoke-direct {p0}, Lio/rong/imkit/activity/PicturePreviewActivity;->updateToolbar()V

    .line 167
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 191
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sendOrigin"

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePreviewActivity;->mUseOrigin:Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->getChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lio/rong/imkit/activity/PicturePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    return-void
.end method
