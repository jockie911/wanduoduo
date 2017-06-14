.class Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;
.super Ljava/lang/Object;
.source "ManageGetMoneyFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;I)V
    .locals 0
    .parameter "this$0"
    .parameter "position"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->position:I

    .line 247
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 277
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 252
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    const/4 v2, 0x0

    .line 256
    iget v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->position:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 257
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    #calls: Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->isClickableGetMoney()Z
    invoke-static {v0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->access$400(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 272
    :goto_1
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->ivClear:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 269
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    const-string v1, "#394471"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
