.class Lio/rong/imkit/widget/provider/TextInputProvider$4;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "TextInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/TextInputProvider;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/TextInputProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/TextInputProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$4;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 192
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/TextInputProvider$4;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 178
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$4;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v1, :cond_1

    .line 179
    const-string v1, "TextInputProvider"

    const-string v2, "inputView is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$4;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 183
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$4;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    const/4 v2, 0x0

    #setter for: Lio/rong/imkit/widget/provider/TextInputProvider;->flag:Z
    invoke-static {v1, v2}, Lio/rong/imkit/widget/provider/TextInputProvider;->access$002(Lio/rong/imkit/widget/provider/TextInputProvider;Z)Z

    .line 185
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
