.class Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;
.super Ljava/lang/Object;
.source "InfoEditContentItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;I)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;

    iput p2, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "career"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->mData:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->access$000(Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;->val$i:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->finish()V

    .line 147
    return-void
.end method
