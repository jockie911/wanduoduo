.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$1;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
    .locals 2
    .parameter "infoBean"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myNickname:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->access$102(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    return-void
.end method
