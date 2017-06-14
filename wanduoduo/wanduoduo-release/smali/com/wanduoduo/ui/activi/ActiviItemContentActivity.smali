.class public Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;
    }
.end annotation


# instance fields
.field private activiBean:Lcom/wanduoduo/bean/ActiviBean;

.field private comment_id:Ljava/lang/String;

.field private discussAdapter:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

.field etDisContent:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00bc
        }
    .end annotation
.end field

.field flPic:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ae
        }
    .end annotation
.end field

.field private isRefreshData:Z

.field ivAvctor:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f7
        }
    .end annotation
.end field

.field ivJianTou:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fd
        }
    .end annotation
.end field

.field ivPic:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01e5
        }
    .end annotation
.end field

.field ivRightTitleBar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e2
        }
    .end annotation
.end field

.field ivVipLevel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fb
        }
    .end annotation
.end field

.field llMapLocation:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02af
        }
    .end annotation
.end field

.field llZan:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b3
        }
    .end annotation
.end field

.field lvDiscuss:Lcom/wanduoduo/widget/MyListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00bb
        }
    .end annotation
.end field

.field mgvPic:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d0
        }
    .end annotation
.end field

.field mgvZan:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b4
        }
    .end annotation
.end field

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private news_id:Ljava/lang/String;

.field private order:I

.field private page:I

.field private position:I

.field refreshLayout:Lcom/cjj/MaterialRefreshLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ba
        }
    .end annotation
.end field

.field relPersonInfo:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f6
        }
    .end annotation
.end field

.field private total_page:I

.field tvActiviTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fa
        }
    .end annotation
.end field

.field tvAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fe
        }
    .end annotation
.end field

.field tvContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e020c
        }
    .end annotation
.end field

.field tvDiscuss:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0225
        }
    .end annotation
.end field

.field tvLocationPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b0
        }
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f9
        }
    .end annotation
.end field

.field tvReadCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b1
        }
    .end annotation
.end field

.field tvVisitTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fc
        }
    .end annotation
.end field

.field tvZan:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b2
        }
    .end annotation
.end field

.field vBottomLine:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fe
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 68
    iput v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->order:I

    .line 69
    iput v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I

    .line 70
    iput v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->total_page:I

    .line 74
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->comment_id:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Lcom/wanduoduo/bean/ActiviBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->activiBean:Lcom/wanduoduo/bean/ActiviBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Lcom/wanduoduo/bean/ActiviBean;)Lcom/wanduoduo/bean/ActiviBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->activiBean:Lcom/wanduoduo/bean/ActiviBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->total_page:I

    return v0
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->total_page:I

    return p1
.end method

