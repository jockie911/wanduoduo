.class public final Landroid/support/design/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mParent:Landroid/support/design/widget/TabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field private mView:Landroid/support/design/widget/TabLayout$TabView;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    .line 1245
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TabLayout$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1224
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$Tab;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1224
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/design/widget/TabLayout$Tab;Landroid/support/design/widget/TabLayout;)Landroid/support/design/widget/TabLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1224
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1224
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/design/widget/TabLayout$Tab;Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/widget/TabLayout$TabView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1224
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1224
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    return-void
.end method

.method static synthetic access$700(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1224
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1484
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    .line 1485
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 1486
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1487
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1488
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1489
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1490
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    .line 1491
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 1492
    return-void
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1481
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1474
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1276
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1429
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public select()V
    .locals 2

    .prologue
    .line 1416
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1420
    return-void
.end method

.method public setContentDescription(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 2
    .parameter "resId"
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1446
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .parameter "contentDesc"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1460
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1461
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1462
    return-object p0
.end method

.method public setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 3
    .parameter "resId"
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1318
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1319
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    return-object v1
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 3
    .parameter "view"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1294
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 1295
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1297
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1298
    .local v0, isSelected:Z
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1300
    return-object p0

    .line 1297
    .end local v0           #isSelected:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 2
    .parameter "resId"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1377
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .parameter "icon"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1364
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1365
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1366
    return-object p0
.end method

.method setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1343
    iput p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    .line 1344
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .parameter "tag"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1263
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1264
    return-object p0
.end method

.method public setText(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 2
    .parameter "resId"
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1406
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .parameter "text"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1392
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1393
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1394
    return-object p0
.end method
