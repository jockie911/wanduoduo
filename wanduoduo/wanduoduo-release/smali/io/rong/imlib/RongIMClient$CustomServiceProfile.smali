.class Lio/rong/imlib/RongIMClient$CustomServiceProfile;
.super Ljava/lang/Object;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomServiceProfile"
.end annotation


# instance fields
.field groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/CSGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field mode:Lio/rong/imlib/model/CustomServiceMode;

.field name:Ljava/lang/String;

.field pid:Ljava/lang/String;

.field portrait:Ljava/lang/String;

.field sid:Ljava/lang/String;

.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field uid:Ljava/lang/String;

.field welcome:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 7384
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7384
    invoke-direct {p0, p1}, Lio/rong/imlib/RongIMClient$CustomServiceProfile;-><init>(Lio/rong/imlib/RongIMClient;)V

    return-void
.end method
