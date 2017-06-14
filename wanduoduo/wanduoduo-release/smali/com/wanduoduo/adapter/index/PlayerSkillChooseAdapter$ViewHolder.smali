.class Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PlayerSkillChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field ivPlayerSkillChoose:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02c0
        }
    .end annotation
.end field

.field mgvPlayerSkillChoose:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02c1
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;

    .line 100
    .local v0, holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 102
    .restart local v0       #holder:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-object v0
.end method
