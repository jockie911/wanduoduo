.class public final enum Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
.super Ljava/lang/Enum;
.source "RealTimeLocationConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocationConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealTimeLocationErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_CONVERSATION_NOT_SUPPORT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_EXCEED_MAX_PARTICIPANT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_IS_ON_GOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_JOIN_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_START_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

.field public static final enum RC_REAL_TIME_LOCATION_SUCCESS:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;


# instance fields
.field code:I

.field msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_NOT_INIT"

    const/4 v2, -0x1

    const-string v3, "Not init"

    invoke-direct {v0, v1, v5, v2, v3}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 69
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_SUCCESS"

    const-string v2, "Success"

    invoke-direct {v0, v1, v6, v5, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_SUCCESS:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 75
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_GPS_DISABLED"

    const-string v2, "GPS disabled"

    invoke-direct {v0, v1, v7, v6, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 81
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_CONVERSATION_NOT_SUPPORT"

    const-string v2, "Conversation not support"

    invoke-direct {v0, v1, v8, v7, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_CONVERSATION_NOT_SUPPORT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 87
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_IS_ON_GOING"

    const-string v2, "Real-Time location is on going"

    invoke-direct {v0, v1, v9, v8, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_IS_ON_GOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 93
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_EXCEED_MAX_PARTICIPANT"

    const/4 v2, 0x5

    const-string v3, "Exceed max participants"

    invoke-direct {v0, v1, v2, v9, v3}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_EXCEED_MAX_PARTICIPANT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 99
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_JOIN_FAILURE"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "Join fail"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_JOIN_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 105
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_START_FAILURE"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "Start fail"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_START_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 110
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    const-string v1, "RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string v4, "Network unavailable."

    invoke-direct {v0, v1, v2, v3, v4}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_SUCCESS:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_CONVERSATION_NOT_SUPPORT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_IS_ON_GOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_EXCEED_MAX_PARTICIPANT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_JOIN_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_START_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->$VALUES:[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->code:I

    .line 117
    iput-object p4, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->msg:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 5
    .parameter "value"

    .prologue
    .line 129
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->values()[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 130
    .local v1, code:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 133
    .end local v1           #code:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    :goto_1
    return-object v1

    .line 129
    .restart local v1       #code:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v1           #code:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    :cond_1
    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_CONVERSATION_NOT_SUPPORT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 60
    const-class v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->$VALUES:[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v0}, [Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->code:I

    return v0
.end method
