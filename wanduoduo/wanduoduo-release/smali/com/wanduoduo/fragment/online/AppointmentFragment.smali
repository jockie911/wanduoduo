.class public Lcom/wanduoduo/fragment/online/AppointmentFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "AppointmentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ON_LINE_CHOOSE:I = 0x1

.field private static final PUBLISH_APPOINTMENT:I = 0x1


# instance fields
.field hzlv:Lcom/wanduoduo/widget/HorizontalListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0272
        }
    .end annotation
.end field

.field iv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0273
        }
    .end annotation
.end field

.field ivLeftTitleBar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e1
        }
    .end annotation
.end field

.field private onLinePopPubAppointAdapter:Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;

.field private selectedBeanLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/OnLineSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ee
        }
    .end annotation
.end field

.field private window:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/wanduoduo/fragment/online/AppointmentFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->beforeSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/online/AppointmentFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/wanduoduo/fragment/online/AppointmentFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/wanduoduo/fragment/online/AppointmentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->dealWithFragment()V

    return-void
.end method

.method private getSelectedBeanLists()V
    .locals 3

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->selectedBeanLists:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->selectedBeanLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-direct {v2}, Lcom/wanduoduo/bean/OnLineSelectBean;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private setHzlv()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;-><init>()V

    .line 80
    .local v0, onLineAppointmentHZLVAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->hzlv:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->hzlv:Lcom/wanduoduo/widget/HorizontalListView;

    new-instance v2, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;-><init>(Lcom/wanduoduo/fragment/online/AppointmentFragment;Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;)V

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-super {p0}, Lcom/wanduoduo/base/BaseFragment;->getFragment()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 56
    const v0, 0x7f040086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->ivLeftTitleBar:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u968f\u5fc3\u7ea6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u7b5b\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->dealWithFragment()V

    .line 67
    invoke-direct {p0}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->getSelectedBeanLists()V

    .line 68
    invoke-direct {p0}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->setHzlv()V

    .line 69
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 138
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 139
    iget-object v2, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->selectedBeanLists:Ljava/util/List;

    iget v3, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I

    const-string v1, "onLineSelectBean"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mFragment:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;

    .line 141
    .local v0, fragment:Lcom/wanduoduo/fragment/online/AppointmentItemFragment;
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->selectedBeanLists:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->setSortResult(Lcom/wanduoduo/bean/OnLineSelectBean;)V

    .line 143
    .end local v0           #fragment:Lcom/wanduoduo/fragment/online/AppointmentItemFragment;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e0273
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0e01ef

    if-ne v5, v6, :cond_1

    .line 96
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mContext:Landroid/content/Context;

    const-class v6, Lcom/wanduoduo/ui/online/OnLineChooseActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "onLineSelectBean"

    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->selectedBeanLists:Ljava/util/List;

    iget v7, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const-string v5, "type"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v1, v9}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0e0273

    if-ne v5, v6, :cond_0

    .line 101
    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const v7, 0x7f0400c8

    invoke-static {v5, v6, v7}, Lcom/wanduoduo/utils/PopWindowUtils;->getWindow(Landroid/content/Context;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v5

    iput-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->window:Landroid/widget/PopupWindow;

    .line 102
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 103
    .local v4, windowManager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 104
    .local v3, width:I
    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->window:Landroid/widget/PopupWindow;

    add-int/lit8 v6, v3, -0x64

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 105
    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->window:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->iv:Landroid/widget/ImageView;

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 106
    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, v:Landroid/view/View;
    const v5, 0x7f0e030a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 108
    .local v0, gvPuv:Landroid/widget/GridView;
    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->onLinePopPubAppointAdapter:Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;

    if-nez v5, :cond_2

    .line 109
    new-instance v5, Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;

    invoke-direct {v5}, Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;-><init>()V

    iput-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->onLinePopPubAppointAdapter:Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;

    .line 110
    :cond_2
    iget-object v5, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->onLinePopPubAppointAdapter:Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->window:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 122
    :cond_0
    return-void
.end method
