.class Lcom/wanduoduo/ui/info/SettingItemActivity$2;
.super Ljava/lang/Object;
.source "SettingItemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingItemActivity;->alertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingItemActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingItemActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingItemActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingItemActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingItemActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u8c22\u8c22\u60a8\u7684\u53cd\u9988,\u6211\u4eec\u5c06\u53ca\u65f6\u6539\u8fdb\uff01"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 97
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/ui/info/SettingItemActivity$2$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/SettingItemActivity$2$1;-><init>(Lcom/wanduoduo/ui/info/SettingItemActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 104
    return-void
.end method
