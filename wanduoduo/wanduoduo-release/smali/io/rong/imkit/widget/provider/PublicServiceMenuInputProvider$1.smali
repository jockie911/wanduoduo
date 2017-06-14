.class Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;
.super Ljava/lang/Object;
.source "PublicServiceMenuInputProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

.field final synthetic val$item:Lio/rong/imlib/model/PublicServiceMenuItem;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Lio/rong/imlib/model/PublicServiceMenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->val$item:Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->val$item:Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceMenuItem;->getSubMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->val$item:Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceMenuItem;->getSubMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->val$item:Lio/rong/imlib/model/PublicServiceMenuItem;

    #calls: Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->onMenuItemSelect(Lio/rong/imlib/model/PublicServiceMenuItem;)V
    invoke-static {v1, v2}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->access$000(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Lio/rong/imlib/model/PublicServiceMenuItem;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;

    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;->val$item:Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceMenuItem;->getSubMenuItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 86
    .local v0, custom:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;
    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->showAtLocation(Landroid/view/View;)V

    goto :goto_0
.end method
