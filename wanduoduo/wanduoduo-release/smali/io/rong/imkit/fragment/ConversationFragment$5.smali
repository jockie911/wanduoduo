.class Lio/rong/imkit/fragment/ConversationFragment$5;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment;->showSingleSelectDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationFragment;

.field final synthetic val$groupList:Ljava/util/List;

.field final synthetic val$singleChoiceDialog:Lio/rong/imkit/widget/SingleChoiceDialog;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;Lio/rong/imkit/widget/SingleChoiceDialog;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationFragment$5;->val$singleChoiceDialog:Lio/rong/imkit/widget/SingleChoiceDialog;

    iput-object p3, p0, Lio/rong/imkit/fragment/ConversationFragment$5;->val$groupList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 244
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$5;->val$singleChoiceDialog:Lio/rong/imkit/widget/SingleChoiceDialog;

    invoke-virtual {v1}, Lio/rong/imkit/widget/SingleChoiceDialog;->getSelectItem()I

    move-result v0

    .line 245
    .local v0, selItem:I
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v3, v1, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$5;->val$groupList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/model/CSGroupItem;

    invoke-virtual {v1}, Lio/rong/imlib/model/CSGroupItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/rong/imlib/RongIMClient;->selectCustomServiceGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method
