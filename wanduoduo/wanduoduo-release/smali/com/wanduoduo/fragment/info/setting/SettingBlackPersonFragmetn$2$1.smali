.class Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2$1;
.super Ljava/lang/Object;
.source "SettingBlackPersonFragmetn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2$1;->this$1:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2$1;->this$1:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    #getter for: Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->adapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->access$300(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2$1;->this$1:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;

    iget v1, v1, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->removeViewAt(I)V

    .line 88
    const-string v0, "\u53d6\u6d88\u9ed1\u540d\u5355\u90a3\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 89
    return-void
.end method
