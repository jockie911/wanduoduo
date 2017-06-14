.class Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InfoReceiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field civAvatar:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0122
        }
    .end annotation
.end field

.field ivGift:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02aa
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

.field tvGiftName:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0299
        }
    .end annotation
.end field

.field tvItemCharm:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ab
        }
    .end annotation
.end field

.field tvNickname:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fa
        }
    .end annotation
.end field

.field tvSendTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02a9
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;

    .line 110
    .local v0, holder:Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    .restart local v0       #holder:Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-object v0
.end method
