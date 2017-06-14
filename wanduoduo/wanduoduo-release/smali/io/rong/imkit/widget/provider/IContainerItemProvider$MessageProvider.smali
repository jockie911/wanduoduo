.class public abstract Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.super Ljava/lang/Object;
.source "IContainerItemProvider.java"

# interfaces
.implements Lio/rong/imkit/widget/provider/IContainerItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/IContainerItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessageProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lio/rong/imlib/model/MessageContent;",
        ">",
        "Ljava/lang/Object;",
        "Lio/rong/imkit/widget/provider/IContainerItemProvider",
        "<",
        "Lio/rong/imkit/model/UIMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, this:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;,"Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILandroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    .local p0, this:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;,"Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider<TK;>;"
    check-cast p3, Lio/rong/imkit/model/UIMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public final bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V
    .locals 1
    .parameter "v"
    .parameter "position"
    .parameter "data"

    .prologue
    .line 49
    .local p0, this:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;,"Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider<TK;>;"
    invoke-virtual {p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V

    .line 50
    return-void
.end method

.method public abstract bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITK;",
            "Lio/rong/imkit/model/UIMessage;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/text/Spannable;"
        }
    .end annotation
.end method

.method public final getSummary(Lio/rong/imkit/model/UIMessage;)Landroid/text/Spannable;
    .locals 1
    .parameter "data"

    .prologue
    .line 69
    .local p0, this:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;,"Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider<TK;>;"
    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public abstract onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITK;",
            "Lio/rong/imkit/model/UIMessage;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITK;",
            "Lio/rong/imkit/model/UIMessage;",
            ")V"
        }
    .end annotation
.end method
