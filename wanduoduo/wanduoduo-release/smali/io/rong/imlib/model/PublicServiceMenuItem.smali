.class public Lio/rong/imlib/model/PublicServiceMenuItem;
.super Ljava/lang/Object;
.source "PublicServiceMenuItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private subMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lio/rong/imlib/model/PublicServiceMenuItem$1;

    invoke-direct {v0}, Lio/rong/imlib/model/PublicServiceMenuItem$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/PublicServiceMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->subMenuItems:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->subMenuItems:Ljava/util/ArrayList;

    .line 121
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->id:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->name:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->url:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->setValue(I)Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    .line 125
    const-class v0, Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->subMenuItems:Ljava/util/ArrayList;

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "jsonItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->subMenuItems:Ljava/util/ArrayList;

    .line 66
    :try_start_0
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->id:Ljava/lang/String;

    .line 69
    :cond_0
    const-string v5, "name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    const-string v5, "name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->name:Ljava/lang/String;

    .line 72
    :cond_1
    const-string v5, "url"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    const-string v5, "url"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->url:Ljava/lang/String;

    .line 75
    :cond_2
    const-string v5, "type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    const-string v5, "type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->setValue(I)Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v5

    iput-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    .line 77
    iget-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    sget-object v6, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->Group:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    if-ne v5, v6, :cond_4

    .line 78
    const-string v5, "children"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    const-string v5, "children"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 80
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_4

    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 82
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 83
    .local v4, jsonSubItem:Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    .line 85
    :try_start_1
    new-instance v2, Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-direct {v2, v4}, Lio/rong/imlib/model/PublicServiceMenuItem;-><init>(Lorg/json/JSONObject;)V

    .line 86
    .local v2, item:Lio/rong/imlib/model/PublicServiceMenuItem;
    iget-object v5, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->subMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v2           #item:Lio/rong/imlib/model/PublicServiceMenuItem;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #jsonSubItem:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "PublicServiceMenuItem parse error!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    .end local v0           #e:Lorg/json/JSONException;
    :cond_4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMenuItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->subMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 136
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->type:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 140
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenuItem;->subMenuItems:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 141
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
