.class Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InfoCouponsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field itemCouponsTvDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e029f
        }
    .end annotation
.end field

.field itemCouponsTvMoney:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e029e
        }
    .end annotation
.end field

.field itemCouponsTvPhone:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02a2
        }
    .end annotation
.end field

.field itemCouponsTvRmb:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e029d
        }
    .end annotation
.end field

.field itemCouponsTvShiyong:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02a1
        }
    .end annotation
.end field

.field itemCouponsTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02a0
        }
    .end annotation
.end field

.field itemCouponsTvYouxiaoqi:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02a3
        }
    .end annotation
.end field

.field ivPass:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02a4
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;

    .line 111
    .local v0, holder:Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 113
    .restart local v0       #holder:Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-object v0
.end method
