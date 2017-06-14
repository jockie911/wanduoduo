.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$2;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$2;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iget v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$2;->val$position:I

    #calls: Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->doWithDeleteSkill(I)V
    invoke-static {v0, v1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->access$200(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V

    .line 104
    return-void
.end method
