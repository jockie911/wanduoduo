.class Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$2;
.super Ljava/lang/Object;
.source "PlayerPerfectionItemActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$2;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 205
    if-nez p2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$2;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-static {v0}, Lcom/wanduoduo/utils/PhotoPicUtils;->openCamera(Landroid/app/Activity;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$2;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$2;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    #getter for: Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->MAX_PIC_COUNT:I
    invoke-static {v1}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->access$100(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)I

    move-result v1

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/PhotoPicUtils;->openPic(Landroid/app/Activity;I)V

    goto :goto_0
.end method
