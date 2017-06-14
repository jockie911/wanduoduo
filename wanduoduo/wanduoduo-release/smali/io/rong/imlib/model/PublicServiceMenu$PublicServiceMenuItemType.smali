.class public final enum Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
.super Ljava/lang/Enum;
.source "PublicServiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/PublicServiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublicServiceMenuItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

.field public static final enum Click:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

.field public static final enum Entry:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

.field public static final enum Group:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

.field public static final enum View:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;


# instance fields
.field private command:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    const-string v1, "Group"

    const-string v2, "GROUP"

    invoke-direct {v0, v1, v3, v3, v2}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Group:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    .line 26
    new-instance v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    const-string v1, "View"

    const-string v2, "VIEW"

    invoke-direct {v0, v1, v4, v4, v2}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->View:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    .line 31
    new-instance v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    const-string v1, "Click"

    const-string v2, "CLICK"

    invoke-direct {v0, v1, v5, v5, v2}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Click:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    .line 36
    new-instance v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    const-string v1, "Entry"

    const-string v2, "ENTRY"

    invoke-direct {v0, v1, v6, v6, v2}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Entry:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    sget-object v1, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Group:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->View:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Click:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    aput-object v1, v0, v5

    sget-object v1, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Entry:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    aput-object v1, v0, v6

    sput-object v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->$VALUES:[Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "value"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->value:I

    .line 47
    iput p3, p0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->value:I

    .line 48
    iput-object p4, p0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->command:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static setValue(I)Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    .locals 5
    .parameter "code"

    .prologue
    .line 76
    invoke-static {}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->values()[Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 77
    .local v1, c:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 81
    .end local v1           #c:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    :goto_1
    return-object v1

    .line 76
    .restart local v1       #c:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v1           #c:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->$VALUES:[Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    invoke-virtual {v0}, [Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->value:I

    return v0
.end method
