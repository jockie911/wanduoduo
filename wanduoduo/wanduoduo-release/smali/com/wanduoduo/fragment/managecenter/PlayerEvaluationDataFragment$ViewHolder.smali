.class Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
.super Ljava/lang/Object;
.source "PlayerEvaluationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field civEvalutionActor:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02c9
        }
    .end annotation
.end field

.field evalucation:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02cb
        }
    .end annotation
.end field

.field ivStar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ca
        }
    .end annotation
.end field

.field relDetailSkill:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02cc
        }
    .end annotation
.end field

.field time:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02cd
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


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 165
    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-static {p0}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;

    .line 169
    .local v0, holder:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;-><init>(Landroid/view/View;)V

    .line 171
    .restart local v0       #holder:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-object v0
.end method
