.class Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;
.super Ljava/lang/Object;
.source "InfoQuestionItemActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRefreshListen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 174
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "questionLists"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->access$100(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 166
    const-string v1, "answerLists"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answerLists:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->access$200(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->finish()V

    .line 169
    return-void
.end method
