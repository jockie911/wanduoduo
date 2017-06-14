.class Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;
.super Ljava/lang/Object;
.source "ItemPicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/activi/ItemPicAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/index/VideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video"

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;->this$0:Lcom/wanduoduo/adapter/activi/ItemPicAdapter;

    #getter for: Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->videoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/adapter/activi/ItemPicAdapter;->access$000(Lcom/wanduoduo/adapter/activi/ItemPicAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ItemPicAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
