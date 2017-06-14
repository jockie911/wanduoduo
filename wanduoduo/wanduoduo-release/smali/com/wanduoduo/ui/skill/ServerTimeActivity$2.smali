.class Lcom/wanduoduo/ui/skill/ServerTimeActivity$2;
.super Ljava/lang/Object;
.source "ServerTimeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/ServerTimeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/ServerTimeActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity$2;->this$0:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity$2;->this$0:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    #calls: Lcom/wanduoduo/ui/skill/ServerTimeActivity;->makeSureBack()V
    invoke-static {v0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->access$000(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    .line 182
    return-void
.end method
