.class Lio/rong/imlib/location/RealTimeLocation$5;
.super Ljava/lang/Object;
.source "RealTimeLocation.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/location/RealTimeLocation;->sendLocationMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imlib/NativeClient$IResultCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$5;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 648
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 0
    .parameter "integer"

    .prologue
    .line 644
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 640
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$5;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
