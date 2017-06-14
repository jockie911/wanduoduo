.class public Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "ManageServerSkillBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private area_id:Ljava/lang/String;

.field private city_code:Ljava/lang/String;

.field private cover_pic:Ljava/lang/String;

.field private fee:Ljava/lang/String;

.field private gift_pic:Ljava/lang/String;

.field private gift_tag_id:Ljava/lang/String;

.field private gift_video:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private is_drink:Ljava/lang/String;

.field private organizer:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

.field private pro_pic:Ljava/lang/String;

.field private server_time:Ljava/lang/String;

.field private server_time_type:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$1;

    invoke-direct {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->title:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->status:Ljava/lang/String;

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    .line 709
    const-class v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    .line 710
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public getArea_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->city_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_tag_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_video()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_drink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    return-object v0
.end method

.method public getPro_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setArea_id(Ljava/lang/String;)V
    .locals 0
    .parameter "area_id"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCity_code(Ljava/lang/String;)V
    .locals 0
    .parameter "city_code"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->city_code:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_pic"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setFee(Ljava/lang/String;)V
    .locals 0
    .parameter "fee"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setGift_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_pic"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setGift_tag_id(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_tag_id"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setGift_video(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_video"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0
    .parameter "intro"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setIs_drink(Ljava/lang/String;)V
    .locals 0
    .parameter "is_drink"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setOrganizer(Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;)V
    .locals 0
    .parameter "organizer"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    .line 220
    return-void
.end method

.method public setPro_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "pro_pic"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setServer_time(Ljava/lang/String;)V
    .locals 0
    .parameter "server_time"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setServer_time_type(Ljava/lang/String;)V
    .locals 0
    .parameter "server_time_type"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->status:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->title:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 689
    return-void
.end method
