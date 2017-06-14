.class Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;
.super Ljava/lang/Object;
.source "SelectServerTimeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

.field final synthetic val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

.field final synthetic val$i:I

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "this$1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    iput-object p2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iput-object p3, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 372
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    iget v1, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$i:I

    #calls: Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->isExist(I)Z
    invoke-static {v0, v1}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->access$400(Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "\u8bf7\u9009\u62e9\u8fde\u7eed\u65f6\u95f4"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->notifyDataSetChanged()V

    .line 386
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 383
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->this$1:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    iget-object v0, v0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
