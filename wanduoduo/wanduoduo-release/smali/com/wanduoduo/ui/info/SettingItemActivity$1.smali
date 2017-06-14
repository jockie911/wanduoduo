.class Lcom/wanduoduo/ui/info/SettingItemActivity$1;
.super Ljava/lang/Object;
.source "SettingItemActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingItemActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingItemActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingItemActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingItemActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 82
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingItemActivity;

    #calls: Lcom/wanduoduo/ui/info/SettingItemActivity;->alertDialog()V
    invoke-static {v0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->access$000(Lcom/wanduoduo/ui/info/SettingItemActivity;)V

    .line 77
    return-void
.end method
