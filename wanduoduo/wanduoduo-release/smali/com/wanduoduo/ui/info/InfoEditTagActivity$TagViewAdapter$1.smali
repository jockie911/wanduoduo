.class Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;
.super Ljava/lang/Object;
.source "InfoEditTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;Landroid/widget/TextView;ILandroid/view/ViewGroup;)V
    .locals 0
    .parameter "this$1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$textView:Landroid/widget/TextView;

    iput p3, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$position:I

    iput-object p4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$textView:Landroid/widget/TextView;

    #calls: Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getStringColor(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->access$000(Lcom/wanduoduo/ui/info/InfoEditTagActivity;Landroid/widget/TextView;)V

    .line 250
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->access$100(Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$position:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v0, "\u6700\u591a\u53ea\u80fd\u6dfb\u52a06\u4e2a"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->access$100(Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;->val$position:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
