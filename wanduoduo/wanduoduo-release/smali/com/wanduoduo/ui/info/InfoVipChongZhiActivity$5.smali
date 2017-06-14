.class Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$5;
.super Ljava/lang/Object;
.source "InfoVipChongZhiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->alertDialogPayCoin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$5;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$5;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$5;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    const-class v3, Lcom/wanduoduo/ui/info/PlayCoinActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 107
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$5;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->finish()V

    .line 108
    return-void
.end method
