.class Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;
.super Ljava/lang/Object;
.source "SettingMobileNumFirstActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnResultListener"
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;I)V
    .locals 0
    .parameter "this$0"
    .parameter "requestCode"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->requestCode:I

    .line 156
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    const/4 v3, 0x1

    .line 171
    iget v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->requestCode:I

    if-ne v1, v3, :cond_1

    .line 172
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->requestCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 174
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v3}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 175
    :cond_2
    iget v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->requestCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 176
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, obtain:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 178
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x3

    .line 160
    iget v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->requestCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->requestCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 163
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 164
    :cond_2
    iget v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->requestCode:I

    if-ne v0, v2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v0, v2}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
