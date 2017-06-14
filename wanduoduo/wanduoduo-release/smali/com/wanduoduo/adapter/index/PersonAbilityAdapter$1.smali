.class Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$1;
.super Ljava/lang/Object;
.source "PersonAbilityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const-string v2, "piclist"

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;->giftLists:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 63
    const-string v1, "position"

    iget v2, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$1;->val$position:I

    iget-object v3, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;

    iget-object v3, v3, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;->videoLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
