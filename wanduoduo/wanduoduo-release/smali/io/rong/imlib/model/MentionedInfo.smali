.class public Lio/rong/imlib/model/MentionedInfo;
.super Ljava/lang/Object;
.source "MentionedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/MentionedInfo$MentionedType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/MentionedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mentionedContent:Ljava/lang/String;

.field private type:Lio/rong/imlib/model/MentionedInfo$MentionedType;

.field private userIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lio/rong/imlib/model/MentionedInfo$1;

    invoke-direct {v0}, Lio/rong/imlib/model/MentionedInfo$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/MentionedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->valueOf(I)Lio/rong/imlib/model/MentionedInfo$MentionedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/MentionedInfo;->setType(Lio/rong/imlib/model/MentionedInfo$MentionedType;)V

    .line 20
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/MentionedInfo;->setMentionedUserIdList(Ljava/util/List;)V

    .line 21
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/MentionedInfo;->setMentionedContent(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lio/rong/imlib/model/MentionedInfo$MentionedType;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter
    .parameter "mentionedContent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/MentionedInfo$MentionedType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_1

    sget-object v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->ALL:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imlib/model/MentionedInfo;->userIdList:Ljava/util/List;

    .line 33
    :cond_0
    :goto_0
    iput-object p1, p0, Lio/rong/imlib/model/MentionedInfo;->type:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    .line 34
    iput-object p3, p0, Lio/rong/imlib/model/MentionedInfo;->mentionedContent:Ljava/lang/String;

    .line 35
    return-void

    .line 27
    :cond_1
    if-eqz p1, :cond_0

    sget-object v0, Lio/rong/imlib/model/MentionedInfo$MentionedType;->PART:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    if-nez p2, :cond_2

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When mentioned parts of the group memebers, userIdList can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    iput-object p2, p0, Lio/rong/imlib/model/MentionedInfo;->userIdList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getMentionedContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lio/rong/imlib/model/MentionedInfo;->mentionedContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMentionedUserIdList()Ljava/util/List;
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
    .line 54
    iget-object v0, p0, Lio/rong/imlib/model/MentionedInfo;->userIdList:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lio/rong/imlib/model/MentionedInfo$MentionedType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/rong/imlib/model/MentionedInfo;->type:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    return-object v0
.end method

.method public setMentionedContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 70
    iput-object p1, p0, Lio/rong/imlib/model/MentionedInfo;->mentionedContent:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMentionedUserIdList(Ljava/util/List;)V
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
    .line 66
    .local p1, userList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/rong/imlib/model/MentionedInfo;->userIdList:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setType(Lio/rong/imlib/model/MentionedInfo$MentionedType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 62
    iput-object p1, p0, Lio/rong/imlib/model/MentionedInfo;->type:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 44
    invoke-virtual {p0}, Lio/rong/imlib/model/MentionedInfo;->getType()Lio/rong/imlib/model/MentionedInfo$MentionedType;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 45
    invoke-virtual {p0}, Lio/rong/imlib/model/MentionedInfo;->getMentionedUserIdList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 46
    invoke-virtual {p0}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 47
    return-void
.end method
