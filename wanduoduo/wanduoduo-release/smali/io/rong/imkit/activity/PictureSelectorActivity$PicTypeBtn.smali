.class public Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;
.super Landroid/widget/LinearLayout;
.source "PictureSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PictureSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PicTypeBtn"
.end annotation


# instance fields
.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 690
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 691
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 694
    sget v0, Lio/rong/imkit/R$id;->type_text:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;->mText:Landroid/widget/TextView;

    .line 695
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 707
    invoke-virtual {p0}, Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 710
    :pswitch_0
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;->mText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 713
    :pswitch_1
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 698
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 702
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 703
    return-void
.end method
