.class Lrx/Completable$13$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$13$1;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$13$1;


# direct methods
.method constructor <init>(Lrx/Completable$13$1;)V
    .locals 0
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lrx/Completable$13$1$1;->this$1:Lrx/Completable$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lrx/Completable$13$1$1;->this$1:Lrx/Completable$13$1;

    invoke-virtual {v0}, Lrx/Completable$13$1;->dispose()V

    .line 960
    return-void
.end method
