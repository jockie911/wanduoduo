.class public Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;
.super Ljava/lang/Object;
.source "ManageServerSkillBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;
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
            "Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;",
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

.field private identify_ok:Ljava/lang/String;

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
    .line 654
    new-instance v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean$1;

    invoke-direct {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->height:I

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->gender:I

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->identify_ok:Ljava/lang/String;

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    .line 652
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCoin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    return-object v0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFood_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->gender:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdcard_ok()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentify_ok()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->identify_ok:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_pro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_system()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_vip()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    return v0
.end method

.method public getLoveinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_wall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getProfession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    return-object v0
.end method

.method public getQa_list()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getSalary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSports_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getStar_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    return-object v0
.end method

.method public getWx_openid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setCharacter_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "character_interest"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0
    .parameter "city_id"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setCoin(Ljava/lang/String;)V
    .locals 0
    .parameter "coin"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setConstellation(Ljava/lang/String;)V
    .locals 0
    .parameter "constellation"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_pic"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setFood_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "food_interest"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 386
    iput p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->gender:I

    .line 387
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 362
    iput p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->height:I

    .line 363
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setIdcard_ok(Ljava/lang/String;)V
    .locals 0
    .parameter "idcard_ok"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setIdentify_ok(Ljava/lang/String;)V
    .locals 0
    .parameter "identify_ok"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->identify_ok:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public setIs_pro(Ljava/lang/String;)V
    .locals 0
    .parameter "is_pro"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setIs_system(Ljava/lang/String;)V
    .locals 0
    .parameter "is_system"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setIs_vip(I)V
    .locals 0
    .parameter "is_vip"

    .prologue
    .line 562
    iput p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    .line 563
    return-void
.end method

.method public setLoveinfo(Ljava/lang/String;)V
    .locals 0
    .parameter "loveinfo"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0
    .parameter "money"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setPic_wall(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_wall"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setPlace_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "place_interest"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setProfession(Ljava/lang/String;)V
    .locals 0
    .parameter "profession"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setQa_list(Ljava/lang/String;)V
    .locals 0
    .parameter "qa_list"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .locals 0
    .parameter "realname"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setSalary(Ljava/lang/String;)V
    .locals 0
    .parameter "salary"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .parameter "sign"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setSports_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "sports_interest"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setStar_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "star_interest"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .parameter "tags"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setTicket_num(Ljava/lang/String;)V
    .locals 0
    .parameter "ticket_num"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setVip_time(Ljava/lang/String;)V
    .locals 0
    .parameter "vip_time"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setWx_openid(Ljava/lang/String;)V
    .locals 0
    .parameter "wx_openid"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->money:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->coin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_pro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->wx_openid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->realname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->profession:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->salary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    iget v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->loveinfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->constellation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    iget v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->city_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->tags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->video:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_system:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->food_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->star_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->place_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->sports_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->character_interest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->cover_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->pic_wall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->qa_list:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->ticket_num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->vip_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->idcard_ok:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->identify_ok:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->is_vip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    return-void
.end method
