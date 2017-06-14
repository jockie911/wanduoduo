.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$4;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->downAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$4;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 161
    return-void
.end method
