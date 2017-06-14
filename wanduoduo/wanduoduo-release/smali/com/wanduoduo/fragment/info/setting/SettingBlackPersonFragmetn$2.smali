.class Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;
.super Ljava/lang/Object;
.source "SettingBlackPersonFragmetn.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->sendRequestUnblack(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    iput p2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 96
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2$1;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
