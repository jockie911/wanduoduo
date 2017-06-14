.class Lio/rong/imlib/NativeClient$27$1;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$DiscussionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient$27;->onReceived(Lio/rong/imlib/NativeObject$Message;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/NativeClient$27;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient$27;)V
    .locals 0
    .parameter

    .prologue
    .line 2169
    iput-object p1, p0, Lio/rong/imlib/NativeClient$27$1;->this$1:Lio/rong/imlib/NativeClient$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2177
    return-void
.end method

.method public onReceived(Lio/rong/imlib/NativeObject$DiscussionInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 2172
    return-void
.end method
