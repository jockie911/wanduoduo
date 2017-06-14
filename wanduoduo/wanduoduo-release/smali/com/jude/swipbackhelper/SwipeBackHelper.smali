.class public Lcom/jude/swipbackhelper/SwipeBackHelper;
.super Ljava/lang/Object;
.source "SwipeBackHelper.java"


# static fields
.field private static final mPageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/jude/swipbackhelper/SwipeBackPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/jude/swipbackhelper/SwipeBackHelper;->mPageStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findHelperByActivity(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 3
    .parameter "activity"

    .prologue
    .line 15
    sget-object v1, Lcom/jude/swipbackhelper/SwipeBackHelper;->mPageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jude/swipbackhelper/SwipeBackPage;

    .line 16
    .local v0, swipeBackPage:Lcom/jude/swipbackhelper/SwipeBackPage;
    iget-object v2, v0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    if-ne v2, p0, :cond_0

    .line 18
    .end local v0           #swipeBackPage:Lcom/jude/swipbackhelper/SwipeBackPage;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static finish(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->findHelperByActivity(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .local v0, page:Lcom/jude/swipbackhelper/SwipeBackPage;
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You Should call SwipeBackHelper.onCreate(activity) first"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/jude/swipbackhelper/SwipeBackPage;->scrollToFinishActivity()V

    .line 60
    return-void
.end method

.method public static getCurrentPage(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 3
    .parameter "activity"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->findHelperByActivity(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .local v0, page:Lcom/jude/swipbackhelper/SwipeBackPage;
    if-nez v0, :cond_0

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You Should call SwipeBackHelper.onCreate(activity) first"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    return-object v0
.end method

.method static getPrePage(Lcom/jude/swipbackhelper/SwipeBackPage;)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 3
    .parameter "activity"

    .prologue
    .line 63
    sget-object v1, Lcom/jude/swipbackhelper/SwipeBackHelper;->mPageStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, index:I
    if-lez v0, :cond_0

    sget-object v1, Lcom/jude/swipbackhelper/SwipeBackHelper;->mPageStack:Ljava/util/Stack;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jude/swipbackhelper/SwipeBackPage;

    .line 65
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->findHelperByActivity(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .local v0, page:Lcom/jude/swipbackhelper/SwipeBackPage;
    if-nez v0, :cond_0

    .line 32
    sget-object v1, Lcom/jude/swipbackhelper/SwipeBackHelper;->mPageStack:Ljava/util/Stack;

    new-instance v2, Lcom/jude/swipbackhelper/SwipeBackPage;

    invoke-direct {v2, p0}, Lcom/jude/swipbackhelper/SwipeBackPage;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #page:Lcom/jude/swipbackhelper/SwipeBackPage;
    check-cast v0, Lcom/jude/swipbackhelper/SwipeBackPage;

    .line 34
    .restart local v0       #page:Lcom/jude/swipbackhelper/SwipeBackPage;
    :cond_0
    invoke-virtual {v0}, Lcom/jude/swipbackhelper/SwipeBackPage;->onCreate()V

    .line 35
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->findHelperByActivity(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .local v0, page:Lcom/jude/swipbackhelper/SwipeBackPage;
    if-nez v0, :cond_0

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You Should call SwipeBackHelper.onCreate(activity) first"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    sget-object v1, Lcom/jude/swipbackhelper/SwipeBackHelper;->mPageStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 51
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public static onPostCreate(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->findHelperByActivity(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .local v0, page:Lcom/jude/swipbackhelper/SwipeBackPage;
    if-nez v0, :cond_0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You Should call SwipeBackHelper.onCreate(activity) first"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/jude/swipbackhelper/SwipeBackPage;->onPostCreate()V

    .line 43
    return-void
.end method
