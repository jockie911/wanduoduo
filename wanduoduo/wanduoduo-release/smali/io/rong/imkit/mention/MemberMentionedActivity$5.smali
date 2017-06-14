.class Lio/rong/imkit/mention/MemberMentionedActivity$5;
.super Ljava/lang/Object;
.source "MemberMentionedActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/mention/MemberMentionedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/mention/MemberMentionedActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$5;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 185
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 158
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, filterDataList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lio/rong/imkit/mention/MemberMentionedActivity$5;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v4}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v0

    .line 177
    :cond_0
    invoke-static {}, Lio/rong/imkit/mention/MemberMentionedActivity$PinyinComparator;->getInstance()Lio/rong/imkit/mention/MemberMentionedActivity$PinyinComparator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    iget-object v4, p0, Lio/rong/imkit/mention/MemberMentionedActivity$5;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v4}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->setData(Ljava/util/List;)V

    .line 179
    iget-object v4, p0, Lio/rong/imkit/mention/MemberMentionedActivity$5;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v4}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->notifyDataSetChanged()V

    .line 180
    return-void

    .line 168
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v4, p0, Lio/rong/imkit/mention/MemberMentionedActivity$5;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v4}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    .line 170
    .local v2, member:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    iget-object v4, v2, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->userInfo:Lio/rong/imlib/model/UserInfo;

    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lio/rong/imkit/tools/CharacterParser;->getInstance()Lio/rong/imkit/tools/CharacterParser;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/rong/imkit/tools/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
