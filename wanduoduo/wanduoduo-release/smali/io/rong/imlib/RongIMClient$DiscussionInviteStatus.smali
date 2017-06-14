.class public final enum Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
.super Ljava/lang/Enum;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiscussionInviteStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

.field public static final enum CLOSED:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

.field public static final enum OPENED:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6382
    new-instance v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->CLOSED:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    .line 6387
    new-instance v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v3, v2}, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->OPENED:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    .line 6378
    const/4 v0, 0x2

    new-array v0, v0, [Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->CLOSED:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->OPENED:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    aput-object v1, v0, v3

    sput-object v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->$VALUES:[Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

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
    .line 6396
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6389
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->value:I

    .line 6397
    iput p3, p0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->value:I

    .line 6398
    return-void
.end method

.method public static setValue(I)Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    .locals 5
    .parameter "code"

    .prologue
    .line 6416
    invoke-static {}, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->values()[Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    move-result-object v0

    .local v0, arr$:[Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 6417
    .local v1, c:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 6421
    .end local v1           #c:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    :goto_1
    return-object v1

    .line 6416
    .restart local v1       #c:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6421
    .end local v1           #c:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    :cond_1
    sget-object v1, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->OPENED:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 6378
    const-class v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    .locals 1

    .prologue
    .line 6378
    sget-object v0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->$VALUES:[Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    invoke-virtual {v0}, [Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 6406
    iget v0, p0, Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;->value:I

    return v0
.end method
