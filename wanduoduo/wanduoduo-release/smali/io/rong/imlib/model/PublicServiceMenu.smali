.class public Lio/rong/imlib/model/PublicServiceMenu;
.super Ljava/lang/Object;
.source "PublicServiceMenu.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private menuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lio/rong/imlib/model/PublicServiceMenu$1;

    invoke-direct {v0}, Lio/rong/imlib/model/PublicServiceMenu$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/PublicServiceMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-class v0, Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceMenu;->menuItems:Ljava/util/ArrayList;

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 5
    .parameter "jsonArray"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/rong/imlib/model/PublicServiceMenu;->menuItems:Ljava/util/ArrayList;

    .line 96
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 99
    .local v3, jsonItem:Lorg/json/JSONObject;
    new-instance v2, Lio/rong/imlib/model/PublicServiceMenuItem;

    invoke-direct {v2, v3}, Lio/rong/imlib/model/PublicServiceMenuItem;-><init>(Lorg/json/JSONObject;)V

    .line 100
    .local v2, item:Lio/rong/imlib/model/PublicServiceMenuItem;
    iget-object v4, p0, Lio/rong/imlib/model/PublicServiceMenu;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2           #item:Lio/rong/imlib/model/PublicServiceMenuItem;
    .end local v3           #jsonItem:Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuItems()Ljava/util/ArrayList;
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
    .line 87
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenu;->menuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMenuItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/PublicServiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, menuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceMenuItem;>;"
    iput-object p1, p0, Lio/rong/imlib/model/PublicServiceMenu;->menuItems:Ljava/util/ArrayList;

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 137
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceMenu;->menuItems:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeListToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 138
    return-void
.end method
