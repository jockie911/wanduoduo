.class Lio/rong/imkit/mention/MemberMentionedActivity$1$1;
.super Ljava/lang/Object;
.source "MemberMentionedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/mention/MemberMentionedActivity$1;->onGetGroupMembersResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

.field final synthetic val$members:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/rong/imkit/mention/MemberMentionedActivity$1;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

    iput-object p2, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->val$members:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->val$members:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 69
    iget-object v5, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->val$members:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/model/UserInfo;

    .line 70
    .local v4, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    new-instance v1, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    iget-object v5, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

    iget-object v5, v5, Lio/rong/imkit/mention/MemberMentionedActivity$1;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {v1, v5, v4}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;Lio/rong/imlib/model/UserInfo;)V

    .line 72
    .local v1, memberInfo:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    const-string v3, "#"

    .line 74
    .local v3, sortString:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/tools/CharacterParser;->getInstance()Lio/rong/imkit/tools/CharacterParser;

    move-result-object v5

    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/tools/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, pinyin:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 76
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 80
    :cond_0
    const-string v5, "[A-Z]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->setLetter(Ljava/lang/String;)V

    .line 85
    :goto_1
    iget-object v5, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

    iget-object v5, v5, Lio/rong/imkit/mention/MemberMentionedActivity$1;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v5}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v1           #memberInfo:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    .end local v2           #pinyin:Ljava/lang/String;
    .end local v3           #sortString:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .restart local v1       #memberInfo:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    .restart local v2       #pinyin:Ljava/lang/String;
    .restart local v3       #sortString:Ljava/lang/String;
    :cond_2
    const-string v5, "#"

    invoke-virtual {v1, v5}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->setLetter(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v1           #memberInfo:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    .end local v2           #pinyin:Ljava/lang/String;
    .end local v3           #sortString:Ljava/lang/String;
    .end local v4           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_3
    iget-object v5, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

    iget-object v5, v5, Lio/rong/imkit/mention/MemberMentionedActivity$1;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v5}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lio/rong/imkit/mention/MemberMentionedActivity$PinyinComparator;->getInstance()Lio/rong/imkit/mention/MemberMentionedActivity$PinyinComparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    iget-object v5, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

    iget-object v5, v5, Lio/rong/imkit/mention/MemberMentionedActivity$1;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v5}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

    iget-object v6, v6, Lio/rong/imkit/mention/MemberMentionedActivity$1;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v6}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->setData(Ljava/util/List;)V

    .line 90
    iget-object v5, p0, Lio/rong/imkit/mention/MemberMentionedActivity$1$1;->this$1:Lio/rong/imkit/mention/MemberMentionedActivity$1;

    iget-object v5, v5, Lio/rong/imkit/mention/MemberMentionedActivity$1;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v5}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->notifyDataSetChanged()V

    .line 91
    return-void
.end method
