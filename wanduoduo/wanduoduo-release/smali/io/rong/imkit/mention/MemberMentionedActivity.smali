.class public Lio/rong/imkit/mention/MemberMentionedActivity;
.super Landroid/app/Activity;
.source "MemberMentionedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/mention/MemberMentionedActivity$PinyinComparator;,
        Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;,
        Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;,
        Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

.field private mAllMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/mention/MemberMentionedActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->requestWindowFeature(I)Z

    .line 44
    sget v6, Lio/rong/imkit/R$layout;->rc_mention_members:I

    invoke-virtual {p0, v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->setContentView(I)V

    .line 46
    sget v6, Lio/rong/imkit/R$id;->rc_edit_text:I

    invoke-virtual {p0, v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 47
    .local v4, searchBar:Landroid/widget/EditText;
    sget v6, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {p0, v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mListView:Landroid/widget/ListView;

    .line 48
    sget v6, Lio/rong/imkit/R$id;->rc_sidebar:I

    invoke-virtual {p0, v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/mention/SideBar;

    .line 49
    .local v3, mSideBar:Lio/rong/imkit/mention/SideBar;
    sget v6, Lio/rong/imkit/R$id;->rc_popup_bg:I

    invoke-virtual {p0, v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, letterPopup:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Lio/rong/imkit/mention/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 52
    new-instance v6, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    invoke-direct {v6, p0}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    iput-object v6, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    .line 53
    iget-object v6, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lio/rong/imkit/mention/MemberMentionedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "targetId"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, targetId:Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/mention/MemberMentionedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "conversationType"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 59
    .local v0, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {}, Lio/rong/imkit/mention/RongMentionManager;->getInstance()Lio/rong/imkit/mention/RongMentionManager;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/mention/RongMentionManager;->getGroupMembersProvider()Lio/rong/imkit/RongIM$IGroupMembersProvider;

    move-result-object v1

    .line 60
    .local v1, groupMembersProvider:Lio/rong/imkit/RongIM$IGroupMembersProvider;
    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 61
    new-instance v6, Lio/rong/imkit/mention/MemberMentionedActivity$1;

    invoke-direct {v6, p0}, Lio/rong/imkit/mention/MemberMentionedActivity$1;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    invoke-interface {v1, v5, v6}, Lio/rong/imkit/RongIM$IGroupMembersProvider;->getGroupMembers(Ljava/lang/String;Lio/rong/imkit/RongIM$IGroupMemberCallback;)V

    .line 131
    :cond_0
    :goto_0
    iget-object v6, p0, Lio/rong/imkit/mention/MemberMentionedActivity;->mListView:Landroid/widget/ListView;

    new-instance v7, Lio/rong/imkit/mention/MemberMentionedActivity$3;

    invoke-direct {v7, p0}, Lio/rong/imkit/mention/MemberMentionedActivity$3;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    new-instance v6, Lio/rong/imkit/mention/MemberMentionedActivity$4;

    invoke-direct {v6, p0}, Lio/rong/imkit/mention/MemberMentionedActivity$4;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    invoke-virtual {v3, v6}, Lio/rong/imkit/mention/SideBar;->setOnTouchingLetterChangedListener(Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;)V

    .line 154
    new-instance v6, Lio/rong/imkit/mention/MemberMentionedActivity$5;

    invoke-direct {v6, p0}, Lio/rong/imkit/mention/MemberMentionedActivity$5;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    sget v6, Lio/rong/imkit/R$id;->rc_btn_cancel:I

    invoke-virtual {p0, v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lio/rong/imkit/mention/MemberMentionedActivity$6;

    invoke-direct {v7, p0}, Lio/rong/imkit/mention/MemberMentionedActivity$6;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    .line 96
    :cond_1
    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    new-instance v7, Lio/rong/imkit/mention/MemberMentionedActivity$2;

    invoke-direct {v7, p0}, Lio/rong/imkit/mention/MemberMentionedActivity$2;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    invoke-virtual {v6, v5, v7}, Lio/rong/imlib/RongIMClient;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method
