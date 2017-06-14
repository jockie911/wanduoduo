.class public Lio/rong/imkit/widget/PicturePopupWindow;
.super Landroid/widget/PopupWindow;
.source "PicturePopupWindow.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_save_pic:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .parameter "context"
    .parameter "imageFile"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 26
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget v3, Lio/rong/imkit/R$layout;->rc_pic_popup_window:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 27
    .local v2, menuView:Landroid/view/View;
    new-instance v3, Lio/rong/imkit/widget/PicturePopupWindow$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/widget/PicturePopupWindow$1;-><init>(Lio/rong/imkit/widget/PicturePopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    sget v3, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lio/rong/imkit/widget/PicturePopupWindow;->btn_save_pic:Landroid/widget/Button;

    .line 35
    iget-object v3, p0, Lio/rong/imkit/widget/PicturePopupWindow;->btn_save_pic:Landroid/widget/Button;

    new-instance v4, Lio/rong/imkit/widget/PicturePopupWindow$2;

    invoke-direct {v4, p0, p1, p2}, Lio/rong/imkit/widget/PicturePopupWindow$2;-><init>(Lio/rong/imkit/widget/PicturePopupWindow;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v3, Lio/rong/imkit/R$id;->rc_btn_cancel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lio/rong/imkit/widget/PicturePopupWindow;->btn_cancel:Landroid/widget/Button;

    .line 57
    iget-object v3, p0, Lio/rong/imkit/widget/PicturePopupWindow;->btn_cancel:Landroid/widget/Button;

    new-instance v4, Lio/rong/imkit/widget/PicturePopupWindow$3;

    invoke-direct {v4, p0}, Lio/rong/imkit/widget/PicturePopupWindow$3;-><init>(Lio/rong/imkit/widget/PicturePopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0, v2}, Lio/rong/imkit/widget/PicturePopupWindow;->setContentView(Landroid/view/View;)V

    .line 64
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/PicturePopupWindow;->setWidth(I)V

    .line 65
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/PicturePopupWindow;->setHeight(I)V

    .line 66
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/PicturePopupWindow;->setFocusable(Z)V

    .line 67
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x5000

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 68
    .local v0, dw:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/PicturePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method
