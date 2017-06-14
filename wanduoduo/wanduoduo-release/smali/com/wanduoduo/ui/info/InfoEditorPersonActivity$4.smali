.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/DialogUtils$DialogIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->showIvRightDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public positiviButtom()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 360
    const-string v0, ""

    .line 361
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z
    invoke-static {v1}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$900(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u6b63\u5728\u53d6\u6d88\u62c9\u9ed1\u4e2d"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 363
    const-string v0, "user_unblack"

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #calls: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getBlackMap()Ljava/util/Map;
    invoke-static {v1}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$1100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 380
    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u6b63\u5728\u62c9\u9ed1\u4e2d"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 366
    const-string v0, "user_black"

    goto :goto_0
.end method
