.class Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$MyOnRefreshListen;
.super Ljava/lang/Object;
.source "PlayerSkillChooseActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnRefreshListen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

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
    .locals 2
    .parameter "result"

    .prologue
    .line 75
    const-class v0, Lcom/wanduoduo/bean/IndexTagListBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean;

    invoke-static {v0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->access$002(Lcom/wanduoduo/bean/IndexTagListBean;)Lcom/wanduoduo/bean/IndexTagListBean;

    .line 76
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method
