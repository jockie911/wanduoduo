.class Lcom/wanduoduo/ui/info/SettingItemActivity$2$1;
.super Ljava/lang/Object;
.source "SettingItemActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingItemActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/SettingItemActivity$2;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingItemActivity$2;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingItemActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/SettingItemActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 101
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingItemActivity$2$1;->this$1:Lcom/wanduoduo/ui/info/SettingItemActivity$2;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingItemActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingItemActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/info/SettingItemActivity;->finish()V

    .line 102
    return-void
.end method
