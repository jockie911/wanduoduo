.class public final enum Lio/rong/imlib/model/Message$SentStatus;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SentStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/model/Message$SentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/model/Message$SentStatus;

.field public static final enum DESTROYED:Lio/rong/imlib/model/Message$SentStatus;

.field public static final enum FAILED:Lio/rong/imlib/model/Message$SentStatus;

.field public static final enum READ:Lio/rong/imlib/model/Message$SentStatus;

.field public static final enum RECEIVED:Lio/rong/imlib/model/Message$SentStatus;

.field public static final enum SENDING:Lio/rong/imlib/model/Message$SentStatus;

.field public static final enum SENT:Lio/rong/imlib/model/Message$SentStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    new-instance v0, Lio/rong/imlib/model/Message$SentStatus;

    const-string v1, "SENDING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lio/rong/imlib/model/Message$SentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    .line 384
    new-instance v0, Lio/rong/imlib/model/Message$SentStatus;

    const-string v1, "FAILED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v5, v2}, Lio/rong/imlib/model/Message$SentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    .line 389
    new-instance v0, Lio/rong/imlib/model/Message$SentStatus;

    const-string v1, "SENT"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v6, v2}, Lio/rong/imlib/model/Message$SentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    .line 394
    new-instance v0, Lio/rong/imlib/model/Message$SentStatus;

    const-string v1, "RECEIVED"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v7, v2}, Lio/rong/imlib/model/Message$SentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/Message$SentStatus;->RECEIVED:Lio/rong/imlib/model/Message$SentStatus;

    .line 399
    new-instance v0, Lio/rong/imlib/model/Message$SentStatus;

    const-string v1, "READ"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v8, v2}, Lio/rong/imlib/model/Message$SentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    .line 404
    new-instance v0, Lio/rong/imlib/model/Message$SentStatus;

    const-string v1, "DESTROYED"

    const/4 v2, 0x5

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imlib/model/Message$SentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/Message$SentStatus;->DESTROYED:Lio/rong/imlib/model/Message$SentStatus;

    .line 374
    const/4 v0, 0x6

    new-array v0, v0, [Lio/rong/imlib/model/Message$SentStatus;

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    aput-object v1, v0, v5

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    aput-object v1, v0, v6

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->RECEIVED:Lio/rong/imlib/model/Message$SentStatus;

    aput-object v1, v0, v7

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->DESTROYED:Lio/rong/imlib/model/Message$SentStatus;

    aput-object v2, v0, v1

    sput-object v0, Lio/rong/imlib/model/Message$SentStatus;->$VALUES:[Lio/rong/imlib/model/Message$SentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 406
    const/4 v0, 0x1

    iput v0, p0, Lio/rong/imlib/model/Message$SentStatus;->value:I

    .line 414
    iput p3, p0, Lio/rong/imlib/model/Message$SentStatus;->value:I

    .line 415
    return-void
.end method

.method public static setValue(I)Lio/rong/imlib/model/Message$SentStatus;
    .locals 5
    .parameter "code"

    .prologue
    .line 433
    invoke-static {}, Lio/rong/imlib/model/Message$SentStatus;->values()[Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/model/Message$SentStatus;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 434
    .local v1, c:Lio/rong/imlib/model/Message$SentStatus;
    invoke-virtual {v1}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 438
    .end local v1           #c:Lio/rong/imlib/model/Message$SentStatus;
    :goto_1
    return-object v1

    .line 433
    .restart local v1       #c:Lio/rong/imlib/model/Message$SentStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v1           #c:Lio/rong/imlib/model/Message$SentStatus;
    :cond_1
    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/model/Message$SentStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 374
    const-class v0, Lio/rong/imlib/model/Message$SentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/model/Message$SentStatus;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lio/rong/imlib/model/Message$SentStatus;->$VALUES:[Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0}, [Lio/rong/imlib/model/Message$SentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lio/rong/imlib/model/Message$SentStatus;->value:I

    return v0
.end method
