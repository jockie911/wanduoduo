.class Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;
.super Ljava/lang/Object;
.source "PicturePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PicturePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckButton"
.end annotation


# instance fields
.field private checked:Z

.field private image:Landroid/widget/ImageView;

.field private nor_resId:I

.field private rootView:Landroid/view/View;

.field private sel_resId:I

.field private text:Landroid/widget/TextView;

.field final synthetic this$0:Lio/rong/imkit/activity/PicturePreviewActivity;


# direct methods
.method public constructor <init>(Lio/rong/imkit/activity/PicturePreviewActivity;Landroid/view/View;II)V
    .locals 2
    .parameter
    .end parameter
    .parameter "root"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter
    .parameter "norId"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter
    .parameter "selId"

    .prologue
    .line 341
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->this$0:Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->checked:Z

    .line 342
    iput-object p2, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->rootView:Landroid/view/View;

    .line 343
    sget v0, Lio/rong/imkit/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->image:Landroid/widget/ImageView;

    .line 344
    sget v0, Lio/rong/imkit/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->text:Landroid/widget/TextView;

    .line 346
    iput p3, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->nor_resId:I

    .line 347
    iput p4, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->sel_resId:I

    .line 348
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->image:Landroid/widget/ImageView;

    iget v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->nor_resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "check"

    .prologue
    .line 352
    iput-boolean p1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->checked:Z

    .line 353
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->image:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->checked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->sel_resId:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    return-void

    .line 353
    :cond_0
    iget v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->nor_resId:I

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 369
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 361
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 362
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "chars"

    .prologue
    .line 365
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePreviewActivity$CheckButton;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method
