.class public final enum Lio/rong/imlib/model/Conversation$PublicServiceType;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublicServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/model/Conversation$PublicServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/model/Conversation$PublicServiceType;

.field public static final enum APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

.field public static final enum PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 469
    new-instance v0, Lio/rong/imlib/model/Conversation$PublicServiceType;

    const-string v1, "APP_PUBLIC_SERVICE"

    const/4 v2, 0x7

    const-string v3, "app_public_service"

    invoke-direct {v0, v1, v4, v2, v3}, Lio/rong/imlib/model/Conversation$PublicServiceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    .line 474
    new-instance v0, Lio/rong/imlib/model/Conversation$PublicServiceType;

    const-string v1, "PUBLIC_SERVICE"

    const/16 v2, 0x8

    const-string v3, "public_service"

    invoke-direct {v0, v1, v5, v2, v3}, Lio/rong/imlib/model/Conversation$PublicServiceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    .line 464
    const/4 v0, 0x2

    new-array v0, v0, [Lio/rong/imlib/model/Conversation$PublicServiceType;

    sget-object v1, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    aput-object v1, v0, v5

    sput-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->$VALUES:[Lio/rong/imlib/model/Conversation$PublicServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "value"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 477
    const/4 v0, 0x1

    iput v0, p0, Lio/rong/imlib/model/Conversation$PublicServiceType;->value:I

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/model/Conversation$PublicServiceType;->name:Ljava/lang/String;

    .line 486
    iput p3, p0, Lio/rong/imlib/model/Conversation$PublicServiceType;->value:I

    .line 487
    iput-object p4, p0, Lio/rong/imlib/model/Conversation$PublicServiceType;->name:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public static setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;
    .locals 5
    .parameter "code"

    .prologue
    .line 515
    invoke-static {}, Lio/rong/imlib/model/Conversation$PublicServiceType;->values()[Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/model/Conversation$PublicServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 516
    .local v1, c:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 520
    .end local v1           #c:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :goto_1
    return-object v1

    .line 515
    .restart local v1       #c:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v1           #c:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$PublicServiceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 464
    const-class v0, Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Conversation$PublicServiceType;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/model/Conversation$PublicServiceType;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->$VALUES:[Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v0}, [Lio/rong/imlib/model/Conversation$PublicServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/model/Conversation$PublicServiceType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lio/rong/imlib/model/Conversation$PublicServiceType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lio/rong/imlib/model/Conversation$PublicServiceType;->value:I

    return v0
.end method
