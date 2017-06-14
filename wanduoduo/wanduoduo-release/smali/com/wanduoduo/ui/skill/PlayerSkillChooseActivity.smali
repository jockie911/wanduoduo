.class public Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PlayerSkillChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$MyOnRefreshListen;
    }
.end annotation


# static fields
.field private static adapter:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

.field private static indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;


# instance fields
.field lvPlayerSkill:Landroid/widget/ListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01b3
        }
    .end annotation
.end field

.field myHandler:Lcom/wanduoduo/widget/MyHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$1;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/wanduoduo/bean/IndexTagListBean;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/bean/IndexTagListBean;)Lcom/wanduoduo/bean/IndexTagListBean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput-object p0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->indexTagListBean:Lcom/wanduoduo/bean/IndexTagListBean;

    return-object p0
.end method

.method static synthetic access$100()Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->adapter:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f04004a

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;)V

    sput-object v0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->adapter:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    .line 37
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->lvPlayerSkill:Landroid/widget/ListView;

    sget-object v1, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->adapter:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    const-string v0, "tag_list"

    const/4 v1, 0x0

    new-instance v2, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$MyOnRefreshListen;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 39
    return-void
.end method

.method public isStartByOthers()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01b4
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 62
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "\u5176\u4ed6"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "tag_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "type"

    const/16 v2, 0x271a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x7f0e01b4
        :pswitch_0
    .end packed-switch
.end method
