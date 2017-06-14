.class public Lcom/wanduoduo/adapter/VpTableAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "VpTableAdapter.java"


# instance fields
.field private fmLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private tabTitleLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;Landroid/support/design/widget/TabLayout;)V
    .locals 3
    .parameter "fm"
    .parameter
    .parameter
    .parameter "tableLayout"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/design/widget/TabLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, fmLists:Ljava/util/List;,"Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .local p3, tabTitleLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    iput-object p2, p0, Lcom/wanduoduo/adapter/VpTableAdapter;->fmLists:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcom/wanduoduo/adapter/VpTableAdapter;->tabTitleLists:Ljava/util/List;

    .line 30
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 33
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wanduoduo/adapter/VpTableAdapter;->fmLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wanduoduo/adapter/VpTableAdapter;->fmLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wanduoduo/adapter/VpTableAdapter;->tabTitleLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/adapter/VpTableAdapter;->tabTitleLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
