.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$4;
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
    .line 253
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$4;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    return-void
.end method
