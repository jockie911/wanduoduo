.class public Lio/rong/message/CSHandShakeResponseMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "CSHandShakeResponseMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:CsHsR"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/CSHandShakeResponseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CSHandShakeResponseMessage"


# instance fields
.field private companyIcon:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/CSGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private humanEvaluateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/message/CSHumanEvaluateItem;",
            ">;"
        }
    .end annotation
.end field

.field private isBlack:Z

.field private mode:I

.field private msg:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private requiredChangMode:Z

.field private robotHelloWord:Ljava/lang/String;

.field private robotLogo:Ljava/lang/String;

.field private robotName:Ljava/lang/String;

.field private robotSessionNoEva:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private status:I

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lio/rong/message/CSHandShakeResponseMessage$1;

    invoke-direct {v0}, Lio/rong/message/CSHandShakeResponseMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/CSHandShakeResponseMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    .line 126
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->status:I

    .line 127
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->msg:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->sid:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->uid:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->pid:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->mode:I

    .line 132
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->companyName:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->isBlack:Z

    .line 134
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lio/rong/message/CSHandShakeResponseMessage;->requiredChangMode:Z

    .line 135
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotName:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotLogo:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotHelloWord:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->companyIcon:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotSessionNoEva:Ljava/lang/String;

    .line 140
    const-class v0, Lio/rong/message/CSHumanEvaluateItem;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    .line 141
    const-class v0, Lio/rong/imlib/model/CSGroupItem;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 133
    goto :goto_0

    :cond_1
    move v1, v2

    .line 134
    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 20
    .parameter "content"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 45
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    .line 46
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    .line 53
    const/4 v10, 0x0

    .line 55
    .local v10, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/lang/String;

    const-string v17, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v10           #jsonStr:Ljava/lang/String;
    .local v11, jsonStr:Ljava/lang/String;
    move-object v10, v11

    .line 61
    .end local v11           #jsonStr:Ljava/lang/String;
    .restart local v10       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v9, jsonObj:Lorg/json/JSONObject;
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 63
    .local v8, jsonData:Lorg/json/JSONObject;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->status:I

    .line 64
    const-string v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->msg:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/message/CSHandShakeResponseMessage;->status:I

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 67
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->uid:Ljava/lang/String;

    .line 68
    const-string v17, "sid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->sid:Ljava/lang/String;

    .line 69
    const-string v17, "pid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->pid:Ljava/lang/String;

    .line 70
    const-string v17, "serviceType"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 71
    .local v15, serviceType:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 72
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->mode:I

    .line 73
    :cond_0
    const-string v17, "isblack"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, isblack:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->isBlack:Z

    .line 76
    :cond_1
    const-string v17, "notAutoCha"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, changeMode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->requiredChangMode:Z

    .line 79
    :cond_2
    const-string v17, "robotName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->robotName:Ljava/lang/String;

    .line 80
    const-string v17, "robotIcon"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->robotLogo:Ljava/lang/String;

    .line 81
    const-string v17, "robotWelcome"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->robotHelloWord:Ljava/lang/String;

    .line 82
    const-string v17, "companyIcon"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->companyIcon:Ljava/lang/String;

    .line 83
    const-string v17, "companyName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->companyName:Ljava/lang/String;

    .line 84
    const-string v17, "robotSessionNoEva"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/message/CSHandShakeResponseMessage;->robotSessionNoEva:Ljava/lang/String;

    .line 85
    const-string v17, "evaluateList"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 86
    .local v6, jsonArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 87
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_6

    .line 88
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    .line 89
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "value"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, param1:Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "description"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, param2:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 93
    const/16 v16, 0x0

    .line 96
    .local v16, value:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lio/rong/message/CSHumanEvaluateItem;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lio/rong/message/CSHumanEvaluateItem;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 75
    .end local v2           #changeMode:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v12           #param1:Ljava/lang/String;
    .end local v13           #param2:Ljava/lang/String;
    .end local v16           #value:I
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 78
    .restart local v2       #changeMode:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 95
    .restart local v4       #i:I
    .restart local v6       #jsonArray:Lorg/json/JSONArray;
    .restart local v12       #param1:Ljava/lang/String;
    .restart local v13       #param2:Ljava/lang/String;
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .restart local v16       #value:I
    goto :goto_4

    .line 100
    .end local v4           #i:I
    .end local v12           #param1:Ljava/lang/String;
    .end local v13           #param2:Ljava/lang/String;
    .end local v16           #value:I
    :cond_6
    const-string v17, "groups"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 101
    .local v7, jsonArrayGroup:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 102
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_7

    .line 103
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_7

    .line 104
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 105
    .restart local v12       #param1:Ljava/lang/String;
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "name"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 106
    .restart local v13       #param2:Ljava/lang/String;
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "online"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 107
    .local v14, param3:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lio/rong/imlib/model/CSGroupItem;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v13, v14}, Lio/rong/imlib/model/CSGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 111
    .end local v2           #changeMode:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #isblack:Ljava/lang/String;
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #jsonArrayGroup:Lorg/json/JSONArray;
    .end local v8           #jsonData:Lorg/json/JSONObject;
    .end local v9           #jsonObj:Lorg/json/JSONObject;
    .end local v12           #param1:Ljava/lang/String;
    .end local v13           #param2:Ljava/lang/String;
    .end local v14           #param3:Z
    .end local v15           #serviceType:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 112
    .local v3, e:Lorg/json/JSONException;
    const-string v17, "CSHandShakeResponseMessage"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JSONException "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v3           #e:Lorg/json/JSONException;
    :cond_7
    return-void

    .line 56
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method

.method public static obtain()Lio/rong/message/CSHandShakeResponseMessage;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lio/rong/message/CSHandShakeResponseMessage;

    invoke-direct {v0}, Lio/rong/message/CSHandShakeResponseMessage;-><init>()V

    .line 122
    .local v0, message:Lio/rong/message/CSHandShakeResponseMessage;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->status:I

    return v0
.end method

.method public getCompanyIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->companyIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/CSGroupItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHumanEvaluateList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/message/CSHumanEvaluateItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMode()Lio/rong/imlib/model/CustomServiceMode;
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->mode:I

    invoke-static {v0}, Lio/rong/imlib/model/CustomServiceMode;->valueOf(I)Lio/rong/imlib/model/CustomServiceMode;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getRobotHelloWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotHelloWord:Ljava/lang/String;

    return-object v0
.end method

.method public getRobotLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getRobotName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotName:Ljava/lang/String;

    return-object v0
.end method

.method public getRobotSessionNoEva()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotSessionNoEva:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isBlack()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->isBlack:Z

    return v0
.end method

.method public isRequiredChangMode()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->requiredChangMode:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    iget v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 306
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->msg:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->sid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->uid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->pid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 310
    iget v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 311
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->companyName:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 312
    iget-boolean v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->isBlack:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 313
    iget-boolean v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->requiredChangMode:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 314
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotName:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotLogo:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotHelloWord:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->companyIcon:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->robotSessionNoEva:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->humanEvaluateList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 320
    iget-object v0, p0, Lio/rong/message/CSHandShakeResponseMessage;->groupList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 321
    return-void

    :cond_0
    move v0, v2

    .line 312
    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_1
.end method
