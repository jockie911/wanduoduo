.class public Lcom/wanduoduo/adapter/MainPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MainPagerAdapter.java"


# instance fields
.field private final mBaseFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .parameter "fm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/base/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, mBaseFragmentList:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/base/BaseFragment;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 20
    iput-object p2, p0, Lcom/wanduoduo/adapter/MainPagerAdapter;->mBaseFragmentList:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/adapter/MainPagerAdapter;->mBaseFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wanduoduo/adapter/MainPagerAdapter;->mBaseFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
