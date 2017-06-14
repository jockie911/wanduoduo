.class Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$3;
.super Ljava/lang/Object;
.source "PlayerSkillPerfectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 227
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$3;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v4, 0x1e0

    const/4 v3, 0x1

    .line 230
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$3;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    #getter for: Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;
    invoke-static {v1}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->access$000(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$3;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 231
    new-instance v1, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    invoke-direct {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;-><init>()V

    .line 232
    invoke-virtual {v1, v3}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->doH264Compress(Z)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v4}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->smallVideoWidth(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v4}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->smallVideoHeight(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const v2, 0xea60

    .line 235
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->recordTimeMax(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const/16 v2, 0x14

    .line 236
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->maxFrameRate(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const/16 v2, 0x8

    .line 237
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->minFrameRate(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v3}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->captureThumbnailsTime(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const/16 v2, 0x2710

    .line 239
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->recordTimeMin(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->build()Lmabeijianxi/camera/model/MediaRecorderConfig;

    move-result-object v0

    .line 241
    .local v0, config:Lmabeijianxi/camera/model/MediaRecorderConfig;
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$3;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    const-class v2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->goSmallVideoRecorder(Landroid/app/Activity;Ljava/lang/String;Lmabeijianxi/camera/model/MediaRecorderConfig;)V

    .line 243
    .end local v0           #config:Lmabeijianxi/camera/model/MediaRecorderConfig;
    :cond_0
    return-void
.end method
