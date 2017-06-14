.class public Lio/rong/imkit/widget/provider/TextInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.source "TextInputProvider.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextInputProvider"


# instance fields
.field private flag:Z

.field volatile mInputView:Lio/rong/imkit/widget/InputView;

.field private mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->flag:Z

    .line 65
    const-string v0, "TextInputProvider"

    const-string v1, "TextInputProvider"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method static synthetic access$002(Lio/rong/imkit/widget/provider/TextInputProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->flag:Z

    return p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 416
    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v4, :cond_1

    .line 417
    const-string v4, "TextInputProvider"

    const-string v5, "inputView is null!"

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v4}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 421
    .local v1, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 426
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 427
    const-class v4, Lio/rong/message/TextMessage;

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/MessageTag;

    .line 428
    .local v3, tag:Lio/rong/imlib/MessageTag;
    invoke-interface {v3}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TextInputProvider;->onTypingMessage(Ljava/lang/String;)V

    .line 432
    .end local v3           #tag:Lio/rong/imlib/MessageTag;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imkit/utils/AndroidEmoji;->isEmoji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 433
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 434
    .local v2, start:I
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 435
    .local v0, end:I
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/rong/imkit/utils/AndroidEmoji;->ensure(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 438
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 440
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_3
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mExtraTextWatcher:Landroid/text/TextWatcher;

    if-eqz v4, :cond_4

    .line 441
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mExtraTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v4, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 443
    :cond_4
    const-string v4, "TextInputProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "afterTextChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 357
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v1, :cond_1

    .line 358
    const-string v1, "TextInputProvider"

    const-string v2, "inputView is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 362
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mExtraTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mExtraTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, editText:Landroid/widget/EditText;
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v2}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 504
    .local v1, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v1, :cond_0

    .line 505
    iget-object v0, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    .line 508
    .end local v1           #holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    :cond_0
    return-object v0
.end method

