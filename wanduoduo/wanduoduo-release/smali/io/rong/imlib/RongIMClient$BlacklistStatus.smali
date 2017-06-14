.class public final enum Lio/rong/imlib/RongIMClient$BlacklistStatus;
.super Ljava/lang/Enum;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlacklistStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/RongIMClient$BlacklistStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/RongIMClient$BlacklistStatus;

.field public static final enum IN_BLACK_LIST:Lio/rong/imlib/RongIMClient$BlacklistStatus;

.field public static final enum NOT_IN_BLACK_LIST:Lio/rong/imlib/RongIMClient$BlacklistStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6841
    new-instance v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;

    const-string v1, "IN_BLACK_LIST"

    invoke-direct {v0, v1, v2, v2}, Lio/rong/imlib/RongIMClient$BlacklistStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;->IN_BLACK_LIST:Lio/rong/imlib/RongIMClient$BlacklistStatus;

    .line 6846
    new-instance v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;

    const-string v1, "NOT_IN_BLACK_LIST"

    invoke-direct {v0, v1, v3, v3}, Lio/rong/imlib/RongIMClient$BlacklistStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;->NOT_IN_BLACK_LIST:Lio/rong/imlib/RongIMClient$BlacklistStatus;

    .line 6836
    const/4 v0, 0x2

    new-array v0, v0, [Lio/rong/imlib/RongIMClient$BlacklistStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$BlacklistStatus;->IN_BLACK_LIST:Lio/rong/imlib/RongIMClient$BlacklistStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/imlib/RongIMClient$BlacklistStatus;->NOT_IN_BLACK_LIST:Lio/rong/imlib/RongIMClient$BlacklistStatus;

    aput-object v1, v0, v3

    sput-object v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;->$VALUES:[Lio/rong/imlib/RongIMClient$BlacklistStatus;

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
    .line 6856
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6849
    const/4 v0, 0x1

    iput v0, p0, Lio/rong/imlib/RongIMClient$BlacklistStatus;->value:I

    .line 6857
    iput p3, p0, Lio/rong/imlib/RongIMClient$BlacklistStatus;->value:I

    .line 6858
    return-void
.end method

.method public static setValue(I)Lio/rong/imlib/RongIMClient$BlacklistStatus;
    .locals 5
    .parameter "code"

    .prologue
    .line 6876
    invoke-static {}, Lio/rong/imlib/RongIMClient$BlacklistStatus;->values()[Lio/rong/imlib/RongIMClient$BlacklistStatus;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/RongIMClient$BlacklistStatus;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 6877
    .local v1, c:Lio/rong/imlib/RongIMClient$BlacklistStatus;
    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$BlacklistStatus;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 6881
    .end local v1           #c:Lio/rong/imlib/RongIMClient$BlacklistStatus;
    :goto_1
    return-object v1

    .line 6876
    .restart local v1       #c:Lio/rong/imlib/RongIMClient$BlacklistStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6881
    .end local v1           #c:Lio/rong/imlib/RongIMClient$BlacklistStatus;
    :cond_1
    sget-object v1, Lio/rong/imlib/RongIMClient$BlacklistStatus;->NOT_IN_BLACK_LIST:Lio/rong/imlib/RongIMClient$BlacklistStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/RongIMClient$BlacklistStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 6836
    const-class v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/RongIMClient$BlacklistStatus;
    .locals 1

    .prologue
    .line 6836
    sget-object v0, Lio/rong/imlib/RongIMClient$BlacklistStatus;->$VALUES:[Lio/rong/imlib/RongIMClient$BlacklistStatus;

    invoke-virtual {v0}, [Lio/rong/imlib/RongIMClient$BlacklistStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/RongIMClient$BlacklistStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 6866
    iget v0, p0, Lio/rong/imlib/RongIMClient$BlacklistStatus;->value:I

    return v0
.end method
