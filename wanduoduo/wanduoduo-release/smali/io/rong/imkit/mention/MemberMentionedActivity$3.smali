.class Lio/rong/imkit/mention/MemberMentionedActivity$3;
.super Ljava/lang/Object;
.source "MemberMentionedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 131
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$3;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 134
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$3;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-virtual {v1}, Lio/rong/imkit/mention/MemberMentionedActivity;->finish()V

    .line 135
    iget-object v1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$3;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v1}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->getItem(I)Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    move-result-object v0

    .line 136
    .local v0, item:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->userInfo:Lio/rong/imlib/model/UserInfo;

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lio/rong/imkit/mention/RongMentionManager;->getInstance()Lio/rong/imkit/mention/RongMentionManager;

    move-result-object v1

    iget-object v2, v0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->userInfo:Lio/rong/imlib/model/UserInfo;

    invoke-virtual {v1, v2}, Lio/rong/imkit/mention/RongMentionManager;->mentionMember(Lio/rong/imlib/model/UserInfo;)V

    .line 139
    :cond_0
    return-void
.end method
