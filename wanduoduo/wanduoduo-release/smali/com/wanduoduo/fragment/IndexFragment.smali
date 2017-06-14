.class public Lcom/wanduoduo/fragment/IndexFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "IndexFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/fragment/IndexFragment$MyOnResultListener;
    }
.end annotation


# static fields
.field private static final REQUEST_GET_TAG_LIST:I = 0x1

.field private static indexGiftListBean:Lcom/wanduoduo/bean/IndexGiftListBean;

.field private static indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;


# instance fields
.field private abilityPopWindow:Landroid/widget/PopupWindow;

.field colLlAbility:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e022b
        }
    .end annotation
.end field

.field private indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

.field ivExercise:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0235
        }
    .end annotation
.end field

.field ivFood:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0233
        }
    .end annotation
.end field

.field ivInstrument:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0234
        }
    .end annotation
.end field

.field ivSameCity:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0232
        }
    .end annotation
.end field

.field private leftSelectPostition:I

.field refreshLayout:Lcom/cjj/MaterialRefreshLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ba
        }
    .end annotation
.end field

.field private rightSelectPostition:I

.field private selectedTagID:Ljava/lang/String;

.field private sexPopWindow:Landroid/widget/PopupWindow;

.field private sexSelectedPosition:I

.field private sortPopWindow:Landroid/widget/PopupWindow;

.field private sortSelectedPosition:I

.field private subListView:Landroid/widget/ListView;

.field tvPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0106
        }
    .end annotation
.end field

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03ae
        }
    .end annotation
.end field

.field tvSelectedAbility:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e022d
        }
    .end annotation
.end field

.field tvSelectedSex:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0230
        }
    .end annotation
.end field

.field tvSelectedSort:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01cd
        }
    .end annotation
.end field

.field vView:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e022e
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 85
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->selectedTagID:Ljava/lang/String;

    return-void
.end method

.method private abilityPopItemClick(Landroid/widget/AdapterView;ILjava/util/List;Ljava/util/List;Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;)V
    .locals 7
    .parameter
    .parameter "i"
    .parameter
    .parameter
    .parameter "popSubListViewAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;",
            ">;",
            "Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .local p3, rootList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;>;"
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 254
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0308

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 255
    .local v3, tv:Landroid/widget/TextView;
    if-ne p2, v1, :cond_0

    .line 256
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d000b

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d000d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 260
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 263
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    if-nez p2, :cond_2

    .line 264
    const-string v4, "0"

    iput-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->selectedTagID:Ljava/lang/String;

    .line 265
    const/4 v4, 0x0

    iput v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    .line 266
    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedAbility:Landroid/widget/TextView;

    const-string v5, "\u5168\u90e8\u6280\u80fd"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->setImageViewDefault()V

    .line 268
    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    const-string v5, "0"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->setSkillCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->abilityPopWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, v4}, Lcom/wanduoduo/fragment/IndexFragment;->popWindowDismiss(Landroid/widget/PopupWindow;)V

    .line 294
    :goto_2
    return-void

    .line 270
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_3

    .line 271
    const-string v4, "999"

    iput-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->selectedTagID:Ljava/lang/String;

    .line 272
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    .line 273
    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedAbility:Landroid/widget/TextView;

    const-string v5, "\u5176\u4ed6"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->abilityPopWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, v4}, Lcom/wanduoduo/fragment/IndexFragment;->popWindowDismiss(Landroid/widget/PopupWindow;)V

    .line 275
    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    const-string v5, "999"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->setSkillCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v2, subList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v4, p2, -0x1

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    .line 279
    .local v0, data_list_child:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 281
    .end local v0           #data_list_child:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
    :cond_4
    const/4 v4, -0x1

    invoke-virtual {p5, v2, v4}, Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;->addData(Ljava/util/List;I)V

    .line 282
    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->subListView:Landroid/widget/ListView;

    new-instance v5, Lcom/wanduoduo/fragment/IndexFragment$6;

    invoke-direct {v5, p0, p2, p4}, Lcom/wanduoduo/fragment/IndexFragment$6;-><init>(Lcom/wanduoduo/fragment/IndexFragment;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/IndexFragment;)Lcom/wanduoduo/fragment/index/IndexGridViewFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wanduoduo/fragment/IndexFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getSexData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->sexPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/wanduoduo/fragment/IndexFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/wanduoduo/fragment/IndexFragment;->sortSelectedPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/wanduoduo/fragment/IndexFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getSortData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->sortPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/wanduoduo/bean/IndexTagListBean;)Lcom/wanduoduo/bean/IndexTagListBean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-object p0, Lcom/wanduoduo/fragment/IndexFragment;->indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wanduoduo/fragment/IndexFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/wanduoduo/fragment/IndexFragment;->rightSelectPostition:I

    return p1
