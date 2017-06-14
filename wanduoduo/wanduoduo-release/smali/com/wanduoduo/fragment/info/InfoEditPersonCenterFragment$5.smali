.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->invateUpLoadPic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 240
    const-string v0, "send_message"

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    #calls: Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getInvatePicMap()Ljava/util/Map;
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->access$200(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5$1;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    return-void
.end method
