.class public final enum Lio/rong/push/core/PushProtocalStack$Message$Type;
.super Ljava/lang/Enum;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/push/core/PushProtocalStack$Message$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum CONNACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum CONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum DISCONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum PINGREQ:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum PINGRESP:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum PUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum PUBLISH:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum QUERY:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum QUERYACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum QUERYCON:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum SUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum SUBSCRIBE:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum UNSUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

.field public static final enum UNSUBSCRIBE:Lio/rong/push/core/PushProtocalStack$Message$Type;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 486
    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "CONNACK"

    invoke-direct {v0, v1, v4, v5}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "PUBLISH"

    invoke-direct {v0, v1, v5, v6}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->PUBLISH:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "PUBACK"

    invoke-direct {v0, v1, v6, v7}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->PUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v7, v8}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERY:Lio/rong/push/core/PushProtocalStack$Message$Type;

    .line 487
    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "QUERYACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERYACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    .line 488
    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "QUERYCON"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERYCON:Lio/rong/push/core/PushProtocalStack$Message$Type;

    .line 489
    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "SUBSCRIBE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->SUBSCRIBE:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "SUBACK"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->SUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "UNSUBSCRIBE"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->UNSUBSCRIBE:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "UNSUBACK"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->UNSUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "PINGREQ"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->PINGREQ:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "PINGRESP"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->PINGRESP:Lio/rong/push/core/PushProtocalStack$Message$Type;

    new-instance v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    const-string v1, "DISCONNECT"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lio/rong/push/core/PushProtocalStack$Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->DISCONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

    .line 485
    const/16 v0, 0xe

    new-array v0, v0, [Lio/rong/push/core/PushProtocalStack$Message$Type;

    const/4 v1, 0x0

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    sget-object v1, Lio/rong/push/core/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/push/core/PushProtocalStack$Message$Type;->PUBLISH:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v1, v0, v5

    sget-object v1, Lio/rong/push/core/PushProtocalStack$Message$Type;->PUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v1, v0, v6

    sget-object v1, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERY:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v1, v0, v7

    sget-object v1, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERYACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->QUERYCON:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->SUBSCRIBE:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->SUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->UNSUBSCRIBE:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->UNSUBACK:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->PINGREQ:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->PINGRESP:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/rong/push/core/PushProtocalStack$Message$Type;->DISCONNECT:Lio/rong/push/core/PushProtocalStack$Message$Type;

    aput-object v2, v0, v1

    sput-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->$VALUES:[Lio/rong/push/core/PushProtocalStack$Message$Type;

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
    .line 493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 494
    iput p3, p0, Lio/rong/push/core/PushProtocalStack$Message$Type;->val:I

    .line 495
    return-void
.end method

.method static synthetic access$000(Lio/rong/push/core/PushProtocalStack$Message$Type;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    iget v0, p0, Lio/rong/push/core/PushProtocalStack$Message$Type;->val:I

    return v0
.end method

.method static valueOf(I)Lio/rong/push/core/PushProtocalStack$Message$Type;
    .locals 5
    .parameter "i"

    .prologue
    .line 498
    invoke-static {}, Lio/rong/push/core/PushProtocalStack$Message$Type;->values()[Lio/rong/push/core/PushProtocalStack$Message$Type;

    move-result-object v0

    .local v0, arr$:[Lio/rong/push/core/PushProtocalStack$Message$Type;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 499
    .local v3, t:Lio/rong/push/core/PushProtocalStack$Message$Type;
    iget v4, v3, Lio/rong/push/core/PushProtocalStack$Message$Type;->val:I

    if-ne v4, p0, :cond_0

    .line 502
    .end local v3           #t:Lio/rong/push/core/PushProtocalStack$Message$Type;
    :goto_1
    return-object v3

    .line 498
    .restart local v3       #t:Lio/rong/push/core/PushProtocalStack$Message$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v3           #t:Lio/rong/push/core/PushProtocalStack$Message$Type;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/push/core/PushProtocalStack$Message$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 485
    const-class v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/push/core/PushProtocalStack$Message$Type;

    return-object v0
.end method

.method public static values()[Lio/rong/push/core/PushProtocalStack$Message$Type;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lio/rong/push/core/PushProtocalStack$Message$Type;->$VALUES:[Lio/rong/push/core/PushProtocalStack$Message$Type;

    invoke-virtual {v0}, [Lio/rong/push/core/PushProtocalStack$Message$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/push/core/PushProtocalStack$Message$Type;

    return-object v0
.end method
