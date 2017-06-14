.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setInitCanEidt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 287
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    #getter for: Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->access$400(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "question"

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v2, "answer"

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "questionLists"

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 291
    const-string v1, "answerLists"

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 292
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 294
    return-void
.end method
