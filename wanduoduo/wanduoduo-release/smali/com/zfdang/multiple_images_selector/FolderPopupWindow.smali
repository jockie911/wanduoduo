.class public Lcom/zfdang/multiple_images_selector/FolderPopupWindow;
.super Landroid/widget/PopupWindow;
.source "FolderPopupWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderPopupWindow"


# instance fields
.field private conentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    return-void
.end method


# virtual methods
.method public initPopupWindow(Landroid/app/Activity;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 29
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->mContext:Landroid/content/Context;

    .line 30
    instance-of v4, p1, Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 31
    check-cast v4, Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    iput-object v4, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    .line 36
    :goto_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 37
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    sget v4, Lcom/zfdang/multiple_images_selector/R$layout;->popup_folder_recyclerview:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->conentView:Landroid/view/View;

    .line 39
    iget-object v4, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->conentView:Landroid/view/View;

    sget v5, Lcom/zfdang/multiple_images_selector/R$id;->folder_recyclerview:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 41
    .local v2, rview:Landroid/view/View;
    instance-of v4, v2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_0

    .line 42
    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .end local v2           #rview:Landroid/view/View;
    iput-object v2, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 43
    iget-object v4, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v5, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 44
    iget-object v4, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;

    invoke-direct {v5, p1, v8, v6}, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 45
    iget-object v4, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;

    sget-object v6, Lcom/zfdang/multiple_images_selector/models/FolderListContent;->FOLDERS:Ljava/util/List;

    iget-object v7, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->mListener:Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;

    invoke-direct {v5, v6, v7}, Lcom/zfdang/multiple_images_selector/FolderRecyclerViewAdapter;-><init>(Ljava/util/List;Lcom/zfdang/multiple_images_selector/OnFolderRecyclerViewInteractionListener;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 50
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 51
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 53
    iget-object v4, p0, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->conentView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->setContentView(Landroid/view/View;)V

    .line 54
    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v4}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->setWidth(I)V

    .line 55
    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    const-wide v6, 0x3fe3c6a7ef9db22dL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->setHeight(I)V

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zfdang/multiple_images_selector/R$drawable;->popup_background:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0, v8}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->setOutsideTouchable(Z)V

    .line 59
    invoke-virtual {p0, v8}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->setFocusable(Z)V

    .line 60
    sget v4, Lcom/zfdang/multiple_images_selector/R$style;->AnimationPreview:I

    invoke-virtual {p0, v4}, Lcom/zfdang/multiple_images_selector/FolderPopupWindow;->setAnimationStyle(I)V

    .line 61
    return-void

    .line 33
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v3           #size:Landroid/graphics/Point;
    :cond_1
    const-string v4, "FolderPopupWindow"

    const-string v5, "initPopupWindow: context does not implement OnFolderRecyclerViewInteractionListener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
