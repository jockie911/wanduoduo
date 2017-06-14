.class Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ActiviItemDiscussAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;
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

.field ivVipLevel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fb
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;

    .line 106
    .local v0, holder:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    .restart local v0       #holder:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-object v0
.end method
