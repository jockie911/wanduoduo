.class public final enum Lio/rong/imlib/model/CustomServiceMode;
.super Ljava/lang/Enum;
.source "CustomServiceMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/model/CustomServiceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/model/CustomServiceMode;

.field public static final enum CUSTOM_SERVICE_MODE_HUMAN:Lio/rong/imlib/model/CustomServiceMode;

.field public static final enum CUSTOM_SERVICE_MODE_HUMAN_FIRST:Lio/rong/imlib/model/CustomServiceMode;

.field public static final enum CUSTOM_SERVICE_MODE_NO_SERVICE:Lio/rong/imlib/model/CustomServiceMode;

.field public static final enum CUSTOM_SERVICE_MODE_ROBOT:Lio/rong/imlib/model/CustomServiceMode;

.field public static final enum CUSTOM_SERVICE_MODE_ROBOT_FIRST:Lio/rong/imlib/model/CustomServiceMode;


# instance fields
.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lio/rong/imlib/model/CustomServiceMode;

    const-string v1, "CUSTOM_SERVICE_MODE_NO_SERVICE"

    invoke-direct {v0, v1, v2, v2}, Lio/rong/imlib/model/CustomServiceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_NO_SERVICE:Lio/rong/imlib/model/CustomServiceMode;

    .line 11
    new-instance v0, Lio/rong/imlib/model/CustomServiceMode;

    const-string v1, "CUSTOM_SERVICE_MODE_ROBOT"

    invoke-direct {v0, v1, v3, v3}, Lio/rong/imlib/model/CustomServiceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT:Lio/rong/imlib/model/CustomServiceMode;

    .line 16
    new-instance v0, Lio/rong/imlib/model/CustomServiceMode;

    const-string v1, "CUSTOM_SERVICE_MODE_HUMAN"

    invoke-direct {v0, v1, v4, v4}, Lio/rong/imlib/model/CustomServiceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN:Lio/rong/imlib/model/CustomServiceMode;

    .line 21
    new-instance v0, Lio/rong/imlib/model/CustomServiceMode;

    const-string v1, "CUSTOM_SERVICE_MODE_ROBOT_FIRST"

    invoke-direct {v0, v1, v5, v5}, Lio/rong/imlib/model/CustomServiceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    .line 26
    new-instance v0, Lio/rong/imlib/model/CustomServiceMode;

    const-string v1, "CUSTOM_SERVICE_MODE_HUMAN_FIRST"

    invoke-direct {v0, v1, v6, v6}, Lio/rong/imlib/model/CustomServiceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lio/rong/imlib/model/CustomServiceMode;

    sget-object v1, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_NO_SERVICE:Lio/rong/imlib/model/CustomServiceMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT:Lio/rong/imlib/model/CustomServiceMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN:Lio/rong/imlib/model/CustomServiceMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    aput-object v1, v0, v6

    sput-object v0, Lio/rong/imlib/model/CustomServiceMode;->$VALUES:[Lio/rong/imlib/model/CustomServiceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lio/rong/imlib/model/CustomServiceMode;->mode:I

    .line 31
    return-void
.end method

.method public static valueOf(I)Lio/rong/imlib/model/CustomServiceMode;
    .locals 5
    .parameter "mode"

    .prologue
    .line 40
    invoke-static {}, Lio/rong/imlib/model/CustomServiceMode;->values()[Lio/rong/imlib/model/CustomServiceMode;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/model/CustomServiceMode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 41
    .local v3, m:Lio/rong/imlib/model/CustomServiceMode;
    iget v4, v3, Lio/rong/imlib/model/CustomServiceMode;->mode:I

    if-ne v4, p0, :cond_0

    .line 44
    .end local v3           #m:Lio/rong/imlib/model/CustomServiceMode;
    :goto_1
    return-object v3

    .line 40
    .restart local v3       #m:Lio/rong/imlib/model/CustomServiceMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v3           #m:Lio/rong/imlib/model/CustomServiceMode;
    :cond_1
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT:Lio/rong/imlib/model/CustomServiceMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/model/CustomServiceMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lio/rong/imlib/model/CustomServiceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/CustomServiceMode;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/model/CustomServiceMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lio/rong/imlib/model/CustomServiceMode;->$VALUES:[Lio/rong/imlib/model/CustomServiceMode;

    invoke-virtual {v0}, [Lio/rong/imlib/model/CustomServiceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/model/CustomServiceMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/rong/imlib/model/CustomServiceMode;->mode:I

    return v0
.end method
