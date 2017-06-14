.class public final enum Lcom/bigkoo/pickerview/TimePickerView$Type;
.super Ljava/lang/Enum;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bigkoo/pickerview/TimePickerView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum HOURS_MINS:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum YEAR_MONTH:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum YEAR_MONTH_DAY:Lcom/bigkoo/pickerview/TimePickerView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "YEAR_MONTH_DAY"

    invoke-direct {v0, v1, v3}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH_DAY:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "HOURS_MINS"

    invoke-direct {v0, v1, v4}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->HOURS_MINS:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "MONTH_DAY_HOUR_MIN"

    invoke-direct {v0, v1, v5}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "YEAR_MONTH"

    invoke-direct {v0, v1, v6}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH:Lcom/bigkoo/pickerview/TimePickerView$Type;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bigkoo/pickerview/TimePickerView$Type;

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH_DAY:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->HOURS_MINS:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->$VALUES:[Lcom/bigkoo/pickerview/TimePickerView$Type;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bigkoo/pickerview/TimePickerView$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    return-object v0
.end method

.method public static values()[Lcom/bigkoo/pickerview/TimePickerView$Type;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->$VALUES:[Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-virtual {v0}, [Lcom/bigkoo/pickerview/TimePickerView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bigkoo/pickerview/TimePickerView$Type;

    return-object v0
.end method
