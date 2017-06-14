.class public final enum Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;
.super Ljava/lang/Enum;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack$QueryAckMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

.field public static final enum STATUS_ERROR:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

.field public static final enum STATUS_NODBCONF:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

.field public static final enum STATUS_OK:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

.field public static final enum STATUS_PARAMERROR:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1022
    new-instance v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    const-string v1, "STATUS_ERROR"

    invoke-direct {v0, v1, v2, v2}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_ERROR:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    const-string v1, "STATUS_OK"

    invoke-direct {v0, v1, v3, v3}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_OK:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    const-string v1, "STATUS_NODBCONF"

    invoke-direct {v0, v1, v4, v4}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_NODBCONF:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    const-string v1, "STATUS_PARAMERROR"

    invoke-direct {v0, v1, v5, v5}, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_PARAMERROR:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    .line 1021
    const/4 v0, 0x4

    new-array v0, v0, [Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    sget-object v1, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_ERROR:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_OK:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_NODBCONF:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->STATUS_PARAMERROR:Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    aput-object v1, v0, v5

    sput-object v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->$VALUES:[Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1025
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1026
    iput p3, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->value:I

    .line 1027
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 1021
    const-class v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    return-object v0
.end method

.method public static values()[Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;
    .locals 1

    .prologue
    .line 1021
    sget-object v0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->$VALUES:[Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    invoke-virtual {v0}, [Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;

    return-object v0
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Lio/rong/push/core/PushProtocalStack$QueryAckMessage$QueryStatus;->value:I

    return v0
.end method
