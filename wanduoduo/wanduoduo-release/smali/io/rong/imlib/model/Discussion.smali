.class public Lio/rong/imlib/model/Discussion;
.super Ljava/lang/Object;
.source "Discussion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/Discussion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creatorId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isOpen:Z

.field private memberIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lio/rong/imlib/model/Discussion$1;

    invoke-direct {v0}, Lio/rong/imlib/model/Discussion$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/Discussion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    :goto_0
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/model/Discussion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 50
    return-void

    .line 45
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lio/rong/imlib/NativeObject$DiscussionInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 34
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getDiscussionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getDiscussionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getAdminId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getUserIds()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getUserIds()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    .line 40
    :cond_0
    const-string v1, "Discussion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.getInviteStatus():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getInviteStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getInviteStatus()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 59
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "creatorId"
    .parameter "isOpen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p5, memberIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 74
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    .line 77
    iput-boolean p4, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 78
    iput-object p5, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    return v0
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0
    .parameter "creatorId"

    .prologue
    .line 150
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 132
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setMemberIdList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, memberIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    .line 169
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 114
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .parameter "isOpen"

    .prologue
    .line 96
    iput-boolean p1, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 189
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 193
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getMemberIdList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 194
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
