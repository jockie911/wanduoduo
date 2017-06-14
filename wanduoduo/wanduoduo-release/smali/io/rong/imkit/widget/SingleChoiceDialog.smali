.class public Lio/rong/imkit/widget/SingleChoiceDialog;
.super Landroid/app/Dialog;
.source "SingleChoiceDialog.java"


# instance fields
.field protected mButtonCancel:Landroid/widget/TextView;

.field protected mButtonOK:Landroid/widget/TextView;

.field protected mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/ListView;

.field protected mOkClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mRootView:Landroid/view/View;

.field private mSingleChoiceAdapter:Lio/rong/imkit/widget/SingleChoiceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/widget/SingleChoiceAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTVTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mList:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/SingleChoiceDialog;->initView(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lio/rong/imkit/widget/SingleChoiceDialog;->initData()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/SingleChoiceDialog;)Lio/rong/imkit/widget/SingleChoiceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mSingleChoiceAdapter:Lio/rong/imkit/widget/SingleChoiceAdapter;

    return-object v0
.end method

.method private setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 135
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v4, 0x0

    .line 141
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 142
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0xa

    .line 147
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 148
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getSelectItem()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mSingleChoiceAdapter:Lio/rong/imkit/widget/SingleChoiceAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/SingleChoiceAdapter;->getSelectItem()I

    move-result v0

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lio/rong/imkit/widget/SingleChoiceAdapter;

    iget-object v1, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mList:Ljava/util/List;

    sget v3, Lio/rong/imkit/R$drawable;->rc_cs_group_checkbox_selector:I

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/SingleChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mSingleChoiceAdapter:Lio/rong/imkit/widget/SingleChoiceAdapter;

    .line 111
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mSingleChoiceAdapter:Lio/rong/imkit/widget/SingleChoiceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lio/rong/imkit/widget/SingleChoiceDialog$3;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/SingleChoiceDialog$3;-><init>(Lio/rong/imkit/widget/SingleChoiceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lio/rong/imkit/widget/SingleChoiceDialog;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 127
    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 52
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->requestWindowFeature(I)Z

    .line 53
    sget v3, Lio/rong/imkit/R$layout;->rc_cs_single_choice_layout:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->setContentView(I)V

    .line 54
    sget v3, Lio/rong/imkit/R$id;->rc_cs_rootView:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mRootView:Landroid/view/View;

    .line 55
    iget-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mRootView:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    sget v3, Lio/rong/imkit/R$id;->rc_cs_tv_title:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mTVTitle:Landroid/widget/TextView;

    .line 57
    sget v3, Lio/rong/imkit/R$id;->rc_cs_btn_ok:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mButtonOK:Landroid/widget/TextView;

    .line 58
    iget-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mButtonOK:Landroid/widget/TextView;

    new-instance v4, Lio/rong/imkit/widget/SingleChoiceDialog$1;

    invoke-direct {v4, p0}, Lio/rong/imkit/widget/SingleChoiceDialog$1;-><init>(Lio/rong/imkit/widget/SingleChoiceDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v3, Lio/rong/imkit/R$id;->rc_cs_btn_cancel:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mButtonCancel:Landroid/widget/TextView;

    .line 65
    iget-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mButtonCancel:Landroid/widget/TextView;

    new-instance v4, Lio/rong/imkit/widget/SingleChoiceDialog$2;

    invoke-direct {v4, p0}, Lio/rong/imkit/widget/SingleChoiceDialog$2;-><init>(Lio/rong/imkit/widget/SingleChoiceDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v3, Lio/rong/imkit/R$id;->rc_cs_group_dialog_listView:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mListView:Landroid/widget/ListView;

    .line 74
    invoke-virtual {p0}, Lio/rong/imkit/widget/SingleChoiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    .local v0, dialogWindow:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 77
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 78
    .local v1, dw:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method protected onButtonCancel()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lio/rong/imkit/widget/SingleChoiceDialog;->dismiss()V

    .line 102
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 105
    :cond_0
    return-void
.end method

.method protected onButtonOK()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lio/rong/imkit/widget/SingleChoiceDialog;->dismiss()V

    .line 95
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mOkClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mOkClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 98
    :cond_0
    return-void
.end method

.method public setOnCancelButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 90
    iput-object p1, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    return-void
.end method

.method public setOnOKButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 86
    iput-object p1, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mOkClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 82
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceDialog;->mTVTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method
