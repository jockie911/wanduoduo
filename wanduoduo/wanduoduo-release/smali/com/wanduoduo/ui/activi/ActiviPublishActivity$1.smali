.class Lcom/wanduoduo/ui/activi/ActiviPublishActivity$1;
.super Ljava/lang/Object;
.source "ActiviPublishActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 131
    if-nez p2, :cond_1

    .line 132
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-static {v0}, Lcom/wanduoduo/utils/PhotoPicUtils;->openCamera(Landroid/app/Activity;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/PhotoPicUtils;->openPic(Landroid/app/Activity;I)V

    goto :goto_0
.end method
