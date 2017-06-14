.class Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "RongPluginPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/RongPluginPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginItemAdapter"
.end annotation


# instance fields
.field extendProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;",
            ">;"
        }
    .end annotation
.end field

.field startIndex:I

.field final synthetic this$0:Lio/rong/imkit/widget/RongPluginPager;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/RongPluginPager;I)V
    .locals 2
    .parameter
    .parameter "startIndex"

    .prologue
    .line 151
    iput-object p1, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 152
    iput p2, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->startIndex:I

    .line 153
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    #getter for: Lio/rong/imkit/widget/RongPluginPager;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {p1}, Lio/rong/imkit/widget/RongPluginPager;->access$300(Lio/rong/imkit/widget/RongPluginPager;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->extendProviders:Ljava/util/List;

    .line 154
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->extendProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->startIndex:I

    sub-int v0, v1, v2

    .line 159
    .local v0, count:I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 160
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 166
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    #getter for: Lio/rong/imkit/widget/RongPluginPager;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {v2}, Lio/rong/imkit/widget/RongPluginPager;->access$300(Lio/rong/imkit/widget/RongPluginPager;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, extendProviders:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget v1, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->startIndex:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 187
    iget v0, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->startIndex:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 172
    if-nez p2, :cond_0

    .line 173
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$layout;->rc_wi_plugins:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 175
    :cond_0
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 176
    .local v0, imageView:Landroid/widget/ImageView;
    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    .local v2, textView:Landroid/widget/TextView;
    iget v3, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->startIndex:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->extendProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 178
    iget-object v3, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->extendProviders:Ljava/util/List;

    iget v4, p0, Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;->startIndex:I

    add-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .line 179
    .local v1, provider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->obtainPluginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->obtainPluginTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .end local v1           #provider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    :cond_1
    return-object p2
.end method
