.class Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppointmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field ivAvctor:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f7
        }
    .end annotation
.end field

.field ivItemPic:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b5
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

.field ivVipLevel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fb
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

.field tvAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fe
        }
    .end annotation
.end field

.field tvItemCreateTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b6
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

.field tvItemPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d6
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

.field tvVisitTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fc
        }
    .end annotation
.end field

.field tvitemTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d8
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-static {p0}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;

    .line 201
    .local v0, holder:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 203
    .restart local v0       #holder:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-object v0
.end method
