.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$2;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDiscussPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$2;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 150
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$2;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method
