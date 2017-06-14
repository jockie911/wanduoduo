.class public Lio/rong/imkit/widget/SingleChoiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "SingleChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mCheckBoxResourceID:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSelectItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "checkBoxResourceId"

    .prologue
    .line 27
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mCheckBoxResourceID:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mSelectItem:I

    .line 28
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/widget/SingleChoiceAdapter;->init(Landroid/content/Context;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "checkBoxResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mCheckBoxResourceID:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mSelectItem:I

    .line 33
    invoke-direct {p0, p1, p3}, Lio/rong/imkit/widget/SingleChoiceAdapter;->init(Landroid/content/Context;I)V

    .line 34
    if-eqz p2, :cond_0

    .line 35
    iput-object p2, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    .line 38
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "checkBoResourceId"

    .prologue
    .line 41
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    iput-object p1, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput p2, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mCheckBoxResourceID:I

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    invoke-virtual {p0}, Lio/rong/imkit/widget/SingleChoiceAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSelectItem()I
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    iget v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mSelectItem:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    if-nez p2, :cond_1

    .line 92
    iget-object v2, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_cs_item_single_choice:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;

    invoke-direct {v1}, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;-><init>()V

    .line 95
    .local v1, viewHolder:Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_cs_tv_group_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 97
    sget v2, Lio/rong/imkit/R$id;->rc_cs_group_checkBox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    iget v2, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mCheckBoxResourceID:I

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget v3, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mCheckBoxResourceID:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 109
    :cond_0
    :goto_0
    iget-object v3, v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mSelectItem:I

    if-ne v2, p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/SingleChoiceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, item:Ljava/lang/Object;,"TT;"
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0           #item:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_2
    return-object p2

    .line 106
    .end local v1           #viewHolder:Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;

    .restart local v1       #viewHolder:Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;
    goto :goto_0

    .line 109
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    .restart local v0       #item:Ljava/lang/Object;,"TT;"
    :cond_3
    iget-object v2, v1, Lio/rong/imkit/widget/SingleChoiceAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/SingleChoiceAdapter;->setSelectItem(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public setSelectItem(I)V
    .locals 1
    .parameter "selectItem"

    .prologue
    .line 55
    .local p0, this:Lio/rong/imkit/widget/SingleChoiceAdapter;,"Lio/rong/imkit/widget/SingleChoiceAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 56
    iput p1, p0, Lio/rong/imkit/widget/SingleChoiceAdapter;->mSelectItem:I

    .line 57
    invoke-virtual {p0}, Lio/rong/imkit/widget/SingleChoiceAdapter;->notifyDataSetChanged()V

    .line 60
    :cond_0
    return-void
.end method