.end method

.method static synthetic access$402(Lcom/wanduoduo/fragment/IndexFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment;->selectedTagID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/wanduoduo/fragment/IndexFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    return v0
.end method

.method static synthetic access$502(Lcom/wanduoduo/fragment/IndexFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    return p1
.end method

.method static synthetic access$600(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->abilityPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wanduoduo/fragment/IndexFragment;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/IndexFragment;->popWindowDismiss(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method static synthetic access$800(Lcom/wanduoduo/fragment/IndexFragment;Landroid/widget/AdapterView;ILjava/util/List;Ljava/util/List;Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/wanduoduo/fragment/IndexFragment;->abilityPopItemClick(Landroid/widget/AdapterView;ILjava/util/List;Ljava/util/List;Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;)V

    return-void
.end method

.method static synthetic access$902(Lcom/wanduoduo/fragment/IndexFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/wanduoduo/fragment/IndexFragment;->sexSelectedPosition:I

    return p1
.end method

.method private getSexData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, sexDataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "\u4e0d\u9650\u7537\u5973"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v1, "\u53ea\u9650\u7537"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v1, "\u53ea\u9650\u5973"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-object v0
.end method

.method private getSortData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, sexSortList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "\u4e0d\u9650\u4ef7\u683c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v1, "\u9ad8\u4ef7\u4f18\u5148"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v1, "\u4f4e\u4ef7\u4f18\u5148"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-object v0
.end method

.method private initAllAbilityTagList()V
    .locals 4

    .prologue
    .line 150
    const-string v0, "tag_list"

    const/4 v1, 0x0

    new-instance v2, Lcom/wanduoduo/fragment/IndexFragment$MyOnResultListener;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/wanduoduo/fragment/IndexFragment$MyOnResultListener;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 151
    return-void
.end method

.method private popWindowDismiss(Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 357
    :cond_0
    return-void
.end method

.method private selectedAbilttyPopWindow()V
    .locals 12

    .prologue
    .line 202
    sget-object v9, Lcom/wanduoduo/fragment/IndexFragment;->indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;

    if-nez v9, :cond_0

    .line 249
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedAbility:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/wanduoduo/fragment/IndexFragment;->setTextColorAndDrawable(Landroid/widget/TextView;Z)V

    .line 206
    iget-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/wanduoduo/fragment/IndexFragment;->vView:Landroid/view/View;

    const v11, 0x7f0400c3

    invoke-static {v9, v10, v11}, Lcom/wanduoduo/utils/PopWindowUtils;->getWindow(Landroid/content/Context;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v9

    iput-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->abilityPopWindow:Landroid/widget/PopupWindow;

    .line 207
    iget-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->abilityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 208
    iget-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->abilityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v8

    .line 209
    .local v8, view:Landroid/view/View;
    const v9, 0x7f0e0300

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 210
    .local v6, rootListView:Landroid/widget/ListView;
    const v9, 0x7f0e0302

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->subListView:Landroid/widget/ListView;

    .line 212
    new-instance v3, Lcom/wanduoduo/adapter/index/PopRootListViewAdapter;

    iget v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    invoke-direct {v3, v9}, Lcom/wanduoduo/adapter/index/PopRootListViewAdapter;-><init>(I)V

    .line 213
    .local v3, popRootListViewAdapter:Lcom/wanduoduo/adapter/index/PopRootListViewAdapter;
    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v5, rootList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/wanduoduo/fragment/IndexFragment;->indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;

    invoke-virtual {v9}, Lcom/wanduoduo/bean/IndexTagListBean;->getData()Lcom/wanduoduo/bean/IndexTagListBean$DataBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;>;"
    const-string v9, "\u5168\u90e8\u6280\u80fd"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    .line 218
    .local v0, data:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getCategory_name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    .end local v0           #data:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;
    :cond_1
    const-string v9, "\u5176\u4ed6"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v3, v5}, Lcom/wanduoduo/adapter/index/PopRootListViewAdapter;->addData(Ljava/util/List;)V

    .line 223
    new-instance v4, Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;

    invoke-direct {v4}, Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;-><init>()V

    .line 224
    .local v4, popSubListViewAdapter:Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;
    iget-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->subListView:Landroid/widget/ListView;

    invoke-virtual {v9, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    iget v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_3

    .line 227
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v7, subStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    invoke-virtual {v9}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    .line 229
    .local v2, data_list_child:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    .end local v2           #data_list_child:Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
    :cond_2
    iget v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->rightSelectPostition:I

    invoke-virtual {v4, v7, v9}, Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;->addData(Ljava/util/List;I)V

    .line 232
    iget-object v9, p0, Lcom/wanduoduo/fragment/IndexFragment;->subListView:Landroid/widget/ListView;

    new-instance v10, Lcom/wanduoduo/fragment/IndexFragment$4;

    invoke-direct {v10, p0, v1}, Lcom/wanduoduo/fragment/IndexFragment$4;-><init>(Lcom/wanduoduo/fragment/IndexFragment;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    .end local v7           #subStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v9, Lcom/wanduoduo/fragment/IndexFragment$5;

    invoke-direct {v9, p0, v5, v1, v4}, Lcom/wanduoduo/fragment/IndexFragment$5;-><init>(Lcom/wanduoduo/fragment/IndexFragment;Ljava/util/List;Ljava/util/List;Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method private selectedSexPopWindow()V
    .locals 6

    .prologue
    .line 297
    iget-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->vView:Landroid/view/View;

    const v5, 0x7f0400cc

    invoke-static {v3, v4, v5}, Lcom/wanduoduo/utils/PopWindowUtils;->getWindow(Landroid/content/Context;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->sexPopWindow:Landroid/widget/PopupWindow;

    .line 298
    iget-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->sexPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 299
    iget-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->sexPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 300
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0e0312

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 301
    .local v0, popListView:Landroid/widget/ListView;
    new-instance v1, Lcom/wanduoduo/adapter/PopSexListViewAdapter;

    invoke-direct {v1}, Lcom/wanduoduo/adapter/PopSexListViewAdapter;-><init>()V

    .line 302
    .local v1, popSexListViewAdapter:Lcom/wanduoduo/adapter/PopSexListViewAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getSexData()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->sexSelectedPosition:I

    invoke-virtual {v1, v3, v4}, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->addData(Ljava/util/List;I)V

    .line 305
    new-instance v3, Lcom/wanduoduo/fragment/IndexFragment$7;

    invoke-direct {v3, p0}, Lcom/wanduoduo/fragment/IndexFragment$7;-><init>(Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 314
    return-void
.end method

.method private selectedSortPopWindow()V
    .locals 6

    .prologue
    .line 317
    iget-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->vView:Landroid/view/View;

    const v5, 0x7f0400cc

    invoke-static {v3, v4, v5}, Lcom/wanduoduo/utils/PopWindowUtils;->getWindow(Landroid/content/Context;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->sortPopWindow:Landroid/widget/PopupWindow;

    .line 318
    iget-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->sortPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 319
    iget-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment;->sortPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0e0312

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 321
    .local v0, popListView:Landroid/widget/ListView;
    new-instance v1, Lcom/wanduoduo/adapter/PopSexListViewAdapter;

    invoke-direct {v1}, Lcom/wanduoduo/adapter/PopSexListViewAdapter;-><init>()V

    .line 322
    .local v1, popSexListViewAdapter:Lcom/wanduoduo/adapter/PopSexListViewAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getSortData()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/wanduoduo/fragment/IndexFragment;->sortSelectedPosition:I

    invoke-virtual {v1, v3, v4}, Lcom/wanduoduo/adapter/PopSexListViewAdapter;->addData(Ljava/util/List;I)V

    .line 325
    new-instance v3, Lcom/wanduoduo/fragment/IndexFragment$8;

    invoke-direct {v3, p0}, Lcom/wanduoduo/fragment/IndexFragment$8;-><init>(Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    return-void
.end method

.method private setImageDrawable(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "targetImageView"
    .parameter "drawableResID"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    return-void
.end method

.method private setImageViewDefault()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivSameCity:Landroid/widget/ImageView;

    const v1, 0x7f0200d8

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->setImageDrawable(Landroid/widget/ImageView;I)V

    .line 395
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivFood:Landroid/widget/ImageView;

    const v1, 0x7f0200ce

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->setImageDrawable(Landroid/widget/ImageView;I)V

    .line 396
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivInstrument:Landroid/widget/ImageView;

    const v1, 0x7f0200d1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->setImageDrawable(Landroid/widget/ImageView;I)V

    .line 397
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivExercise:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->setImageDrawable(Landroid/widget/ImageView;I)V

    .line 398
    return-void
.end method

.method private setSelectImageView(Landroid/widget/ImageView;ILjava/lang/String;)V
    .locals 1
    .parameter "targetImageView"
    .parameter "drawableResID"
    .parameter "bigtag"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->setImageViewDefault()V

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/fragment/IndexFragment;->setImageDrawable(Landroid/widget/ImageView;I)V

    .line 390
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    invoke-virtual {v0, p3}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->setBigTag(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method private setTextColorAndDrawable(Landroid/widget/TextView;Z)V
    .locals 5
    .parameter "tv"
    .parameter "isSelected"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 371
    if-eqz p2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 378
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 380
    return-void

    .line 375
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 96
    const v0, 0x7f040078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->initAllAbilityTagList()V

    .line 103
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvPlace:Landroid/widget/TextView;

    const-string v1, "city_title"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/IndexFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e0236

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    iput-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    .line 107
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->isRefreshData:Z

    .line 108
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->closeRefresh(Lcom/cjj/MaterialRefreshLayout;)V

    .line 110
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/fragment/IndexFragment$1;-><init>(Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/cjj/MaterialRefreshListener;)V

    .line 131
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvRightTitleBar:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 132
    new-instance v0, Lcom/wanduoduo/fragment/IndexFragment$2;

    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/IndexFragment$2;-><init>(Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V

    .line 144
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 432
    packed-switch p1, :pswitch_data_0

    .line 445
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 446
    return-void

    .line 434
    :pswitch_0
    if-eqz p3, :cond_0

    .line 435
    const-string v2, "city_title"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, city_title:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvPlace:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    const-string v2, "city_code"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, city_code:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city_code   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 439
    const-string v2, "city_title"

    invoke-static {v2, v1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v2, "city_id"

    invoke-static {v2, v0}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    invoke-virtual {v2, v0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->setCityCode(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0106,
            0x7f0e03ae,
            0x7f0e022c,
            0x7f0e022f,
            0x7f0e0231,
            0x7f0e0232,
            0x7f0e0233,
            0x7f0e0234,
            0x7f0e0235
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 158
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/index/SelectLocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/wanduoduo/fragment/IndexFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 161
    :sswitch_1
    new-instance v0, Lcom/wanduoduo/fragment/IndexFragment$3;

    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/IndexFragment$3;-><init>(Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V

    goto :goto_0

    .line 173
    :sswitch_2
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->selectedAbilttyPopWindow()V

    goto :goto_0

    .line 176
    :sswitch_3
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSex:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/wanduoduo/fragment/IndexFragment;->setTextColorAndDrawable(Landroid/widget/TextView;Z)V

    .line 177
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->selectedSexPopWindow()V

    goto :goto_0

    .line 180
    :sswitch_4
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSort:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/wanduoduo/fragment/IndexFragment;->setTextColorAndDrawable(Landroid/widget/TextView;Z)V

    .line 181
    invoke-direct {p0}, Lcom/wanduoduo/fragment/IndexFragment;->selectedSortPopWindow()V

    goto :goto_0

    .line 184
    :sswitch_5
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivSameCity:Landroid/widget/ImageView;

    const v1, 0x7f0200d9

    const-string v2, "4"

    invoke-direct {p0, v0, v1, v2}, Lcom/wanduoduo/fragment/IndexFragment;->setSelectImageView(Landroid/widget/ImageView;ILjava/lang/String;)V

    goto :goto_0

    .line 187
    :sswitch_6
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivFood:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    const-string v2, "2"

    invoke-direct {p0, v0, v1, v2}, Lcom/wanduoduo/fragment/IndexFragment;->setSelectImageView(Landroid/widget/ImageView;ILjava/lang/String;)V

    goto :goto_0

    .line 190
    :sswitch_7
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivInstrument:Landroid/widget/ImageView;

    const v1, 0x7f0200d2

    const-string v2, "1"

    invoke-direct {p0, v0, v1, v2}, Lcom/wanduoduo/fragment/IndexFragment;->setSelectImageView(Landroid/widget/ImageView;ILjava/lang/String;)V

    goto :goto_0

    .line 193
    :sswitch_8
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->ivExercise:Landroid/widget/ImageView;

    const v1, 0x7f0200cc

    const-string v2, "3"

    invoke-direct {p0, v0, v1, v2}, Lcom/wanduoduo/fragment/IndexFragment;->setSelectImageView(Landroid/widget/ImageView;ILjava/lang/String;)V

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0106 -> :sswitch_0
        0x7f0e022c -> :sswitch_2
        0x7f0e022f -> :sswitch_3
        0x7f0e0231 -> :sswitch_4
        0x7f0e0232 -> :sswitch_5
        0x7f0e0233 -> :sswitch_6
        0x7f0e0234 -> :sswitch_7
        0x7f0e0235 -> :sswitch_8
        0x7f0e03ae -> :sswitch_1
    .end sparse-switch
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedAbility:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->setTextColorAndDrawable(Landroid/widget/TextView;Z)V

    .line 365
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSex:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->setTextColorAndDrawable(Landroid/widget/TextView;Z)V

    .line 366
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSort:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->setTextColorAndDrawable(Landroid/widget/TextView;Z)V

    .line 367
    return-void
.end method
