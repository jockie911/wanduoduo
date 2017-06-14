.class abstract Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 2
    .parameter

    .prologue
    .line 1049
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque<TE;>.AbstractItr;"
    iput-object p1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iget-object v0, p1, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1052
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1054
    :try_start_0
    invoke-virtual {p0}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1055
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1059
    return-void

    .line 1055
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private succ(Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, n:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextNode(Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    .line 1070
    .local v0, s:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_1

    .line 1071
    const/4 v0, 0x0

    .line 1075
    .end local v0           #s:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :cond_0
    :goto_1
    return-object v0

    .line 1072
    .restart local v0       #s:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :cond_1
    iget-object v1, v0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1074
    if-ne v0, p1, :cond_2

    .line 1075
    invoke-virtual {p0}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    goto :goto_1

    .line 1077
    :cond_2
    move-object p1, v0

    .line 1078
    goto :goto_0
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 1085
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v1, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1086
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1089
    :try_start_0
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {p0, v1}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->succ(Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1090
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1094
    return-void

    .line 1090
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1092
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method abstract firstNode()Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1097
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    .line 1102
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1103
    :cond_0
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iput-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1104
    iget-object v0, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1105
    .local v0, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->advance()V

    .line 1106
    return-object v0
.end method

.method abstract nextNode(Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1110
    .local p0, this:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1111
    .local v1, n:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;,"Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    .line 1112
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1113
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1114
    iget-object v2, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v2, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1115
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1117
    :try_start_0
    iget-object v2, v1, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1118
    iget-object v2, p0, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-virtual {v2, v1}, Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lio/rong/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1122
    return-void

    .line 1120
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
