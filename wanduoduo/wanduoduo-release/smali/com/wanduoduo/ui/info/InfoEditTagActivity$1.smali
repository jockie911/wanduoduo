.class Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;
.super Ljava/lang/Object;
.source "InfoEditTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditTagActivity;->addNewTagTextViewToContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->llNewTag:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 141
    return-void
.end method