.method static synthetic access$202(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->order:I

    return p1
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->isRefreshData:Z

    return v0
.end method

.method static synthetic access$302(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->isRefreshData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->initContent(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->discussAdapter:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->comment_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I

    return v0
.end method

.method static synthetic access$702(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I

    return p1
.end method

.method static synthetic access$708(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I

    return v0
.end method

.method static synthetic access$800(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;ILjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->zan(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->startUserInfoActivity(Ljava/lang/String;)V

    return-void
.end method

.method private getDiscussMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "news_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->news_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "content"

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "comment_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->comment_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v0
.end method

.method private getMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "id"

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->news_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->order:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v0
.end method

.method private getZanMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter "news_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v1, "news_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    return-object v0
.end method

.method private initContent(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mData:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;>;"
    const/high16 v13, 0x4234

    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, i:I
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v9

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v6, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 282
    iget-object v9, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvName:Landroid/widget/TextView;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getVip_level()Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_1

    .line 299
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    :goto_1
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getGender()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 304
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    const v9, 0x7f020269

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 305
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    const v9, 0x7f0d00a3

    const v10, 0x7f0200ab

    invoke-static {v6, v9, v10}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 312
    :goto_2
    iget-object v9, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getAge()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v9, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvActiviTime:Landroid/widget/TextView;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getCreate_time()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wanduoduo/utils/TimeShowUtils;->getStandardDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivJianTou:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->relPersonInfo:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 318
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 319
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :goto_3
    new-instance v2, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;-><init>(Ljava/util/List;)V

    .line 326
    .local v2, itemPicAdapter:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;
    const-string v9, "\u66f4\u65b0\u4e86\u5f62\u8c61\u89c6\u9891"

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 327
    new-array v9, v8, [Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getVideo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v7

    invoke-virtual {v2, v8, v9}, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->setVideoUrl(Z[Ljava/lang/String;)V

    .line 332
    :goto_4
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->flPic:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 333
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 334
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v6, v2}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    :cond_1
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llMapLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 340
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llMapLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    :goto_5
    iget-object v8, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvReadCount:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getView()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\u9605\u8bfb"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v8, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvZan:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLikeCount()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v8, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvDiscuss:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getCommentCount()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isIsLike()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 352
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvZan:Landroid/widget/TextView;

    const v8, 0x7f0d002d

    const v9, 0x7f020060

    invoke-static {v6, v8, v9}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 356
    :goto_6
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvZan:Landroid/widget/TextView;

    new-instance v8, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$6;

    invoke-direct {v8, p0, p1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$6;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLikeCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 367
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llZan:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    :goto_7
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    new-instance v7, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$8;

    invoke-direct {v7, p0, p1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$8;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/wanduoduo/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    new-instance v7, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$9;

    invoke-direct {v7, p0, p1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$9;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 403
    return-void

    .line 285
    .end local v2           #itemPicAdapter:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;
    :pswitch_0
    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    goto/16 :goto_0

    :pswitch_1
    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v8

    goto/16 :goto_0

    :pswitch_2
    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x2

    goto/16 :goto_0

    :pswitch_3
    const-string v10, "4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 287
    :pswitch_4
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v9, 0x7f020344

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 290
    :pswitch_5
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v9, 0x7f020345

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 293
    :pswitch_6
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v9, 0x7f020346

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 296
    :pswitch_7
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v9, 0x7f020347

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 306
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getGender()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 307
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    const v9, 0x7f020268

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 308
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    const v9, 0x7f0d00a3

    const v10, 0x7f0200aa

    invoke-static {v6, v9, v10}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto/16 :goto_2

    .line 310
    :cond_3
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 321
    :cond_4
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v9, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvContent:Landroid/widget/TextView;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 329
    .restart local v2       #itemPicAdapter:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;
    :cond_5
    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->setVideoUrl(Z[Ljava/lang/String;)V

    goto/16 :goto_4

    .line 342
    :cond_6
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llMapLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v8, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvLocationPlace:Landroid/widget/TextView;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 354
    :cond_7
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvZan:Landroid/widget/TextView;

    const v8, 0x7f0d001b

    const v9, 0x7f02005f

    invoke-static {v6, v8, v9}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto/16 :goto_6

    .line 369
    :cond_8
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llZan:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 371
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41a0

    invoke-static {v8, v9}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    div-int v0, v6, v8

    .line 372
    .local v0, count:I
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvZan:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v6, v0}, Lcom/wanduoduo/widget/MyGridView;->setNumColumns(I)V

    .line 373
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvZan:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v6}, Lcom/wanduoduo/widget/MyGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 374
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    mul-int/2addr v6, v0

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x4120

    invoke-static {v8, v9}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v6, v8

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvZan:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v6, v3}, Lcom/wanduoduo/widget/MyGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v5, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLike_users()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, p0, v6, v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;I)V

    .line 377
    .local v5, zanAdapter:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$ZanAdapter;
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvZan:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v6, v5}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    iget-object v6, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvZan:Lcom/wanduoduo/widget/MyGridView;

    new-instance v7, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$7;

    invoke-direct {v7, p0, p1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$7;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initRefreshListener()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->isRefreshData:Z

    .line 200
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/cjj/MaterialRefreshListener;)V

    .line 220
    return-void
.end method

.method private sendDiscussPost()V
    .locals 3

    .prologue
    .line 141
    const-string v0, "news_comment"

    invoke-direct {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->getDiscussMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$2;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 152
    return-void
.end method

.method private sortDiscuss()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u65f6\u95f4\u964d\u5e8f"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u65f6\u95f4\u987a\u5e8f"

    aput-object v3, v1, v2

    .line 166
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$3;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 174
    return-void
.end method

.method private startUserInfoActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "user_id"

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 411
    return-void
.end method

.method private zan(ILjava/util/List;)V
    .locals 4
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, mData:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isIsLike()Z

    move-result v0

    .line 418
    .local v0, isLike:Z
    const-string v1, ""

    .line 419
    .local v1, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 420
    const-string v1, "news_dislike"

    .line 424
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->getZanMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;IZ)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 437
    return-void

    .line 422
    :cond_0
    const-string v1, "news_like"

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f04001a

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u52a8\u6001\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    invoke-direct {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->initRefreshListener()V

    .line 87
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "news_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->news_id:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->position:I

    .line 90
    new-instance v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->discussAdapter:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

    .line 91
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->lvDiscuss:Lcom/wanduoduo/widget/MyListView;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->discussAdapter:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDataRequest()V

    .line 95
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->lvDiscuss:Lcom/wanduoduo/widget/MyListView;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e2,
            0x7f0e00bd
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00e2

    if-ne v0, v1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sortDiscuss()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00bd

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const-string v0, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDiscussPost()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->discussAdapter:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->getComment_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->comment_id:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u590d "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->discussAdapter:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 235
    return-void
.end method

.method public sendDataRequest()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "new_info"

    invoke-direct {p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 113
    return-void
.end method
