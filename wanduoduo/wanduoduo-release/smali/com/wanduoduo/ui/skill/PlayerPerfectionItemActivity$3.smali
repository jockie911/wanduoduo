.class Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$3;
.super Ljava/lang/Object;
.source "PlayerPerfectionItemActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$3;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 276
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$3;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->finish()V

    .line 277
    return-void
.end method
