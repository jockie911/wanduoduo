.class Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu$1;
.super Ljava/lang/Object;
.source "PublicServiceMenuInputProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->setupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu$1;->this$1:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceMenuItem;

    .line 199
    .local v0, item:Lio/rong/imlib/model/PublicServiceMenuItem;
    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu$1;->this$1:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    #calls: Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->onMenuItemSelect(Lio/rong/imlib/model/PublicServiceMenuItem;)V
    invoke-static {v1, v0}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->access$000(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Lio/rong/imlib/model/PublicServiceMenuItem;)V

    .line 200
    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu$1;->this$1:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;

    invoke-virtual {v1}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;->dismiss()V

    .line 201
    return-void
.end method
