.class Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$4;
.super Ljava/lang/Object;
.source "PlayerSkillPerfectionActivity.java"

# interfaces
.implements Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->initPhoto()V
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
    .line 251
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$4;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 1
    .parameter "exitPicPosition"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$4;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    #getter for: Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->access$100(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 255
    return-void
.end method
