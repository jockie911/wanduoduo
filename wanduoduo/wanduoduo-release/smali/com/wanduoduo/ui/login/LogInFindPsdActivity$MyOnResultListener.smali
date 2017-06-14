.class Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;
.super Ljava/lang/Object;
.source "LogInFindPsdActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInFindPsdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnResultListener"
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;I)V
    .locals 0
    .parameter
    .parameter "requestCode"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p2, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->requestCode:I

    .line 226
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    const/16 v2, 0x65

    .line 239
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->requestCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v0, v2}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->requestCode:I

    if-ne v0, v2, :cond_0

    .line 242
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    const/16 v1, 0x64

    .line 230
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->requestCode:I

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->requestCode:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
