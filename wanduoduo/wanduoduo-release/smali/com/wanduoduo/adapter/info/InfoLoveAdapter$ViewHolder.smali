.class Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InfoLoveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/info/InfoLoveAdapter;
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

.field vBottonLine:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fe
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;

    .line 123
    .local v0, holder:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    .restart local v0       #holder:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-object v0
.end method
