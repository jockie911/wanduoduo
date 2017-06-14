.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field flDeleteSkill:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02d0
        }
    .end annotation
.end field

.field flEditSkill:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02d4
        }
    .end annotation
.end field

.field flUpDown:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02d1
        }
    .end annotation
.end field

.field itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b8
        }
    .end annotation
.end field

.field itemTvMoney:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ba
        }
    .end annotation
.end field

.field itemTvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b9
        }
    .end annotation
.end field

.field itemTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0292
        }
    .end annotation
.end field

.field tempV:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0111
        }
    .end annotation
.end field

.field tvUpDown:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02d2
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 265
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    invoke-static {p0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;

    .line 269
    .local v0, holder:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 271
    .restart local v0       #holder:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 273
    :cond_0
    return-object v0
.end method
