.class Lio/rong/imkit/widget/RongPluginPager$2;
.super Ljava/lang/Object;
.source "RongPluginPager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/RongPluginPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/RongPluginPager;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/RongPluginPager;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lio/rong/imkit/widget/RongPluginPager$2;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/RongPluginPager$2;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    #getter for: Lio/rong/imkit/widget/RongPluginPager;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {v3}, Lio/rong/imkit/widget/RongPluginPager;->access$300(Lio/rong/imkit/widget/RongPluginPager;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, extendProviders:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v2, p0, Lio/rong/imkit/widget/RongPluginPager$2;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    #getter for: Lio/rong/imkit/widget/RongPluginPager;->mSelectedPage:I
    invoke-static {v2}, Lio/rong/imkit/widget/RongPluginPager;->access$100(Lio/rong/imkit/widget/RongPluginPager;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .line 110
    .local v1, provider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    invoke-virtual {v1, p2}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->onPluginClick(Landroid/view/View;)V

    .line 111
    return-void
.end method
