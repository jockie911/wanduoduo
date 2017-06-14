.class Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;
.super Ljava/lang/Object;
.source "OnLineAppointPubTagAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

.field final synthetic val$textView:Landroid/widget/TextView;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->this$0:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    const v1, 0x7f02026e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->this$0:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    #getter for: Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->selectedTagList:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->access$000(Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 76
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    const v1, 0x7f020289

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->this$0:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    #getter for: Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->selectedTagList:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->access$000(Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
