.class Lio/rong/imkit/mention/MemberMentionedActivity$4;
.super Ljava/lang/Object;
.source "MemberMentionedActivity.java"

# interfaces
.implements Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;


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
    .line 143
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$4;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 147
    iget-object v1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$4;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v1}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->getPositionForSection(I)I

    move-result v0

    .line 148
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$4;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$000(Lio/rong/imkit/mention/MemberMentionedActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 151
    :cond_0
    return-void
.end method
