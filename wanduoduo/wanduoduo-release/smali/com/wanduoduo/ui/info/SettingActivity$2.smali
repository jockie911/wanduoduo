.class Lcom/wanduoduo/ui/info/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingActivity;

    #calls: Lcom/wanduoduo/ui/info/SettingActivity;->logout()V
    invoke-static {v0}, Lcom/wanduoduo/ui/info/SettingActivity;->access$000(Lcom/wanduoduo/ui/info/SettingActivity;)V

    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 60
    return-void
.end method
