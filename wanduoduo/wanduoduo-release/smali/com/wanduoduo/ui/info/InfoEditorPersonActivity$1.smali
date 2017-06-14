.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$1;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getGiftList()V
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
    .line 155
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 165
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    const-class v0, Lcom/wanduoduo/bean/AllGiftListBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/AllGiftListBean;

    #setter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->allGiftListBean:Lcom/wanduoduo/bean/AllGiftListBean;
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$002(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Lcom/wanduoduo/bean/AllGiftListBean;)Lcom/wanduoduo/bean/AllGiftListBean;

    .line 160
    return-void
.end method
