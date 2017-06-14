.class Lcom/wanduoduo/fragment/InfoFragment$3;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/InfoFragment;->civAvatarClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/InfoFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/InfoFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment$3;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 281
    if-nez p2, :cond_1

    .line 282
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$3;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-virtual {v3}, Lcom/wanduoduo/fragment/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const-string v3, "\u62cd\u7167\u4e0a\u4f20"

    aput-object v3, v2, v5

    const-string v3, "\u672c\u5730\u4e0a\u4f20"

    aput-object v3, v2, v4

    .line 284
    .local v2, item:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/wanduoduo/fragment/InfoFragment$3$1;

    invoke-direct {v3, p0}, Lcom/wanduoduo/fragment/InfoFragment$3$1;-><init>(Lcom/wanduoduo/fragment/InfoFragment$3;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 302
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2           #item:[Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 303
    return-void

    .line 296
    :cond_1
    if-ne p2, v4, :cond_0

    .line 297
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$3;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$400(Lcom/wanduoduo/fragment/InfoFragment;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v1, intentAvatar:Landroid/content/Intent;
    const-string v3, "isCanEdit"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const-string v3, "user_id"

    const-string v4, "user_id"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$3;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-virtual {v3, v1}, Lcom/wanduoduo/fragment/InfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
