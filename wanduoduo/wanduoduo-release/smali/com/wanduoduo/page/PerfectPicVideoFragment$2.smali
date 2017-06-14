.class Lcom/wanduoduo/page/PerfectPicVideoFragment$2;
.super Ljava/lang/Object;
.source "PerfectPicVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/page/PerfectPicVideoFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/page/PerfectPicVideoFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment$2;->this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment$2;->this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;

    #getter for: Lcom/wanduoduo/page/PerfectPicVideoFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/wanduoduo/page/PerfectPicVideoFragment;->access$000(Lcom/wanduoduo/page/PerfectPicVideoFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/index/VideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video"

    iget-object v2, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment$2;->this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;

    #getter for: Lcom/wanduoduo/page/PerfectPicVideoFragment;->picUrlOrVideoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/page/PerfectPicVideoFragment;->access$100(Lcom/wanduoduo/page/PerfectPicVideoFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment$2;->this$0:Lcom/wanduoduo/page/PerfectPicVideoFragment;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/page/PerfectPicVideoFragment;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
