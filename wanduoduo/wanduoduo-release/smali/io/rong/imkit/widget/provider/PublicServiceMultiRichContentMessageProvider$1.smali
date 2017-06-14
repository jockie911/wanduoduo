.class Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;
.super Ljava/lang/Object;
.source "PublicServiceMultiRichContentMessageProvider.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->bindView(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

.field final synthetic val$msgList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->val$msgList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 65
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->val$msgList:Ljava/util/ArrayList;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/message/RichContentItem;

    .line 66
    .local v2, item:Lio/rong/message/RichContentItem;
    invoke-virtual {v2}, Lio/rong/message/RichContentItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, url:Ljava/lang/String;
    const-string v0, "io.rong.imkit.intent.action.webview"

    .line 68
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    #getter for: Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->access$000(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v4, "url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    #getter for: Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->access$000(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
