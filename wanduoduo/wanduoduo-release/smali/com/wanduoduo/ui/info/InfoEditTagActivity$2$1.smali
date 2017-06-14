.class Lcom/wanduoduo/ui/info/InfoEditTagActivity$2$1;
.super Ljava/lang/Object;
.source "InfoEditTagActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedTagLists"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->setResult(ILandroid/content/Intent;)V

    .line 184
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->finish()V

    .line 185
    return-void
.end method
