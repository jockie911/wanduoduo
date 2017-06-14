.class Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;
.super Ljava/lang/Object;
.source "LogInUseSmsCodeActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnResultListener"
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;I)V
    .locals 0
    .parameter "this$0"
    .parameter "requestCode"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->requestCode:I

    .line 195
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    const/4 v2, 0x1

    .line 210
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->requestCode:I

    if-ne v0, v2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 212
    :cond_0
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->requestCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v0, v2}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 214
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 199
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->requestCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->requestCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 202
    const-string v0, "login_info"

    invoke-static {v0, p1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    const-class v0, Lcom/wanduoduo/bean/InfoBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBean;

    #setter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$202(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;

    .line 204
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
