.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$6;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->initContent(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

.field final synthetic val$mData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$6;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$6;->val$mData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$6;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$6;->val$mData:Ljava/util/List;

    #calls: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->zan(ILjava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$800(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;ILjava/util/List;)V

    .line 360
    return-void
.end method
