.class Lrx/Observable$15;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->repeatWhen(Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$notificationHandler:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7013
    .local p0, this:Lrx/Observable$15;,"Lrx/Observable.15;"
    iput-object p1, p0, Lrx/Observable$15;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$15;->val$notificationHandler:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7013
    .local p0, this:Lrx/Observable$15;,"Lrx/Observable.15;"
    check-cast p1, Lrx/Observable;

    .end local p1
    invoke-virtual {p0, p1}, Lrx/Observable$15;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 7016
    .local p0, this:Lrx/Observable$15;,"Lrx/Observable.15;"
    .local p1, notifications:Lrx/Observable;,"Lrx/Observable<+Lrx/Notification<*>;>;"
    iget-object v0, p0, Lrx/Observable$15;->val$notificationHandler:Lrx/functions/Func1;

    new-instance v1, Lrx/Observable$15$1;

    invoke-direct {v1, p0}, Lrx/Observable$15$1;-><init>(Lrx/Observable$15;)V

    invoke-virtual {p1, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    return-object v0
.end method
