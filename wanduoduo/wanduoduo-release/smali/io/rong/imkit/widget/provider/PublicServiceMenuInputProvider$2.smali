.class Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$2;
.super Ljava/lang/Object;
.source "PublicServiceMenuInputProvider.java"

# interfaces
.implements Lio/rong/imlib/IRongCallback$ISendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->onMenuItemSelect(Lio/rong/imlib/model/PublicServiceMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$2;->this$0:Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 125
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 135
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 130
    return-void
.end method