.method public obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_keyboard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActive(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 290
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v2, :cond_1

    .line 291
    const-string v2, "TextInputProvider"

    const-string v3, "inputView is null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v2}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 295
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 300
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 301
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V
    .locals 2
    .parameter "fragment"
    .parameter "view"

    .prologue
    .line 70
    const-string v0, "TextInputProvider"

    const-string v1, "onAttached"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1, p2}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 199
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v3, :cond_1

    .line 200
    const-string v3, "TextInputProvider"

    const-string v4, "inputView is null!"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 204
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-nez v0, :cond_2

    .line 205
    const-string v3, "TextInputProvider"

    const-string v4, "holder is null!"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_2
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 209
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEmojiPager:Lio/rong/imkit/widget/RongEmojiPager;

    if-nez v3, :cond_4

    .line 210
    new-instance v3, Lio/rong/imkit/widget/RongEmojiPager;

    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v4}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/rong/imkit/widget/RongEmojiPager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEmojiPager:Lio/rong/imkit/widget/RongEmojiPager;

    .line 211
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEmojiPager:Lio/rong/imkit/widget/RongEmojiPager;

    new-instance v4, Lio/rong/imkit/widget/provider/TextInputProvider$5;

    invoke-direct {v4, p0, v0}, Lio/rong/imkit/widget/provider/TextInputProvider$5;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/RongEmojiPager;->setOnEmojiClickListener(Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;)V

    .line 223
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 224
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 226
    :cond_3
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onEmojiProviderActive(Landroid/content/Context;)V

    .line 227
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3, v5}, Lio/rong/imkit/widget/InputView;->setExtendLayoutVisibility(I)V

    .line 228
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 229
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_smiley_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v4, Lio/rong/imkit/R$drawable;->rc_bg_text_hover:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 232
    :cond_4
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 233
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onEmojiProviderActive(Landroid/content/Context;)V

    .line 234
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3, v5}, Lio/rong/imkit/widget/InputView;->setExtendLayoutVisibility(I)V

    .line 235
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 236
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_smiley_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v4, Lio/rong/imkit/R$drawable;->rc_bg_text_hover:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 239
    :cond_5
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 240
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v4, Lio/rong/imkit/R$drawable;->rc_bg_text_hover:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 241
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_smiley_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 243
    :cond_6
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onProviderInactive(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 245
    :cond_7
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 246
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 247
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 248
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 252
    :cond_8
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/rong/message/TextMessage;->obtain(Ljava/lang/String;)Lio/rong/message/TextMessage;

    move-result-object v2

    .line 253
    .local v2, textMessage:Lio/rong/message/TextMessage;
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    if-eqz v3, :cond_9

    .line 254
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    invoke-interface {v3}, Lio/rong/imkit/mention/ITextInputListener;->onSendButtonClick()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v1

    .line 255
    .local v1, mentionedInfo:Lio/rong/imlib/model/MentionedInfo;
    if-eqz v1, :cond_9

    .line 256
    invoke-virtual {v2, v1}, Lio/rong/message/TextMessage;->setMentionedInfo(Lio/rong/imlib/model/MentionedInfo;)V

    .line 259
    .end local v1           #mentionedInfo:Lio/rong/imlib/model/MentionedInfo;
    :cond_9
    invoke-virtual {p0, v2}, Lio/rong/imkit/widget/provider/TextInputProvider;->publish(Lio/rong/imlib/model/MessageContent;)V

    .line 260
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 261
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    .end local v2           #textMessage:Lio/rong/message/TextMessage;
    :cond_a
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 263
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v4, Lio/rong/imkit/R$drawable;->rc_bg_text_hover:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 264
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_smiley:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onProviderActive(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 266
    :cond_b
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v4, Lio/rong/imkit/R$drawable;->rc_bg_text_hover:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 268
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_smiley:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onProviderActive(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "parent"
    .parameter "inputView"

    .prologue
    .line 125
    const-string v2, "TextInputProvider"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget v2, Lio/rong/imkit/R$layout;->rc_wi_txt_provider:I

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, view:Landroid/view/View;
    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 130
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .end local v0           #holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;)V

    .line 134
    .restart local v0       #holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    :cond_0
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    .line 135
    const v2, 0x1020003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    .line 136
    sget v2, Lio/rong/imkit/R$id;->rc_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    .line 137
    invoke-virtual {p3, v0}, Lio/rong/imkit/widget/InputView;->setTag(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 140
    sget v2, Lio/rong/imkit/R$layout;->rc_wi_text_btn:I

    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    .line 141
    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    :cond_1
    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    if-nez v2, :cond_3

    .line 145
    :cond_2
    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    .line 148
    :cond_3
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 150
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    new-instance v3, Lio/rong/imkit/widget/provider/TextInputProvider$3;

    invoke-direct {v3, p0}, Lio/rong/imkit/widget/provider/TextInputProvider$3;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 164
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextWatcher:Landroid/text/TextWatcher;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mExtraTextWatcher:Landroid/text/TextWatcher;

    .line 169
    :cond_4
    iput-object p3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    .line 170
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/rong/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 173
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/rong/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 175
    :cond_5
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/widget/provider/TextInputProvider$4;

    invoke-direct {v5, p0}, Lio/rong/imkit/widget/provider/TextInputProvider$4;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;)V

    invoke-virtual {v2, v3, v4, v5}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 194
    return-object v1
.end method

.method public onDetached()V
    .locals 6

    .prologue
    .line 76
    const-string v4, "TextInputProvider"

    const-string v5, "Detached"

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v4, :cond_0

    .line 78
    const-string v4, "TextInputProvider"

    const-string v5, "inputView is null!"

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v4}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 82
    .local v1, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 83
    .local v0, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, targetId:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    iget-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, text:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/widget/provider/TextInputProvider$1;

    invoke-direct {v5, p0, v2, v0, v3}, Lio/rong/imkit/widget/provider/TextInputProvider$1;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2, v3, v5}, Lio/rong/imlib/RongIMClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 110
    .end local v3           #text:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 111
    const/4 v4, 0x0

    iput-object v4, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEmojiPager:Lio/rong/imkit/widget/RongEmojiPager;

    .line 113
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v4

    invoke-virtual {v4, p0}, Lio/rong/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 114
    invoke-super {p0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onDetached()V

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/widget/provider/TextInputProvider$2;

    invoke-direct {v5, p0, v2, v0}, Lio/rong/imkit/widget/provider/TextInputProvider$2;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)V

    invoke-virtual {v4, v0, v2, v5}, Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_1
.end method

.method public onEventMainThread(Lio/rong/imkit/widget/InputView$Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 471
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v1, :cond_1

    .line 472
    const-string v1, "TextInputProvider"

    const-string v2, "inputView is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 476
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v0, :cond_0

    .line 479
    sget-object v1, Lio/rong/imkit/widget/InputView$Event;->CLICK:Lio/rong/imkit/widget/InputView$Event;

    if-ne p1, v1, :cond_0

    .line 480
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 481
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_smiley:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v2, Lio/rong/imkit/R$drawable;->rc_bg_text_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 345
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v0, :cond_1

    .line 346
    const-string v0, "TextInputProvider"

    const-string v1, "inputView is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 350
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->setExtendInputsVisibility(I)V

    goto :goto_0
.end method

.method public onInactive(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 307
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v2, :cond_1

    .line 308
    const-string v2, "TextInputProvider"

    const-string v3, "inputView is null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v2}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 312
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v2}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 317
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mSmile:Landroid/widget/ImageView;

    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_smiley:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v3, Lio/rong/imkit/R$drawable;->rc_bg_text_hover:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 325
    :cond_2
    :goto_1
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 326
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 321
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mBack:Landroid/widget/FrameLayout;

    sget v3, Lio/rong/imkit/R$drawable;->rc_bg_text_normal:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onInputPause()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onInputResume(Lio/rong/imkit/widget/InputView;Lio/rong/imlib/model/Conversation;)V
    .locals 0
    .parameter "inputView"
    .parameter "conversation"

    .prologue
    .line 55
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    .line 56
    invoke-virtual {p0, p2}, Lio/rong/imkit/widget/provider/TextInputProvider;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    .line 57
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 489
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 490
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v2}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 491
    .local v1, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 493
    .local v0, cursorPos:I
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-interface {v2, v3, v4, v5, v0}, Lio/rong/imkit/mention/ITextInputListener;->onDeleteClick(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Landroid/widget/EditText;I)V

    .line 496
    .end local v0           #cursorPos:I
    .end local v1           #holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v0, :cond_1

    .line 277
    const-string v0, "TextInputProvider"

    const-string v1, "inputView is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->onProviderInactive(Landroid/content/Context;)V

    .line 283
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->setExtendLayoutVisibility(I)V

    goto :goto_0
.end method

.method public onSwitch(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 331
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v1, :cond_1

    .line 332
    const-string v1, "TextInputProvider"

    const-string v2, "inputView is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 336
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/TextInputProvider;->onInactive(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 369
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v0, :cond_1

    .line 370
    const-string v0, "TextInputProvider"

    const-string v3, "inputView is null!"

    invoke-static {v0, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 374
    .local v6, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v6, :cond_0

    .line 377
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mExtraTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mExtraTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 381
    :cond_2
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 382
    .local v1, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, targetId:Ljava/lang/String;
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->flag:Z

    if-eqz v0, :cond_4

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    :cond_3
    if-nez p4, :cond_5

    .line 386
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    add-int v3, p2, p3

    neg-int v4, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lio/rong/imkit/mention/ITextInputListener;->onTextEdit(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILjava/lang/String;)V

    .line 391
    :cond_4
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->flag:Z

    .line 393
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_5
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lio/rong/imkit/mention/ITextInputListener;->onTextEdit(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_6
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 398
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const v3, 0x1020019

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 399
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_8

    .line 400
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    :cond_7
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lio/rong/imkit/R$layout;->rc_wi_text_btn:I

    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v4}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    .line 403
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v3, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_8
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 408
    .end local v7           #view:Landroid/view/View;
    :cond_9
    iget-object v0, v6, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setEditTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 467
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextWatcher:Landroid/text/TextWatcher;

    .line 468
    return-void
.end method

.method public setEditTextContent(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 452
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-nez v1, :cond_1

    .line 453
    const-string v1, "TextInputProvider"

    const-string v2, "inputView is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;

    .line 457
    .local v0, holder:Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;
    if-eqz v0, :cond_0

    .line 460
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 461
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, v0, Lio/rong/imkit/widget/provider/TextInputProvider$ViewHolder;->mEdit:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setTextInputListener(Lio/rong/imkit/mention/ITextInputListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 512
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mTextInputListener:Lio/rong/imkit/mention/ITextInputListener;

    .line 513
    return-void
.end method
