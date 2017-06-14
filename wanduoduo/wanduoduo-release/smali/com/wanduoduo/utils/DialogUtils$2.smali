.class final Lcom/wanduoduo/utils/DialogUtils$2;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/utils/DialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/wanduoduo/utils/DialogUtils$DialogIF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$df:Lcom/wanduoduo/utils/DialogUtils$DialogIF;


# direct methods
.method constructor <init>(Lcom/wanduoduo/utils/DialogUtils$DialogIF;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wanduoduo/utils/DialogUtils$2;->val$df:Lcom/wanduoduo/utils/DialogUtils$DialogIF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wanduoduo/utils/DialogUtils$2;->val$df:Lcom/wanduoduo/utils/DialogUtils$DialogIF;

    invoke-interface {v0}, Lcom/wanduoduo/utils/DialogUtils$DialogIF;->positiviButtom()V

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    return-void
.end method
