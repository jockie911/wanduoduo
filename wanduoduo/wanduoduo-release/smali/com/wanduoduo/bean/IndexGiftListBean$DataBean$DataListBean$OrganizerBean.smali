.class public Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;
.super Ljava/lang/Object;
.source "IndexGiftListBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizerBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private character_interest:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private city_id:Ljava/lang/String;

.field private coin:Ljava/lang/String;

.field private constellation:Ljava/lang/String;

.field private cover_pic:Ljava/lang/String;

.field private food_interest:Ljava/lang/String;

.field private gender:I

.field private height:I

.field private id:Ljava/lang/String;

.field private idcard_ok:Ljava/lang/String;

.field private is_pro:Ljava/lang/String;

.field private is_system:Ljava/lang/String;

.field private is_vip:I

.field private loveinfo:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private pic_wall:Ljava/lang/String;

.field private place_interest:Ljava/lang/String;

.field private profession:Ljava/lang/String;

.field private qa_list:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private salary:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private sports_interest:Ljava/lang/String;

.field private star_interest:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private ticket_num:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private video:Ljava/lang/String;

.field private vip_time:Ljava/lang/String;

.field private wx_openid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean$1;

    invoke-direct {v0}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->height:I

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->gender:I

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    .line 667
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCoin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    return-object v0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFood_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->gender:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdcard_ok()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_pro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_system()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_vip()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    return v0
.end method

.method public getLoveinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_wall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getProfession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    return-object v0
.end method

.method public getQa_list()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getSalary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSports_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getStar_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    return-object v0
.end method

.method public getWx_openid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setCharacter_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "character_interest"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0
    .parameter "city_id"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setCoin(Ljava/lang/String;)V
    .locals 0
    .parameter "coin"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setConstellation(Ljava/lang/String;)V
    .locals 0
    .parameter "constellation"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_pic"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setFood_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "food_interest"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 411
    iput p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->gender:I

    .line 412
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 387
    iput p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->height:I

    .line 388
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setIdcard_ok(Ljava/lang/String;)V
    .locals 0
    .parameter "idcard_ok"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setIs_pro(Ljava/lang/String;)V
    .locals 0
    .parameter "is_pro"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setIs_system(Ljava/lang/String;)V
    .locals 0
    .parameter "is_system"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setIs_vip(I)V
    .locals 0
    .parameter "is_vip"

    .prologue
    .line 571
    iput p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    .line 572
    return-void
.end method

.method public setLoveinfo(Ljava/lang/String;)V
    .locals 0
    .parameter "loveinfo"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0
    .parameter "money"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setPic_wall(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_wall"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setPlace_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "place_interest"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setProfession(Ljava/lang/String;)V
    .locals 0
    .parameter "profession"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setQa_list(Ljava/lang/String;)V
    .locals 0
    .parameter "qa_list"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .locals 0
    .parameter "realname"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setSalary(Ljava/lang/String;)V
    .locals 0
    .parameter "salary"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .parameter "sign"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public setSports_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "sports_interest"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setStar_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "star_interest"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .parameter "tags"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public setTicket_num(Ljava/lang/String;)V
    .locals 0
    .parameter "ticket_num"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setVip_time(Ljava/lang/String;)V
    .locals 0
    .parameter "vip_time"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setWx_openid(Ljava/lang/String;)V
    .locals 0
    .parameter "wx_openid"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    iget v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    iget v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 628
    return-void
.end method
