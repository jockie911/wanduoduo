.class public Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;
.super Landroid/widget/LinearLayout;
.source "PictureSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PictureSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewBtn"
.end annotation


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 728
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 731
    sget v0, Lio/rong/imkit/R$id;->preview_text:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->mText:Landroid/widget/TextView;

    .line 732
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 752
    invoke-virtual {p0}, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 763
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 755
    :pswitch_0
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->mText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 758
    :pswitch_1
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 744
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 745
    if-eqz p1, :cond_0

    sget v0, Lio/rong/imkit/R$color;->rc_picsel_toolbar_send_text_normal:I

    .line 747
    .local v0, color:I
    :goto_0
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 748
    return-void

    .line 745
    .end local v0           #color:I
    :cond_0
    sget v0, Lio/rong/imkit/R$color;->rc_picsel_toolbar_send_text_disable:I

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 735
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 736
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 739
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PreviewBtn;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    return-void
.end method
