.class Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$1;
.super Ljava/lang/Object;
.source "InfoReceiveGiftActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->alertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    return-void
.end method
