.class Lcom/jude/swipbackhelper/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/swipbackhelper/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jude/swipbackhelper/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/jude/swipbackhelper/ViewDragHelper;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/jude/swipbackhelper/ViewDragHelper$2;->this$0:Lcom/jude/swipbackhelper/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/jude/swipbackhelper/ViewDragHelper$2;->this$0:Lcom/jude/swipbackhelper/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/ViewDragHelper;->setDragState(I)V

    .line 374
    return-void
.end method
