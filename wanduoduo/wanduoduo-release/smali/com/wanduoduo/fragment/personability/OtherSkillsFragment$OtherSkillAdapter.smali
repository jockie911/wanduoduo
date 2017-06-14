.class Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;
.super Landroid/widget/BaseAdapter;
.source "OtherSkillsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherSkillAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;->this$0:Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;-><init>(Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400a9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    :cond_0
    return-object p2
.end method
