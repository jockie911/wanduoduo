.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$5;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$5;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$5;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iget v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$5;->val$position:I

    const/4 v2, 0x0

    #calls: Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->downSkill(IZ)V
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->access$400(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;IZ)V

    .line 155
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    return-void
.end method
