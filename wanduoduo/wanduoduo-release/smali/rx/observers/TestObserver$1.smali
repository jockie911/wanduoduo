.class final Lrx/observers/TestObserver$1;
.super Ljava/lang/Object;
.source "TestObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observers/TestObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 172
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 177
    return-void
.end method
