.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$9;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$9;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 559
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$9;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 554
    return-void
.end method
