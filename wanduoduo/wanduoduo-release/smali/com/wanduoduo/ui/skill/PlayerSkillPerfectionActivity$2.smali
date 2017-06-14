.class Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$2;
.super Ljava/lang/Object;
.source "PlayerSkillPerfectionActivity.java"

# interfaces
.implements Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$2;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$2;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 220
    return-void
.end method
