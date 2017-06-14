.class public Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "IndexGiftListBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private area_id:Ljava/lang/String;

.field private comment_allnum:Ljava/lang/String;

.field private comment_badnum:Ljava/lang/String;

.field private comment_goodnum:Ljava/lang/String;

.field private comment_perfectnum:Ljava/lang/String;

.field private cover_pic:Ljava/lang/String;

.field private fee:Ljava/lang/String;

.field private gift_pic:Ljava/lang/String;

.field private gift_tag_id:Ljava/lang/String;

.field private gift_video:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private is_drink:Ljava/lang/String;

.field private organizer:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

.field private pro_pic:Ljava/lang/String;

.field private server_count:Ljava/lang/String;

.field private server_time:Ljava/lang/String;

.field private server_time_type:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 735
    new-instance v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$1;

    invoke-direct {v0}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->title:Ljava/lang/String;

    .line 716
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_allnum:Ljava/lang/String;

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_perfectnum:Ljava/lang/String;

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_goodnum:Ljava/lang/String;

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_badnum:Ljava/lang/String;

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_count:Ljava/lang/String;

    .line 732
    const-class v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    .line 733
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public getArea_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_allnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_allnum:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_badnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_badnum:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_goodnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_goodnum:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_perfectnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_perfectnum:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_tag_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_video()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_drink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    return-object v0
.end method

.method public getPro_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_count:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setArea_id(Ljava/lang/String;)V
    .locals 0
    .parameter "area_id"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setComment_allnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_allnum"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_allnum:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setComment_badnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_badnum"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_badnum:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setComment_goodnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_goodnum"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_goodnum:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setComment_perfectnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_perfectnum"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_perfectnum:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_pic"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setFee(Ljava/lang/String;)V
    .locals 0
    .parameter "fee"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setGift_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_pic"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setGift_tag_id(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_tag_id"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setGift_video(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_video"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0
    .parameter "intro"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setIs_drink(Ljava/lang/String;)V
    .locals 0
    .parameter "is_drink"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setOrganizer(Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;)V
    .locals 0
    .parameter "organizer"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    .line 254
    return-void
.end method

.method public setPro_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "pro_pic"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setServer_count(Ljava/lang/String;)V
    .locals 0
    .parameter "server_count"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_count:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setServer_time(Ljava/lang/String;)V
    .locals 0
    .parameter "server_time"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setServer_time_type(Ljava/lang/String;)V
    .locals 0
    .parameter "server_time_type"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->title:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->area_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_tag_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->fee:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_time_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->pro_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->gift_video:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->is_drink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_allnum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_perfectnum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_goodnum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->comment_badnum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->server_count:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 708
    return-void
.end method
