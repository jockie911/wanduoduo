.class Lcom/wanduoduo/ui/info/SettingRealNameActivity$3$1;
.super Ljava/lang/Object;
.source "SettingRealNameActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;

.field final synthetic val$pics:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;Ljava/lang/String;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3$1;->this$1:Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3$1;->val$pics:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 162
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3$1;->this$1:Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3$1;->val$pics:Ljava/lang/String;

    #calls: Lcom/wanduoduo/ui/info/SettingRealNameActivity;->setSuscess(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->access$200(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Ljava/lang/String;)V

    .line 157
    return-void
.end method
