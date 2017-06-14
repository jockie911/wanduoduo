.class public Lio/rong/imageloader/core/assist/deque/LIFOLinkedBlockingDeque;
.super Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;
.source "LIFOLinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x391aa861e4d4f950L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LIFOLinkedBlockingDeque;,"Lio/rong/imageloader/core/assist/deque/LIFOLinkedBlockingDeque<TT;>;"
    invoke-direct {p0}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LIFOLinkedBlockingDeque;,"Lio/rong/imageloader/core/assist/deque/LIFOLinkedBlockingDeque<TT;>;"
    .local p1, e:Ljava/lang/Object;,"TT;"
    invoke-super {p0, p1}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LIFOLinkedBlockingDeque;,"Lio/rong/imageloader/core/assist/deque/LIFOLinkedBlockingDeque<TT;>;"
    invoke-super {p0}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
