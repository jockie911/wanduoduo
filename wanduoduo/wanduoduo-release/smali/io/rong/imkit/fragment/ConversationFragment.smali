.class public Lio/rong/imkit/fragment/ConversationFragment;
.super Lio/rong/imkit/fragment/DispatchResultFragment;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationFragment"


# instance fields
.field private committing:Z

.field customServiceListener:Lio/rong/imlib/ICustomServiceListener;

.field private enterTime:J

.field private evaluate:Z

.field private inputBoardListener:Lio/rong/imkit/widget/InputView$IInputBoardListener;

.field mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

.field private mCustomUserInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

.field mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

.field mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

.field mTargetId:Ljava/lang/String;

.field private onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

.field private resolved:Z

.field private robotType:Z

.field private source:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;-><init>()V

    .line 258
    iput-boolean v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->robotType:Z

    .line 259
    iput v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->source:I

    .line 260
    iput-boolean v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->resolved:Z

    .line 261
    iput-boolean v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->committing:Z

    .line 263
    iput-boolean v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->evaluate:Z

    .line 265
    new-instance v0, Lio/rong/imkit/fragment/ConversationFragment$7;

    invoke-direct {v0, p0}, Lio/rong/imkit/fragment/ConversationFragment$7;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/ConversationFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/rong/imkit/fragment/ConversationFragment;->csWarning(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/fragment/ConversationFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->evaluate:Z

    return v0
.end method

.method static synthetic access$102(Lio/rong/imkit/fragment/ConversationFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->evaluate:Z

    return p1
.end method

.method static synthetic access$200(Lio/rong/imkit/fragment/ConversationFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->robotType:Z

    return v0
.end method

.method static synthetic access$202(Lio/rong/imkit/fragment/ConversationFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->robotType:Z

    return p1
.end method

.method static synthetic access$300(Lio/rong/imkit/fragment/ConversationFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->committing:Z

    return v0
.end method

.method static synthetic access$302(Lio/rong/imkit/fragment/ConversationFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->committing:Z

    return p1
.end method

.method static synthetic access$400(Lio/rong/imkit/fragment/ConversationFragment;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/rong/imkit/fragment/ConversationFragment;->showSingleSelectDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lio/rong/imkit/fragment/ConversationFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->resolved:Z

    return v0
.end method

.method static synthetic access$502(Lio/rong/imkit/fragment/ConversationFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->resolved:Z

    return p1
.end method

.method static synthetic access$600(Lio/rong/imkit/fragment/ConversationFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->source:I

    return v0
.end method

.method static synthetic access$602(Lio/rong/imkit/fragment/ConversationFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->source:I

    return p1
.end method

.method private csWarning(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 391
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 415
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 397
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 398
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 399
    .local v3, window:Landroid/view/Window;
    sget v4, Lio/rong/imkit/R$layout;->rc_cs_alert_warning:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setContentView(I)V

    .line 400
    sget v4, Lio/rong/imkit/R$id;->rc_cs_msg:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 401
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    sget v4, Lio/rong/imkit/R$id;->rc_btn_ok:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/fragment/ConversationFragment$9;

    invoke-direct {v5, p0, v0}, Lio/rong/imkit/fragment/ConversationFragment$9;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private showSingleSelectDialog(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/CSGroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, groupList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/CSGroupItem;>;"
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 256
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v2, singleDataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 231
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/CSGroupItem;

    invoke-virtual {v3}, Lio/rong/imlib/model/CSGroupItem;->getOnline()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/CSGroupItem;

    invoke-virtual {v3}, Lio/rong/imlib/model/CSGroupItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 236
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lio/rong/imlib/RongIMClient;->selectCustomServiceGroup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    new-instance v1, Lio/rong/imkit/widget/SingleChoiceDialog;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/rong/imkit/widget/SingleChoiceDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 240
    .local v1, singleChoiceDialog:Lio/rong/imkit/widget/SingleChoiceDialog;
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_cs_select_group:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->setTitle(Ljava/lang/String;)V

    .line 241
    new-instance v3, Lio/rong/imkit/fragment/ConversationFragment$5;

    invoke-direct {v3, p0, v1, p1}, Lio/rong/imkit/fragment/ConversationFragment$5;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Lio/rong/imkit/widget/SingleChoiceDialog;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->setOnOKButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 249
    new-instance v3, Lio/rong/imkit/fragment/ConversationFragment$6;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/ConversationFragment$6;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v1, v3}, Lio/rong/imkit/widget/SingleChoiceDialog;->setOnCancelButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 255
    invoke-virtual {v1}, Lio/rong/imkit/widget/SingleChoiceDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x1

    .line 110
    const-string v6, "ConversationFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz p1, :cond_7

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, typeStr:Ljava/lang/String;
    invoke-static {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->valueOf(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 114
    const-string v6, "targetId"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    .line 115
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 119
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "customServiceInfo"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lio/rong/imlib/model/CSCustomServiceInfo;

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCustomUserInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    .line 122
    :cond_0
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    invoke-static {v6, v7}, Lio/rong/imkit/model/ConversationInfo;->obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imkit/model/ConversationInfo;

    move-result-object v6

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

    .line 123
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->registerConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V

    .line 125
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/fragment/MessageListFragment;

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

    .line 126
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const v7, 0x1020017

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/fragment/MessageInputFragment;

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    .line 128
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

    if-nez v6, :cond_1

    .line 129
    new-instance v6, Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {v6}, Lio/rong/imkit/fragment/MessageListFragment;-><init>()V

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

    .line 132
    :cond_1
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    if-nez v6, :cond_2

    .line 133
    new-instance v6, Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-direct {v6}, Lio/rong/imkit/fragment/MessageInputFragment;-><init>()V

    iput-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    .line 136
    :cond_2
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v6}, Lio/rong/imkit/fragment/MessageListFragment;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_3

    .line 137
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v6, p1}, Lio/rong/imkit/fragment/MessageListFragment;->setUri(Landroid/net/Uri;)V

    .line 140
    :cond_3
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v6}, Lio/rong/imkit/fragment/MessageInputFragment;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_4

    .line 141
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v6, p1}, Lio/rong/imkit/fragment/MessageInputFragment;->setUri(Landroid/net/Uri;)V

    .line 144
    :cond_4
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v6, p0}, Lio/rong/imkit/fragment/MessageListFragment;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 146
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 147
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "createIfNotExist"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 148
    .local v0, createIfNotExist:Z
    :goto_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$integer;->rc_chatroom_first_pull_message_count:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 149
    .local v4, pullCount:I
    if-eqz v0, :cond_9

    .line 150
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    new-instance v8, Lio/rong/imkit/fragment/ConversationFragment$1;

    invoke-direct {v8, p0}, Lio/rong/imkit/fragment/ConversationFragment$1;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v6, v7, v4, v8}, Lio/rong/imlib/RongIMClient;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 212
    .end local v0           #createIfNotExist:Z
    .end local v4           #pullCount:I
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$bool;->rc_enable_mentioned_message:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 215
    :cond_6
    invoke-static {}, Lio/rong/imkit/mention/RongMentionManager;->getInstance()Lio/rong/imkit/mention/RongMentionManager;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v9}, Lio/rong/imkit/fragment/MessageListFragment;->getAdapter()Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-result-object v9

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v10}, Lio/rong/imkit/fragment/MessageInputFragment;->getMentionInputProvider()Lio/rong/imkit/widget/provider/TextInputProvider;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lio/rong/imkit/mention/RongMentionManager;->createInstance(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imkit/widget/adapter/BaseAdapter;Lio/rong/imkit/widget/provider/TextInputProvider;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v5           #typeStr:Ljava/lang/String;
    :cond_7
    :goto_2
    return-void

    .line 147
    .restart local v5       #typeStr:Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    .restart local v0       #createIfNotExist:Z
    .restart local v4       #pullCount:I
    :cond_9
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    new-instance v8, Lio/rong/imkit/fragment/ConversationFragment$2;

    invoke-direct {v8, p0}, Lio/rong/imkit/fragment/ConversationFragment$2;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v6, v7, v4, v8}, Lio/rong/imlib/RongIMClient;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    goto :goto_1

    .line 179
    .end local v0           #createIfNotExist:Z
    .end local v4           #pullCount:I
    :cond_a
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v6, v7, :cond_b

    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v6, v7, :cond_c

    .line 181
    :cond_b
    new-instance v3, Lio/rong/message/PublicServiceCommandMessage;

    invoke-direct {v3}, Lio/rong/message/PublicServiceCommandMessage;-><init>()V

    .line 182
    .local v3, msg:Lio/rong/message/PublicServiceCommandMessage;
    sget-object v6, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Entry:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    invoke-virtual {v6}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/message/PublicServiceCommandMessage;->setCommand(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v6, v7, v3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 184
    .local v2, message:Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    new-instance v7, Lio/rong/imkit/fragment/ConversationFragment$3;

    invoke-direct {v7, p0}, Lio/rong/imkit/fragment/ConversationFragment$3;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v6, v2, v9, v9, v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    goto :goto_1

    .line 200
    .end local v2           #message:Lio/rong/imlib/model/Message;
    .end local v3           #msg:Lio/rong/message/PublicServiceCommandMessage;
    :cond_c
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->enterTime:J

    .line 202
    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    new-instance v7, Lio/rong/imkit/fragment/ConversationFragment$4;

    invoke-direct {v7, p0}, Lio/rong/imkit/fragment/ConversationFragment$4;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v6, v7}, Lio/rong/imkit/fragment/MessageInputFragment;->setOnRobotSwitcherListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationFragment;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCustomUserInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v6, v7, v8, v9}, Lio/rong/imlib/RongIMClient;->startCustomService(Ljava/lang/String;Lio/rong/imlib/ICustomServiceListener;Lio/rong/imlib/model/CSCustomServiceInfo;)V

    goto/16 :goto_1

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "ConversationFragment"

    const-string v7, "Resource not found!"

    invoke-static {v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const-string v1, ""

    iget-boolean v2, p0, Lio/rong/imkit/fragment/ConversationFragment;->robotType:Z

    iget-boolean v3, p0, Lio/rong/imkit/fragment/ConversationFragment;->evaluate:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/rong/imkit/fragment/ConversationFragment;->onCustomServiceEvaluation(ZLjava/lang/String;ZZ)Z

    move-result v0

    .line 382
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/DispatchResultFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/rong/push/RongPushClient;->clearAllPushNotifications(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 70
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_conversation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onCustomServiceEvaluation(ZLjava/lang/String;ZZ)Z
    .locals 20
    .parameter "isPullEva"
    .parameter "dialogId"
    .parameter "robotType"
    .parameter "evaluate"

    .prologue
    .line 466
    if-nez p4, :cond_0

    .line 467
    const/16 v16, 0x0

    .line 593
    :goto_0
    return v16

    .line 469
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    if-nez v16, :cond_1

    .line 470
    const/16 v16, 0x0

    goto :goto_0

    .line 472
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 473
    .local v8, currentTime:J
    const/16 v13, 0x3c

    .line 475
    .local v13, interval:I
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lio/rong/imkit/R$integer;->rc_custom_service_evaluation_interval:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 479
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/rong/imkit/fragment/ConversationFragment;->enterTime:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    mul-int/lit16 v0, v13, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gez v16, :cond_4

    if-nez p1, :cond_4

    .line 480
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const-string v17, "input_method"

    invoke-virtual/range {v16 .. v17}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    .line 481
    .local v12, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 482
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 483
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 486
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    .line 487
    .local v10, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v16

    if-lez v16, :cond_3

    .line 488
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 493
    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 476
    .end local v10           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v12           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v7

    .line 477
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 490
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v10       #fm:Landroid/support/v4/app/FragmentManager;
    .restart local v12       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_2

    .line 495
    .end local v10           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v12           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lio/rong/imkit/fragment/ConversationFragment;->committing:Z

    .line 496
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 498
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 499
    .local v4, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 500
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 501
    .local v15, window:Landroid/view/Window;
    if-eqz p3, :cond_6

    .line 502
    sget v16, Lio/rong/imkit/R$layout;->rc_cs_alert_robot_evaluation:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setContentView(I)V

    .line 503
    sget v16, Lio/rong/imkit/R$id;->rc_cs_yes_no:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 504
    .local v14, linearLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/rong/imkit/fragment/ConversationFragment;->resolved:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 505
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setSelected(Z)V

    .line 506
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setSelected(Z)V

    .line 511
    :goto_3
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_8

    .line 512
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 513
    .local v6, child:Landroid/view/View;
    new-instance v16, Lio/rong/imkit/fragment/ConversationFragment$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lio/rong/imkit/fragment/ConversationFragment$11;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 508
    .end local v6           #child:Landroid/view/View;
    .end local v11           #i:I
    :cond_5
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setSelected(Z)V

    .line 509
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    .line 529
    .end local v14           #linearLayout:Landroid/widget/LinearLayout;
    :cond_6
    sget v16, Lio/rong/imkit/R$layout;->rc_cs_alert_human_evaluation:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setContentView(I)V

    .line 530
    sget v16, Lio/rong/imkit/R$id;->rc_cs_stars:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 531
    .restart local v14       #linearLayout:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_8

    .line 532
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 533
    .restart local v6       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/imkit/fragment/ConversationFragment;->source:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_7

    .line 534
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V

    .line 536
    :cond_7
    new-instance v16, Lio/rong/imkit/fragment/ConversationFragment$12;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lio/rong/imkit/fragment/ConversationFragment$12;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 559
    .end local v6           #child:Landroid/view/View;
    :cond_8
    sget v16, Lio/rong/imkit/R$id;->rc_btn_cancel:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lio/rong/imkit/fragment/ConversationFragment$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lio/rong/imkit/fragment/ConversationFragment$13;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/app/AlertDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    sget v16, Lio/rong/imkit/R$id;->rc_btn_ok:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lio/rong/imkit/fragment/ConversationFragment$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lio/rong/imkit/fragment/ConversationFragment$14;-><init>(Lio/rong/imkit/fragment/ConversationFragment;ZLjava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public onCustomServiceWarning(Ljava/lang/String;Z)V
    .locals 6
    .parameter "msg"
    .parameter "evaluate"

    .prologue
    .line 425
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 451
    :goto_0
    return-void

    .line 427
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 430
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 432
    .local v3, window:Landroid/view/Window;
    sget v4, Lio/rong/imkit/R$layout;->rc_cs_alert_warning:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setContentView(I)V

    .line 433
    sget v4, Lio/rong/imkit/R$id;->rc_cs_msg:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 434
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    sget v4, Lio/rong/imkit/R$id;->rc_btn_ok:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/fragment/ConversationFragment$10;

    invoke-direct {v5, p0, v0, p2}, Lio/rong/imkit/fragment/ConversationFragment$10;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/app/AlertDialog;Z)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 337
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/rong/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 339
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {}, Lio/rong/imkit/manager/SendImageManager;->getInstance()Lio/rong/imkit/manager/SendImageManager;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/manager/SendImageManager;->cancelSendingImages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    new-instance v4, Lio/rong/imkit/fragment/ConversationFragment$8;

    invoke-direct {v4, p0}, Lio/rong/imkit/fragment/ConversationFragment$8;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/RongIM;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 352
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    const/4 v1, 0x1

    .line 355
    .local v1, needToQuit:Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_stop_custom_service_when_quit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 359
    :goto_0
    if-eqz v1, :cond_1

    .line 360
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient;->stopCustomService(Ljava/lang/String;)V

    .line 363
    .end local v1           #needToQuit:Z
    :cond_1
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/manager/AudioPlayManager;->stopPlay()V

    .line 364
    invoke-static {}, Lio/rong/imkit/manager/AudioRecordManager;->getInstance()Lio/rong/imkit/manager/AudioRecordManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/manager/AudioRecordManager;->stopRecord()V

    .line 366
    :try_start_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_enable_mentioned_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    :cond_2
    invoke-static {}, Lio/rong/imkit/mention/RongMentionManager;->getInstance()Lio/rong/imkit/mention/RongMentionManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/mention/RongMentionManager;->destroyInstance()V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :cond_3
    :goto_1
    invoke-super {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->onDestroy()V

    .line 375
    return-void

    .line 356
    .restart local v1       #needToQuit:Z
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #needToQuit:Z
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->unregisterConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V

    .line 332
    invoke-super {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->onDestroyView()V

    .line 333
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/rong/push/RongPushClient;->clearAllPushNotifications(Landroid/content/Context;)V

    .line 87
    invoke-super {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->onResume()V

    .line 88
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 82
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/DispatchResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 322
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/fragment/MessageInputFragment;

    iput-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    .line 323
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/MessageInputFragment;->setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V

    .line 325
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->inputBoardListener:Lio/rong/imkit/widget/InputView$IInputBoardListener;

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/MessageInputFragment;->setInputBoardListener(Lio/rong/imkit/widget/InputView$IInputBoardListener;)V

    .line 327
    :cond_0
    return-void
.end method

.method public setInputBoardListener(Lio/rong/imkit/widget/InputView$IInputBoardListener;)V
    .locals 1
    .parameter "inputBoardListener"

    .prologue
    .line 102
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->inputBoardListener:Lio/rong/imkit/widget/InputView$IInputBoardListener;

    .line 103
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v0, p1}, Lio/rong/imkit/fragment/MessageInputFragment;->setInputBoardListener(Lio/rong/imkit/widget/InputView$IInputBoardListener;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V
    .locals 1
    .parameter "onInfoButtonClick"

    .prologue
    .line 94
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    .line 96
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v0, p1}, Lio/rong/imkit/fragment/MessageInputFragment;->setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V

    .line 99
    :cond_0
    return-void
.end method
