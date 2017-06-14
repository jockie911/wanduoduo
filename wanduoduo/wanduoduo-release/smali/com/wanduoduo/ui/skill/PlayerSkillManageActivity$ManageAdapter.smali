.class Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayerSkillManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManageAdapter"
.end annotation


# instance fields
.field private imageRes:[I

.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;->imageRes:[I

    return-void

    :array_0
    .array-data 0x4
        0x27t 0x1t 0x2t 0x7ft
        0x26t 0x1t 0x2t 0x7ft
        0x2at 0x1t 0x2t 0x7ft
        0x28t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400a7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 158
    :cond_0
    const v1, 0x7f0e02c2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;->imageRes:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-object p2
.end method
