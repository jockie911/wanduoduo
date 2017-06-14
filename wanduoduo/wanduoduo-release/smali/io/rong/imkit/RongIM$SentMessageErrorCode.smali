.class public final enum Lio/rong/imkit/RongIM$SentMessageErrorCode;
.super Ljava/lang/Enum;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/RongIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SentMessageErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imkit/RongIM$SentMessageErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imkit/RongIM$SentMessageErrorCode;

.field public static final enum FORBIDDEN_IN_GROUP:Lio/rong/imkit/RongIM$SentMessageErrorCode;

.field public static final enum NOT_FOLLOWED:Lio/rong/imkit/RongIM$SentMessageErrorCode;

.field public static final enum NOT_IN_CHATROOM:Lio/rong/imkit/RongIM$SentMessageErrorCode;

.field public static final enum NOT_IN_DISCUSSION:Lio/rong/imkit/RongIM$SentMessageErrorCode;

.field public static final enum NOT_IN_GROUP:Lio/rong/imkit/RongIM$SentMessageErrorCode;

.field public static final enum REJECTED_BY_BLACKLIST:Lio/rong/imkit/RongIM$SentMessageErrorCode;

.field public static final enum UNKNOWN:Lio/rong/imkit/RongIM$SentMessageErrorCode;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1225
    new-instance v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    const-string v3, "Unknown error."

    invoke-direct {v0, v1, v5, v2, v3}, Lio/rong/imkit/RongIM$SentMessageErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->UNKNOWN:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    .line 1230
    new-instance v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    const-string v1, "NOT_IN_DISCUSSION"

    const/16 v2, 0x539e

    const-string v3, "not_in_discussion"

    invoke-direct {v0, v1, v6, v2, v3}, Lio/rong/imkit/RongIM$SentMessageErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_IN_DISCUSSION:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    .line 1234
    new-instance v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    const-string v1, "NOT_IN_GROUP"

    const/16 v2, 0x5786

    const-string v3, "not_in_group"

    invoke-direct {v0, v1, v7, v2, v3}, Lio/rong/imkit/RongIM$SentMessageErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_IN_GROUP:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    .line 1238
    new-instance v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    const-string v1, "FORBIDDEN_IN_GROUP"

    const/16 v2, 0x5788

    const-string v3, "forbidden_in_group"

    invoke-direct {v0, v1, v8, v2, v3}, Lio/rong/imkit/RongIM$SentMessageErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->FORBIDDEN_IN_GROUP:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    .line 1242
    new-instance v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    const-string v1, "NOT_IN_CHATROOM"

    const/16 v2, 0x5b6e

    const-string v3, "not_in_chatroom"

    invoke-direct {v0, v1, v9, v2, v3}, Lio/rong/imkit/RongIM$SentMessageErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_IN_CHATROOM:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    .line 1247
    new-instance v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    const-string v1, "REJECTED_BY_BLACKLIST"

    const/4 v2, 0x5

    const/16 v3, 0x195

    const-string v4, "rejected by blacklist"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/rong/imkit/RongIM$SentMessageErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->REJECTED_BY_BLACKLIST:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    .line 1252
    new-instance v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    const-string v1, "NOT_FOLLOWED"

    const/4 v2, 0x6

    const/16 v3, 0x71b2

    const-string v4, "not followed"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/rong/imkit/RongIM$SentMessageErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_FOLLOWED:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    .line 1220
    const/4 v0, 0x7

    new-array v0, v0, [Lio/rong/imkit/RongIM$SentMessageErrorCode;

    sget-object v1, Lio/rong/imkit/RongIM$SentMessageErrorCode;->UNKNOWN:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_IN_DISCUSSION:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_IN_GROUP:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lio/rong/imkit/RongIM$SentMessageErrorCode;->FORBIDDEN_IN_GROUP:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_IN_CHATROOM:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lio/rong/imkit/RongIM$SentMessageErrorCode;->REJECTED_BY_BLACKLIST:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/rong/imkit/RongIM$SentMessageErrorCode;->NOT_FOLLOWED:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->$VALUES:[Lio/rong/imkit/RongIM$SentMessageErrorCode;

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
    .line 1264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1265
    iput p3, p0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->code:I

    .line 1266
    iput-object p4, p0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->msg:Ljava/lang/String;

    .line 1267
    return-void
.end method

.method public static setValue(I)Lio/rong/imkit/RongIM$SentMessageErrorCode;
    .locals 7
    .parameter "code"

    .prologue
    .line 1294
    invoke-static {}, Lio/rong/imkit/RongIM$SentMessageErrorCode;->values()[Lio/rong/imkit/RongIM$SentMessageErrorCode;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imkit/RongIM$SentMessageErrorCode;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1295
    .local v1, c:Lio/rong/imkit/RongIM$SentMessageErrorCode;
    invoke-virtual {v1}, Lio/rong/imkit/RongIM$SentMessageErrorCode;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 1302
    .end local v1           #c:Lio/rong/imkit/RongIM$SentMessageErrorCode;
    :goto_1
    return-object v1

    .line 1294
    .restart local v1       #c:Lio/rong/imkit/RongIM$SentMessageErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1300
    .end local v1           #c:Lio/rong/imkit/RongIM$SentMessageErrorCode;
    :cond_1
    const-string v4, "RongIMClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SentMessageErrorCode---ErrorCode---code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    sget-object v1, Lio/rong/imkit/RongIM$SentMessageErrorCode;->UNKNOWN:Lio/rong/imkit/RongIM$SentMessageErrorCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imkit/RongIM$SentMessageErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 1220
    const-class v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;

    return-object v0
.end method

.method public static values()[Lio/rong/imkit/RongIM$SentMessageErrorCode;
    .locals 1

    .prologue
    .line 1220
    sget-object v0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->$VALUES:[Lio/rong/imkit/RongIM$SentMessageErrorCode;

    invoke-virtual {v0}, [Lio/rong/imkit/RongIM$SentMessageErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imkit/RongIM$SentMessageErrorCode;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1275
    iget v0, p0, Lio/rong/imkit/RongIM$SentMessageErrorCode;->code:I

    return v0
.end method
