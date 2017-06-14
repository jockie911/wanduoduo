.class public abstract Lio/rong/imkit/fragment/BaseSettingFragment;
.super Lio/rong/imkit/fragment/BaseFragment;
.source "BaseSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field mSettingItem:Landroid/widget/RelativeLayout;

.field mTargetId:Ljava/lang/String;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lio/rong/imkit/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method protected getSwitchBtnStatus()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mTargetId:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract initData()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    .line 63
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->setTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->setSwitchButtonEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->setSwitchBtnVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 67
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mSettingItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->initData()V

    .line 76
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->setSwitchBtnVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mSettingItem:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    .line 83
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/BaseSettingFragment;->onSettingItemClick(Landroid/view/View;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/BaseSettingFragment;->toggleSwitch(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->valueOf(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 44
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "targetId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mTargetId:Ljava/lang/String;

    .line 48
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    sget v1, Lio/rong/imkit/R$layout;->rc_fragment_base_setting:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, view:Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mTextView:Landroid/widget/TextView;

    .line 54
    sget v1, Lio/rong/imkit/R$id;->rc_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 55
    sget v1, Lio/rong/imkit/R$id;->rc_setting_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mSettingItem:Landroid/widget/RelativeLayout;

    .line 57
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lio/rong/imkit/fragment/BaseFragment;->onDestroy()V

    .line 93
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public onRestoreUI()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->initData()V

    .line 135
    return-void
.end method

.method protected abstract onSettingItemClick(Landroid/view/View;)V
.end method

.method protected setSwitchBtnStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 119
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    return-void
.end method

.method protected abstract setSwitchBtnVisibility()I
.end method

.method protected abstract setSwitchButtonEnabled()Z
.end method

.method protected abstract setTitle()Ljava/lang/String;
.end method

.method protected abstract toggleSwitch(Z)V
.end method
