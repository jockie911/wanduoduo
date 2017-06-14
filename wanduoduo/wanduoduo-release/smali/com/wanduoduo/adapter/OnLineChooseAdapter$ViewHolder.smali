.class Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OnLineChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/OnLineChooseAdapter;
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

.field ivIsVideo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0161
        }
    .end annotation
.end field

.field ivIsVip:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0294
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

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e5
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;

    .line 128
    .local v0, holder:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    .restart local v0       #holder:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :cond_0
    return-object v0
.end method
