.class Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;
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

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;->this$0:Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;->val$container:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/index/VideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "video"

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;->this$0:Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;->videoLists:Ljava/util/List;

    iget v3, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter$2;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
