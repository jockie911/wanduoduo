.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

.field final synthetic val$dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;->val$dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    iput p3, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;->val$dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;->val$position:I

    #calls: Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->upDownSkill(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->access$100(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;Ljava/lang/String;I)V

    .line 94
    return-void
.end method
