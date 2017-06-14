.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2$1;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    const-class v3, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "piclist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 235
    const-string v2, "position"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-virtual {v2, v0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method
