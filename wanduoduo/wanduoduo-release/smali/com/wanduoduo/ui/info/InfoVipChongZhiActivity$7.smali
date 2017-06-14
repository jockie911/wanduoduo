.class Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;
.super Ljava/lang/Object;
.source "InfoVipChongZhiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->alertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

.field final synthetic val$day:Ljava/lang/String;

.field final synthetic val$isSelf:Z

.field final synthetic val$needCoin:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$day:Ljava/lang/String;

    iput-object p4, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$needCoin:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$isSelf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$day:Ljava/lang/String;

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$needCoin:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$7;->val$isSelf:Z

    #calls: Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->access$400(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 133
    return-void
.end method
