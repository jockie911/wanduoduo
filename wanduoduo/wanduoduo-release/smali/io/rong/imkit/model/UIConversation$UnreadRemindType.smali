.class public final enum Lio/rong/imkit/model/UIConversation$UnreadRemindType;
.super Ljava/lang/Enum;
.source "UIConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/UIConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnreadRemindType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imkit/model/UIConversation$UnreadRemindType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imkit/model/UIConversation$UnreadRemindType;

.field public static final enum NO_REMIND:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

.field public static final enum REMIND_ONLY:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

.field public static final enum REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 436
    new-instance v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    const-string v1, "NO_REMIND"

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->NO_REMIND:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .line 440
    new-instance v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    const-string v1, "REMIND_ONLY"

    invoke-direct {v0, v1, v3}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_ONLY:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .line 444
    new-instance v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    const-string v1, "REMIND_WITH_COUNTING"

    invoke-direct {v0, v1, v4}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .line 432
    const/4 v0, 0x3

    new-array v0, v0, [Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    sget-object v1, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->NO_REMIND:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_ONLY:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    aput-object v1, v0, v4

    sput-object v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->$VALUES:[Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imkit/model/UIConversation$UnreadRemindType;
    .locals 1
    .parameter "name"

    .prologue
    .line 432
    const-class v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    return-object v0
.end method

.method public static values()[Lio/rong/imkit/model/UIConversation$UnreadRemindType;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->$VALUES:[Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v0}, [Lio/rong/imkit/model/UIConversation$UnreadRemindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    return-object v0
.end method
