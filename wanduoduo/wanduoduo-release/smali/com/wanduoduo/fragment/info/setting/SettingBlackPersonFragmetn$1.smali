.class Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;
.super Ljava/lang/Object;
.source "SettingBlackPersonFragmetn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    iput p2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    #getter for: Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->adapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->access$000(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;)Landroid/widget/BaseAdapter;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    iget v3, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    .line 68
    .local v0, dataListBean:Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;
    if-nez p2, :cond_0

    .line 69
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    #getter for: Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->access$100(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "isCanEdit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    invoke-virtual {v2, v1}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->startActivity(Landroid/content/Intent;)V

    .line 76
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;

    iget v3, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;->val$position:I

    invoke-virtual {v0}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->sendRequestUnblack(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->access$200(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;ILjava/lang/String;)V

    goto :goto_0
.end method
