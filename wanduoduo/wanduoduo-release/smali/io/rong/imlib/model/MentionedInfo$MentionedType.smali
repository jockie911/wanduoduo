.class public final enum Lio/rong/imlib/model/MentionedInfo$MentionedType;
.super Ljava/lang/Enum;
.source "MentionedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/MentionedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MentionedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/model/MentionedInfo$MentionedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/model/MentionedInfo$MentionedType;

.field public static final enum ALL:Lio/rong/imlib/model/MentionedInfo$MentionedType;

.field public static final enum PART:Lio/rong/imlib/model/MentionedInfo$MentionedType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    new-instance v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3, v2}, Lio/rong/imlib/model/MentionedInfo$MentionedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->ALL:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    .line 88
    new-instance v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;

    const-string v1, "PART"

    invoke-direct {v0, v1, v2, v4}, Lio/rong/imlib/model/MentionedInfo$MentionedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->PART:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    .line 86
    new-array v0, v4, [Lio/rong/imlib/model/MentionedInfo$MentionedType;

    sget-object v1, Lio/rong/imlib/model/MentionedInfo$MentionedType;->ALL:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/imlib/model/MentionedInfo$MentionedType;->PART:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    aput-object v1, v0, v2

    sput-object v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->$VALUES:[Lio/rong/imlib/model/MentionedInfo$MentionedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->value:I

    .line 94
    return-void
.end method

.method public static valueOf(I)Lio/rong/imlib/model/MentionedInfo$MentionedType;
    .locals 5
    .parameter "value"

    .prologue
    .line 101
    invoke-static {}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->values()[Lio/rong/imlib/model/MentionedInfo$MentionedType;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/model/MentionedInfo$MentionedType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 102
    .local v3, type:Lio/rong/imlib/model/MentionedInfo$MentionedType;
    invoke-virtual {v3}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 105
    .end local v3           #type:Lio/rong/imlib/model/MentionedInfo$MentionedType;
    :goto_1
    return-object v3

    .line 101
    .restart local v3       #type:Lio/rong/imlib/model/MentionedInfo$MentionedType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v3           #type:Lio/rong/imlib/model/MentionedInfo$MentionedType;
    :cond_1
    sget-object v3, Lio/rong/imlib/model/MentionedInfo$MentionedType;->ALL:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/model/MentionedInfo$MentionedType;
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    const-class v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/model/MentionedInfo$MentionedType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->$VALUES:[Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-virtual {v0}, [Lio/rong/imlib/model/MentionedInfo$MentionedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/model/MentionedInfo$MentionedType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->value:I

    return v0
.end method
