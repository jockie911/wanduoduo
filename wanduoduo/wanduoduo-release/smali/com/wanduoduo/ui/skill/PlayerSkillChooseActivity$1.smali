.class Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "PlayerSkillChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 53
    invoke-static {}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->access$100()Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    move-result-object v0

    invoke-static {}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->access$000()Lcom/wanduoduo/bean/IndexTagListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean;->getData()Lcom/wanduoduo/bean/IndexTagListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->addData(Ljava/util/List;Z)V

    .line 54
    return-void
.end method
