.class Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;
.super Ljava/lang/Object;
.source "PublicServiceMenuInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenu"
.end annotation


# instance fields
.field container:Landroid/view/View;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field popupWindow:Landroid/widget/PopupWindow;

.field final synthetic this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceMenuItem;>;"
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 144
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p3, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->list:Ljava/util/ArrayList;

    .line 146
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_public_service_input_menus:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->container:Landroid/view/View;

    .line 147
    iget-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->container:Landroid/view/View;

    sget v3, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 148
    .local v0, group:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 149
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->container:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 152
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 154
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->setupMenu(Landroid/widget/LinearLayout;)V

    .line 156
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->container:Landroid/view/View;

    invoke-direct {v2, v3, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    .line 157
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 177
    return-void
.end method

.method setupMenu(Landroid/widget/LinearLayout;)V
    .locals 9
    .parameter "group"

    .prologue
    const/4 v8, -0x2

    .line 180
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 182
    iget-object v5, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    iget-object v5, v5, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    sget v6, Lio/rong/imkit/R$layout;->rc_item_public_service_input_menu_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 183
    .local v1, layoutItem:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    invoke-direct {v2, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 184
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->container:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 186
    iget-object v5, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 188
    sget v5, Lio/rong/imkit/R$id;->rc_menu_item_text:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 189
    .local v4, tv:Landroid/widget/TextView;
    sget v5, Lio/rong/imkit/R$id;->rc_menu_line:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 190
    .local v3, pop_item_line:Landroid/view/View;
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 191
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    iget-object v5, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-virtual {v5}, Lio/rong/imlib/model/PublicServiceMenuItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v5, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu$1;

    invoke-direct {v5, p0}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu$1;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1           #layoutItem:Landroid/widget/LinearLayout;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #pop_item_line:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public showAtLocation(Landroid/view/View;)V
    .locals 8
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->container:Landroid/view/View;

    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 163
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 164
    .local v0, location:[I
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->container:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 165
    .local v1, w:I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 166
    aget v4, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 167
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/lit8 v3, v4, 0xa

    .line 169
    .local v3, y:I
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v5, 0x53

    invoke-virtual {v4, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 170
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 171
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 172
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 173
    return-void
.end method
