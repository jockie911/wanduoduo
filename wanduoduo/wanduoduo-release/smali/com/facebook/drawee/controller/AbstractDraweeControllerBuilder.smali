.class public abstract Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder",
        "<TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;"
    }
.end annotation


# static fields
.field private static final NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

.field private static final sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mAutoPlayAnimations:Z

.field private final mBoundControllerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLowResImageRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMultiImageRequests:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOldController:Lcom/facebook/drawee/interfaces/DraweeController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRetainImageOnFailure:Z

.field private mTapToRetryEnabled:Z

.field private mTryCacheOnlyFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p2, boundControllerListeners:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/drawee/controller/ControllerListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners:Ljava/util/Set;

    .line 82
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->init()V

    .line 83
    return-void
.end method

.method protected static generateUniqueControllerId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 89
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 92
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 93
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    .line 94
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    .line 95
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 96
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .locals 1

    .prologue
    .line 257
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->validate()V

    .line 260
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->buildController()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/drawee/interfaces/DraweeController;
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method protected buildController()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .locals 2

    .prologue
    .line 281
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->obtainController()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 282
    .local v0, controller:Lcom/facebook/drawee/controller/AbstractDraweeController;
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getRetainImageOnFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setRetainImageOnFailure(Z)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeBuildAndSetRetryManager(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeAttachListeners(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    .line 285
    return-object v0
.end method

.method public getAutoPlayAnimations()Z
    .locals 1

    .prologue
    .line 226
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    return v0
.end method

.method public getCallerContext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 404
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    return-object v0
.end method

.method protected abstract getDataSourceForRequest(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;"
        }
    .end annotation
.end method

.method public getDataSourceSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method protected getDataSourceSupplierForRequest(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, imageRequest:Ljava/lang/Object;,"TREQUEST;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSourceSupplierForRequest(Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;
    .locals 2
    .parameter
    .parameter "bitmapCacheOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;Z)",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, imageRequest:Ljava/lang/Object;,"TREQUEST;"
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getCallerContext()Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, callerContext:Ljava/lang/Object;
    new-instance v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method protected getFirstAvailableDataSourceSupplier([Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;
    .locals 4
    .parameter
    .parameter "tryBitmapCacheOnlyFirst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;Z)",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, imageRequests:[Ljava/lang/Object;,"[TREQUEST;"
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v1, suppliers:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;>;"
    if-eqz p2, :cond_0

    .line 330
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 331
    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 335
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_1
    invoke-static {v1}, Lcom/facebook/datasource/FirstAvailableDataSourceSupplier;->create(Ljava/util/List;)Lcom/facebook/datasource/FirstAvailableDataSourceSupplier;

    move-result-object v2

    return-object v2
.end method

.method public getFirstAvailableImageRequests()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    return-object v0
.end method

.method public getImageRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public getLowResImageRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldController()Lcom/facebook/drawee/interfaces/DraweeController;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    return-object v0
.end method

.method public getRetainImageOnFailure()Z
    .locals 1

    .prologue
    .line 215
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mRetainImageOnFailure:Z

    return v0
.end method

.method public getTapToRetryEnabled()Z
    .locals 1

    .prologue
    .line 204
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    return v0
.end method

.method protected abstract getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation
.end method

.method protected maybeAttachListeners(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 366
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/controller/ControllerListener;

    .line 368
    .local v0, listener:Lcom/facebook/drawee/controller/ControllerListener;,"Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    goto :goto_0

    .line 371
    .end local v0           #listener:Lcom/facebook/drawee/controller/ControllerListener;,"Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 374
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    if-eqz v1, :cond_2

    .line 375
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 377
    :cond_2
    return-void
.end method

.method protected maybeBuildAndSetGestureDetector(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 395
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getGestureDetector()Lcom/facebook/drawee/gestures/GestureDetector;

    move-result-object v0

    .line 396
    .local v0, gestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;
    if-nez v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/drawee/gestures/GestureDetector;->newInstance(Landroid/content/Context;)Lcom/facebook/drawee/gestures/GestureDetector;

    move-result-object v0

    .line 398
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setGestureDetector(Lcom/facebook/drawee/gestures/GestureDetector;)V

    .line 400
    :cond_0
    return-void
.end method

.method protected maybeBuildAndSetRetryManager(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 381
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    if-nez v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getRetryManager()Lcom/facebook/drawee/components/RetryManager;

    move-result-object v0

    .line 385
    .local v0, retryManager:Lcom/facebook/drawee/components/RetryManager;
    if-nez v0, :cond_1

    .line 386
    new-instance v0, Lcom/facebook/drawee/components/RetryManager;

    .end local v0           #retryManager:Lcom/facebook/drawee/components/RetryManager;
    invoke-direct {v0}, Lcom/facebook/drawee/components/RetryManager;-><init>()V

    .line 387
    .restart local v0       #retryManager:Lcom/facebook/drawee/components/RetryManager;
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setRetryManager(Lcom/facebook/drawee/components/RetryManager;)V

    .line 389
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/RetryManager;->setTapToRetryEnabled(Z)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeBuildAndSetGestureDetector(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    goto :goto_0
.end method

.method protected abstract obtainController()Lcom/facebook/drawee/controller/AbstractDraweeController;
.end method

.method protected obtainDataSourceSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v2, :cond_1

    .line 296
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    .line 302
    .local v0, supplier:Lcom/facebook/common/internal/Supplier;,"Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;"
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 303
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    .line 309
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .local v1, suppliers:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {v1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->create(Ljava/util/List;)Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    move-result-object v0

    .line 317
    .end local v1           #suppliers:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;>;"
    :cond_3
    if-nez v0, :cond_0

    .line 318
    sget-object v2, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

    invoke-static {v2}, Lcom/facebook/datasource/DataSources;->getFailedDataSourceSupplier(Ljava/lang/Throwable;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    invoke-virtual {p0, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getFirstAvailableDataSourceSupplier([Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    goto :goto_1
.end method

.method public reset()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->init()V

    .line 101
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    .line 221
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter "callerContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .locals 1
    .parameter

    .prologue
    .line 37
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<-TINFO;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, controllerListener:Lcom/facebook/drawee/controller/ControllerListener;,"Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 232
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDataSourceSupplier(Lcom/facebook/common/internal/Supplier;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, dataSourceSupplier:Lcom/facebook/common/internal/Supplier;,"Lcom/facebook/common/internal/Supplier<Lcom/facebook/datasource/DataSource<TIMAGE;>;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    .line 183
    return-void
.end method

.method public setFirstAvailableImageRequests([Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, firstAvailableImageRequests:[Ljava/lang/Object;,"[TREQUEST;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setFirstAvailableImageRequests([Ljava/lang/Object;Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFirstAvailableImageRequests([Ljava/lang/Object;Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter
    .parameter "tryCacheOnlyFirst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;Z)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, firstAvailableImageRequests:[Ljava/lang/Object;,"[TREQUEST;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    .line 162
    iput-boolean p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 163
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, imageRequest:Ljava/lang/Object;,"TREQUEST;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLowResImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    .local p1, lowResImageRequest:Ljava/lang/Object;,"TREQUEST;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter "oldController"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 245
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 37
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setRetainImageOnFailure(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mRetainImageOnFailure:Z

    .line 210
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTapToRetryEnabled(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    .line 199
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 4

    .prologue
    .local p0, this:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;,"Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<TBUILDER;TREQUEST;TIMAGE;TINFO;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 277
    return-void

    :cond_3
    move v0, v1

    .line 270
    goto :goto_0
.end method
