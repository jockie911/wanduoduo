.class Lcom/wanduoduo/ui/info/SettingRealNameActivity$1$1;
.super Ljava/lang/Object;
.source "SettingRealNameActivity.java"

# interfaces
.implements Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1$1;->this$1:Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 1
    .parameter "exitPicPosition"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1$1;->this$1:Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    #getter for: Lcom/wanduoduo/ui/info/SettingRealNameActivity;->alreadyPicLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->access$000(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    return-void
.end method
