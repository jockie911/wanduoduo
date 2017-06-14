.class Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$1;
.super Ljava/lang/Object;
.source "SettingAccoutFragmetn.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 63
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    const-class v0, Lcom/wanduoduo/bean/InfoBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBean;

    #setter for: Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1, v0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->access$002(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;

    .line 57
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 58
    return-void
.end method
