.class public Lcom/wanduoduo/utils/PopWindowUtils;
.super Ljava/lang/Object;
.source "PopWindowUtils.java"


# static fields
.field private static popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindow(Landroid/content/Context;Landroid/view/View;I)Landroid/widget/PopupWindow;
    .locals 3
    .parameter "mContext"
    .parameter "showAtBelowView"
    .parameter "resouseLayoutID"

    .prologue
    .line 18
    sget-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    .line 20
    :cond_0
    sget-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 21
    sget-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, view:Landroid/view/View;
    sget-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 24
    sget-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 25
    if-eqz p1, :cond_1

    .line 26
    sget-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 27
    :cond_1
    sget-object v1, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    return-object v1
.end method

.method public static getWindow(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 3
    .parameter "mContext"
    .parameter "showAtBelowView"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 31
    sget-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    .line 33
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 34
    sget-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 35
    sget-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 36
    sget-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 37
    if-eqz p1, :cond_1

    .line 38
    sget-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 39
    :cond_1
    sget-object v0, Lcom/wanduoduo/utils/PopWindowUtils;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method
