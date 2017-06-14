.class public Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "OtherSkillsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;
    }
.end annotation


# instance fields
.field myListView:Lcom/wanduoduo/widget/MyListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0274
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 26
    const v0, 0x7f040087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;-><init>(Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$1;)V

    .line 32
    .local v0, adapter:Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;
    iget-object v1, p0, Lcom/wanduoduo/fragment/personability/OtherSkillsFragment;->myListView:Lcom/wanduoduo/widget/MyListView;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-virtual {v0}, Lcom/wanduoduo/fragment/personability/OtherSkillsFragment$OtherSkillAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method
