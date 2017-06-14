.class Lcom/wanduoduo/ui/skill/PersonAbilityActivity$1;
.super Landroid/os/Handler;
.source "PersonAbilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PersonAbilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PersonAbilityActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PersonAbilityActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 124
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x22b8

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, obj:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PersonAbilityActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTagName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .end local v0           #obj:Ljava/lang/String;
    :cond_0
    return-void
.end method
