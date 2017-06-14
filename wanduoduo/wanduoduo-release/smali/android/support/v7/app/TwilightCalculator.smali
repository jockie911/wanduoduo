.class Landroid/support/v7/app/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L

.field private static sInstance:Landroid/support/v7/app/TwilightCalculator;


# instance fields
.field public state:I

.field public sunrise:J

.field public sunset:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Landroid/support/v7/app/TwilightCalculator;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/support/v7/app/TwilightCalculator;

    invoke-direct {v0}, Landroid/support/v7/app/TwilightCalculator;-><init>()V

    sput-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    .line 34
    :cond_0
    sget-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    return-object v0
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 29
    .parameter "time"
    .parameter "latiude"
    .parameter "longitude"

    .prologue
    .line 86
    const-wide v22, 0xdc6d62da00L

    sub-long v22, p1, v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x4ca4cb80

    div-float v8, v22, v23

    .line 89
    .local v8, daysSince2000:F
    const v22, 0x40c7ae92

    const v23, 0x3c8ceb25

    mul-float v23, v23, v8

    add-float v12, v22, v23

    .line 92
    .local v12, meanAnomaly:F
    float-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x3fa11c5fc0000000L

    float-to-double v0, v12

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3f36e05b00000000L

    const/high16 v26, 0x4000

    mul-float v26, v26, v12

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 93
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3ed5f61cc0000000L

    const/high16 v26, 0x4040

    mul-float v26, v26, v12

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v20, v22, v24

    .line 96
    .local v20, trueAnomaly:D
    const-wide v22, 0x3ffcbed85e1ce332L

    add-double v22, v22, v20

    const-wide v24, 0x400921fb54442d18L

    add-double v16, v22, v24

    .line 99
    .local v16, solarLng:D
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4076800000000000L

    div-double v4, v22, v24

    .line 100
    .local v4, arcLongitude:D
    const v22, 0x3a6bedfa

    sub-float v22, v8, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v22, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v13, v0

    .line 101
    .local v13, n:F
    const v22, 0x3a6bedfa

    add-float v22, v22, v13

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v22, v22, v4

    const-wide v24, 0x3f75b573eab367a1L

    float-to-double v0, v12

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x4083bcd35a858794L

    const-wide/high16 v26, 0x4000

    mul-double v26, v26, v16

    .line 102
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v18, v22, v24

    .line 105
    .local v18, solarTransitJ2000:D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    const-wide v24, 0x3fda31a380000000L

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    .line 107
    .local v14, solarDec:D
    const-wide v22, 0x3f91df46a0000000L

    mul-double v10, p3, v22

    .line 109
    .local v10, latRad:D
    const-wide v22, -0x4045311600000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 110
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    div-double v6, v22, v24

    .line 113
    .local v6, cosHourAngle:D
    const-wide/high16 v22, 0x3ff0

    cmpl-double v22, v6, v22

    if-ltz v22, :cond_0

    .line 114
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/app/TwilightCalculator;->state:I

    .line 115
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 116
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 135
    :goto_0
    return-void

    .line 118
    :cond_0
    const-wide/high16 v22, -0x4010

    cmpg-double v22, v6, v22

    if-gtz v22, :cond_1

    .line 119
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/app/TwilightCalculator;->state:I

    .line 120
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 121
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v22

    const-wide v24, 0x401921fb54442d18L

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v9, v0

    .line 127
    .local v9, hourAngle:F
    float-to-double v0, v9

    move-wide/from16 v22, v0

    add-double v22, v22, v18

    const-wide v24, 0x4194997000000000L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    const-wide v24, 0xdc6d62da00L

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 128
    float-to-double v0, v9

    move-wide/from16 v22, v0

    sub-double v22, v18, v22

    const-wide v24, 0x4194997000000000L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    const-wide v24, 0xdc6d62da00L

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 130
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, p1

    if-gez v22, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, p1

    if-lez v22, :cond_2

    .line 131
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/app/TwilightCalculator;->state:I

    goto/16 :goto_0

    .line 133
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/app/TwilightCalculator;->state:I

    goto/16 :goto_0
.end method
