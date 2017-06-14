.class Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PlayerSkillChooseItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field itemTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0295
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;

    .line 69
    .local v0, holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    .restart local v0       #holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseItemAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-object v0
.end method
