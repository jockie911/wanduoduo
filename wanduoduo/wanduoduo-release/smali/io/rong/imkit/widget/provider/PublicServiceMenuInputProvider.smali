.class public Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.source "PublicServiceMenuInputProvider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;
    }
.end annotation


# instance fields
.field conversation:Lio/rong/imlib/model/Conversation;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 43
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Lio/rong/imlib/model/PublicServiceMenuItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->onMenuItemSelect(Lio/rong/imlib/model/PublicServiceMenuItem;)V

    return-void
.end method

.method private onMenuItemSelect(Lio/rong/imlib/model/PublicServiceMenuItem;)V
    .locals 10
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceMenuItem;->getType()Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->View:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getPublicServiceMenuClickListener()Lio/rong/imkit/IPublicServiceMenuClickListener;

    move-result-object v9

    .line 108
    .local v9, menuClickListener:Lio/rong/imkit/IPublicServiceMenuClickListener;
    if-eqz v9, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1, p1}, Lio/rong/imkit/IPublicServiceMenuClickListener;->onClick(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/PublicServiceMenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    const-string v7, "io.rong.imkit.intent.action.webview"

    .line 110
    .local v7, action:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v8, intent:Landroid/content/Intent;
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/high16 v0, 0x1000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    const-string v0, "url"

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v7           #action:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #menuClickListener:Lio/rong/imkit/IPublicServiceMenuClickListener;
    :cond_1
    invoke-static {p1}, Lio/rong/message/PublicServiceCommandMessage;->obtain(Lio/rong/imlib/model/PublicServiceMenuItem;)Lio/rong/message/PublicServiceCommandMessage;

    move-result-object v3

    .line 119
    .local v3, msg:Lio/rong/message/PublicServiceCommandMessage;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$2;

    invoke-direct {v6, p0}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$2;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    .line 137
    return-void
.end method


# virtual methods
.method public obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActive(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
    .locals 13
    .parameter "inflater"
    .parameter "parent"
    .parameter "inputView"

    .prologue
    .line 54
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v10

    iput-object v10, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    .line 55
    iget-object v10, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-static {v10, v11}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v5

    .line 56
    .local v5, key:Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v5}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v1

    .line 58
    .local v1, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-nez v1, :cond_1

    .line 92
    :cond_0
    return-object p2

    .line 61
    :cond_1
    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getMenu()Lio/rong/imlib/model/PublicServiceMenu;

    move-result-object v8

    .line 62
    .local v8, menu:Lio/rong/imlib/model/PublicServiceMenu;
    invoke-virtual {v8}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 63
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceMenuItem;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/PublicServiceMenuItem;

    .line 68
    .local v2, item:Lio/rong/imlib/model/PublicServiceMenuItem;
    sget v10, Lio/rong/imkit/R$layout;->rc_item_public_service_input_menu:I

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 69
    .local v6, layout:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v12, 0x3f80

    invoke-direct {v7, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 70
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    sget v10, Lio/rong/imkit/R$id;->rc_title:I

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 73
    .local v9, title:Landroid/widget/TextView;
    invoke-virtual {v2}, Lio/rong/imlib/model/PublicServiceMenuItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v10, Lio/rong/imkit/R$id;->rc_icon:I

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 75
    .local v4, iv:Landroid/widget/ImageView;
    invoke-virtual {v2}, Lio/rong/imlib/model/PublicServiceMenuItem;->getSubMenuItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 76
    iget-object v10, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$drawable;->rc_ic_trangle:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_2
    new-instance v10, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;

    invoke-direct {v10, p0, v2}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Lio/rong/imlib/model/PublicServiceMenuItem;)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInactive(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 103
    return-void
.end method

.method public onSwitch(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 212
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method
