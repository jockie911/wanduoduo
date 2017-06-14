.class public Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppointmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private iconTitls:[I

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->iconTitls:[I

    .line 43
    iput p1, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->type:I

    .line 44
    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0xc3t 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public addData(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "isRefreshData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public deleteItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->notifyDataSetChanged()V

    .line 166
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const v11, 0x7f0d00a3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x4

    const/4 v5, 0x0

    .line 71
    if-nez p2, :cond_0

    .line 72
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f0400a2

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    #calls: Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;

    move-result-object v1

    .line 74
    .local v1, holder:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    iget-object v4, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    .line 75
    .local v2, itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v4, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 76
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v4, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getVip_level()Ljava/lang/String;

    move-result-object v8

    const/4 v4, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 84
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_1
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 89
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f020269

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f0200ab

    invoke-static {v4, v11, v6}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 91
    iget-object v6, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_2
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 103
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    const/high16 v6, 0x4170

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const-string v4, "1"

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getPay_type()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 107
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    const-string v6, "\u6211\u4e70\u5355"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_2
    :goto_3
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const v6, 0x7f0d0021

    iget-object v7, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->iconTitls:[I

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_tag_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    invoke-static {v4, v6, v7}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 116
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getIntro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemPlace:Landroid/widget/TextView;

    const-string v6, "\u672a\u77e5\uff0c\u8bf7\u8054\u7cfb\u4e3b\u4eba!"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_4
    iget-object v6, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvitemTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getStart_time()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "\u4e0d\u9650\u65f6\u95f4"

    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemCreateTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getCreate_time()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wanduoduo/utils/TimeShowUtils;->getStandardDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_a

    .line 131
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivItemPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivItemPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 133
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivItemPic:Landroid/widget/ImageView;

    new-instance v5, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;

    invoke-direct {v5, p0, p3, v2}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;-><init>(Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;Landroid/view/ViewGroup;Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_6
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    new-instance v5, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;

    invoke-direct {v5, p0, p3, v2}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;-><init>(Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;Landroid/view/ViewGroup;Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;)V

    invoke-virtual {v4, v5}, Lcom/wanduoduo/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-object p2

    .line 79
    :pswitch_0
    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v5

    goto/16 :goto_0

    :pswitch_1
    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    goto/16 :goto_0

    :pswitch_2
    const-string v9, "3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v7

    goto/16 :goto_0

    :pswitch_3
    const-string v9, "4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x3

    goto/16 :goto_0

    .line 80
    :pswitch_4
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020344

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 81
    :pswitch_5
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020345

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 82
    :pswitch_6
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020346

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 83
    :pswitch_7
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020347

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 92
    :cond_3
    iget-object v4, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 93
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f020268

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f0200aa

    invoke-static {v4, v11, v6}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 95
    iget-object v6, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 97
    :cond_4
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 108
    :cond_5
    const-string v4, "2"

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getPay_type()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    const-string v6, "\u6c42\u4e70\u5355"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 110
    :cond_6
    const-string v4, "3"

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getPay_type()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    const-string v6, "AA"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 121
    :cond_7
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, name:Ljava/lang/String;
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemPlace:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .end local v3           #name:Ljava/lang/String;
    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 122
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v3       #name:Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v3, "\u672a\u77e5\uff0c\u8bf7\u8054\u7cfb\u4e3b\u4eba!"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 127
    .end local v3           #name:Ljava/lang/String;
    :cond_9
    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getStart_time()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 147
    :cond_a
    iget-object v4, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivItemPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 79
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
