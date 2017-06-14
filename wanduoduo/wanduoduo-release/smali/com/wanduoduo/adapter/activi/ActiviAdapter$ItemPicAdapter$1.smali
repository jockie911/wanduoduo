.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;
.super Ljava/lang/Object;
.source "ActiviAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;->this$1:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/index/VideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video"

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;->this$1:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;

    #getter for: Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->videoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->access$300(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 387
    return-void
.end method
