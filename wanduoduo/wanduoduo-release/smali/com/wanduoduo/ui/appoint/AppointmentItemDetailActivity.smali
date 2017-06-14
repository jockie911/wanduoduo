.class public Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "AppointmentItemDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final REQUEST_OK:I = 0x1


# instance fields
.field private iconTitls:[I

.field private id:Ljava/lang/String;

.field private isSystem:Ljava/lang/String;

.field private itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

.field ivAvctor:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f7
        }
    .end annotation
.end field

.field ivItemBottom:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d7
        }
    .end annotation
.end field

.field ivItemIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00cd
        }
    .end annotation
.end field

.field ivItemTop:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d5
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

.field mgvPic:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d0
        }
    .end annotation
.end field

.field mgvTag:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d4
        }
    .end annotation
.end field

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private position:I

.field relPersonInfo:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f6
        }
    .end annotation
.end field

.field relTag:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d3
        }
    .end annotation
.end field

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

.field tvItemDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00cf
        }
    .end annotation
.end field

.field tvItemOrder:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d1
        }
    .end annotation
.end field

.field tvItemPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d6
        }
    .end annotation
.end field

.field tvItemSex:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d2
        }
    .end annotation
.end field

.field tvItemTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d8
        }
    .end annotation
.end field

.field tvItemTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ce
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->iconTitls:[I

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->id:Ljava/lang/String;

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->isSystem:Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$5;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void

    .line 94
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

.method static synthetic access$002(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->isSystem:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;)Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->deleteItemAppoint()V

    return-void
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->position:I

    return v0
.end method

.method static synthetic access$400(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->dealWithData()V

    return-void
.end method

.method private alertDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 171
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 173
    .local v1, item:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_id"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    iget-object v3, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->isSystem:Ljava/lang/String;

    .line 174
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .end local v1           #item:[Ljava/lang/CharSequence;
    const-string v2, "\u4e3e\u62a5"

    aput-object v2, v1, v5

    const-string v2, "\u5220\u9664"

    aput-object v2, v1, v6

    .line 179
    .restart local v1       #item:[Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$3;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 189
    return-void

    .line 177
    :cond_1
    new-array v1, v6, [Ljava/lang/CharSequence;

    .end local v1           #item:[Ljava/lang/CharSequence;
    const-string v2, "\u4e3e\u62a5"

    aput-object v2, v1, v5

    .restart local v1       #item:[Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private dealWithData()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x4

    const/4 v5, 0x0

    .line 233
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v4, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 234
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getVip_level()Ljava/lang/String;

    move-result-object v8

    const/4 v4, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 242
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    :goto_1
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 247
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    const v7, 0x7f020269

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 248
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    const v7, 0x7f0d00a3

    const v8, 0x7f0200ab

    invoke-static {v4, v7, v8}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 249
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_2
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivJianTou:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->relPersonInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 261
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvActiviTime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getCreate_time()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wanduoduo/utils/TimeShowUtils;->getStandardDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->iconTitls:[I

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_tag_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 264
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemDesc:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getIntro()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemOrder:Landroid/widget/TextView;

    const-string v4, "1"

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getPay_type()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "\u6211\u4e70\u5355"

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemSex:Landroid/widget/TextView;

    const-string v4, "0"

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getSex_invite()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "\u4e0d\u9650\u7537\u5973"

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 270
    new-instance v1, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;

    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;-><init>(Ljava/util/List;)V

    .line 271
    .local v1, itemPicAdapter:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v4, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v4, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    .end local v1           #itemPicAdapter:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;
    :goto_5
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getSign()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getSign()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 278
    :cond_1
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->relTag:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    :goto_6
    const-string v4, "1"

    iget-object v6, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_tag_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 285
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemBottom:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v6, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemPlace:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getStart_time()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getStart_time()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u51fa\u53d1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v5}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemTop:Landroid/widget/ImageView;

    const v5, 0x7f02006e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    :goto_8
    return-void

    .line 237
    :pswitch_0
    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v5

    goto/16 :goto_0

    :pswitch_1
    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v6

    goto/16 :goto_0

    :pswitch_2
    const-string v9, "3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    goto/16 :goto_0

    :pswitch_3
    const-string v9, "4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x3

    goto/16 :goto_0

    .line 238
    :pswitch_4
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020344

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 239
    :pswitch_5
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020345

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 240
    :pswitch_6
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020346

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 241
    :pswitch_7
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    const v8, 0x7f020347

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 250
    :cond_2
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 251
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    const v7, 0x7f020268

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 252
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    const v7, 0x7f0d00a3

    const v8, 0x7f0200aa

    invoke-static {v4, v7, v8}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 253
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 255
    :cond_3
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 266
    :cond_4
    const-string v4, "2"

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getPay_type()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\u6c42\u4e70\u5355"

    goto/16 :goto_3

    :cond_5
    const-string v4, "AA"

    goto/16 :goto_3

    .line 267
    :cond_6
    const-string v4, "1"

    iget-object v8, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v8}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getSex_invite()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "\u4ec5\u9650\u7537"

    goto/16 :goto_4

    :cond_7
    const-string v4, "\u4ec5\u9650\u5973"

    goto/16 :goto_4

    .line 274
    :cond_8
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v4, v11}, Lcom/wanduoduo/widget/MyGridView;->setVisibility(I)V

    goto/16 :goto_5

    .line 280
    :cond_9
    new-instance v3, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getSign()Ljava/util/List;

    move-result-object v4

    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getSign()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-array v6, v6, [Z

    aput-boolean v5, v6, v5

    invoke-direct {v3, v4, v6}, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;-><init>([Ljava/lang/String;[Z)V

    .line 281
    .local v3, onLineAppointPubTagAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvTag:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v4, v3}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_6

    .line 286
    .end local v3           #onLineAppointPubTagAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;
    :cond_a
    const-string v4, "\u4e0d\u9650\u65f6\u95f4"

    goto/16 :goto_7

    .line 291
    :cond_b
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemPlace:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2           #name:Ljava/lang/String;
    :goto_9
    iget-object v6, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getStart_time()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getStart_time()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u51fa\u53d1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 296
    .end local v0           #e:Lorg/json/JSONException;
    :cond_c
    const-string v4, "\u4e0d\u9650\u65f6\u95f4"

    goto :goto_a

    .line 237
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

.method private deleteItemAppoint()V
    .locals 3

    .prologue
    .line 195
    const-string v0, "date_del"

    invoke-direct {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->getDeteleMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$4;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 210
    return-void
.end method

.method private getDeteleMap()Ljava/util/Map;
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
    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "id"

    iget-object v2, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-object v0
.end method

.method private getMap()Ljava/util/Map;
    .locals 3
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
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    iget-object v2, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f04001e

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u968f\u5fc3\u7ea6\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    invoke-virtual {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->id:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->position:I

    .line 114
    new-instance v0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$1;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V

    .line 121
    const-string v0, "userdate"

    invoke-direct {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$2;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e2,
            0x7f0e01f7,
            0x7f0e00d9
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :sswitch_0
    iget-object v1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->alertDialog()V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 162
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    if-eqz v1, :cond_0

    .line 163
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    new-instance v2, Lio/rong/imlib/model/UserInfo;

    iget-object v3, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v5}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongIM;->setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 164
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lio/rong/imkit/RongIM;->startPrivateChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x7f0e00d9 -> :sswitch_2
        0x7f0e00e2 -> :sswitch_0
        0x7f0e01f7 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onDestroy()V

    .line 312
    return-void
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
    .line 302
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "piclist"

    iget-object v1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 304
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method
