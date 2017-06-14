.class public Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ID_CARD:I = 0xa

.field private static final QAREQUEST:I = 0xf


# instance fields
.field alreadyPicLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field answerLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

.field private gender:I

.field private infoEditPersonAdapter:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;

.field private infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

.field private isCanEdit:Z

.field lvAddQuestion:Lcom/wanduoduo/widget/MyListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0260
        }
    .end annotation
.end field

.field mNineLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mgvGift:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0251
        }
    .end annotation
.end field

.field mgvInfo:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0249
        }
    .end annotation
.end field

.field mgvPicWall:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0246
        }
    .end annotation
.end field

.field myFoodLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private myNickname:Ljava/lang/String;

.field mySingerLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mySportLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field myTagLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field myTravelLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private picWallAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

.field private questionAnswerAdapter:Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;

.field questionLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field relAddQuestion:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e025f
        }
    .end annotation
.end field

.field relFood:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e025a
        }
    .end annotation
.end field

.field relMyTag:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0253
        }
    .end annotation
.end field

.field relSinger:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0258
        }
    .end annotation
.end field

.field relSport:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0256
        }
    .end annotation
.end field

.field relTravel:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e025c
        }
    .end annotation
.end field

.field tvEditInfo:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0247
        }
    .end annotation
.end field

.field tvFood:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e025b
        }
    .end annotation
.end field

.field tvID:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0248
        }
    .end annotation
.end field

.field tvIdCard:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e024e
        }
    .end annotation
.end field

.field tvMyIntrest:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0255
        }
    .end annotation
.end field

.field tvMyTag:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0254
        }
    .end annotation
.end field

.field tvPhone:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e024b
        }
    .end annotation
.end field

.field tvPicNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0245
        }
    .end annotation
.end field

.field tvSinger:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0259
        }
    .end annotation
.end field

.field tvSkill:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0199
        }
    .end annotation
.end field

.field tvSport:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0257
        }
    .end annotation
.end field

.field tvTitleMyGift:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0250
        }
    .end annotation
.end field

.field tvTitleMyTag:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0252
        }
    .end annotation
.end field

.field tvTravel:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e025d
        }
    .end annotation
.end field

.field tvVideo:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00dc
        }
    .end annotation
.end field

.field tvWenDa:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e025e
        }
    .end annotation
.end field

.field private user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/wanduoduo/widget/MyHandler;)V
    .locals 1
    .parameter "isCanEdit"
    .parameter "user_id"
    .parameter "myHandler"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mResults:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTagLists:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySportLists:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myFoodLists:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySingerLists:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTravelLists:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    .line 144
    iput-boolean p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    .line 145
    iput-object p2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->user_id:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    .line 147
    return-void
.end method

.method static synthetic access$102(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myNickname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getInvatePicMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)Lcom/wanduoduo/widget/MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private alertDialog()V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u60a8\u7684\u8eab\u4efd\u9a8c\u8bc1\u6b63\u5728\u7b49\u5f85\u540e\u53f0\u5ba1\u6838\uff0c\u6211\u4eec\u5c06\u5c3d\u5feb\u5b8c\u6210\u4f60\u7684\u5ba1\u6838"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 422
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$7;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$7;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 428
    return-void
.end method

.method private getInvatePicMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "token"

    const-string v3, "token"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myNickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myNickname:Ljava/lang/String;

    .line 265
    .local v1, s:Ljava/lang/String;
    :goto_0
    const-string v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u9080\u8bf7\u60a8\u4e0a\u4f20\u7167\u7247"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->user_id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v2, "system_create_time"

    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getSdfTime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-object v0

    .line 264
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getSdfTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH;mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 274
    .local v0, l:J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initFood(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 4
    .parameter "infoBean"

    .prologue
    .line 589
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getFood_interest()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, food_interest:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myFoodLists:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->selectedTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvFood:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-nez v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relFood:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initSinger(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 4
    .parameter "infoBean"

    .prologue
    .line 601
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getStar_interest()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, singer_interest:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySingerLists:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->selectedTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSinger:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-nez v2, :cond_0

    .line 607
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSinger:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initSport(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 4
    .parameter "infoBean"

    .prologue
    .line 639
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getSports_interest()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, sports_interest:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySportLists:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->selectedTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSport:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-nez v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSport:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initTags(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 4
    .parameter "infoBean"

    .prologue
    const/16 v3, 0x8

    .line 655
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCharacter_interest()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, character_interest:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTagLists:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->selectedTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvMyTag:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-nez v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relMyTag:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 662
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTitleMyTag:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initTravel(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 4
    .parameter "infoBean"

    .prologue
    .line 577
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getPlace_interest()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, place_interest:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTravelLists:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->selectedTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTravel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-nez v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relTravel:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private invateUpLoadPic()V
    .locals 4

    .prologue
    .line 235
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u662f\u5426\u9080\u8bf7\u5bf9\u65b9\u4e0a\u4f20\u7167\u7247?"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 237
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$4;

    invoke-direct {v3, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$4;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 259
    return-void
.end method

.method private jumpToTagActivity([Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "allTag"
    .parameter
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, selectedTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v1, "allTag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v1, "selectedTags"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v0, p3}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 436
    return-void
.end method

.method private selectedTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter "character_interest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 670
    .local v3, sb:Ljava/lang/StringBuffer;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 671
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 672
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 679
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 679
    const-string v4, ""

    goto :goto_1
.end method

.method private setAnswerQuestionListView(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 7
    .parameter "infoBean"

    .prologue
    .line 619
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getQa_list()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, qa_list:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 622
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 623
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 624
    iget-object v4, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "q"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v4, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "a"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_0
    iget-object v4, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionAnswerAdapter:Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;->addData(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private setGiftWall(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 2
    .parameter "infoBean"

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getUser_item()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getUser_item()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTitleMyGift:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvGift:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setVisibility(I)V

    .line 551
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    .line 552
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvGift:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getUser_item()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->setData(Ljava/util/List;)V

    .line 556
    :cond_0
    return-void
.end method

.method private setInitCanEidt()V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionAnswerAdapter:Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;

    .line 282
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->lvAddQuestion:Lcom/wanduoduo/widget/MyListView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionAnswerAdapter:Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->lvAddQuestion:Lcom/wanduoduo/widget/MyListView;

    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;

    invoke-direct {v1, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$6;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvEditInfo:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relAddQuestion:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNineData(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 3
    .parameter "infoBean"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 687
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "\u7537"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getConstellation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u672a\u77e5"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    const-string v0, "1"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getLoveinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    const-string v1, "\u5355\u8eab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :goto_2
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u672a\u77e5"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getProfession()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u672a\u77e5"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getSalary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u672a\u77e5"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoEditPersonAdapter:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->rePlaceData(Ljava/util/List;)V

    .line 705
    return-void

    .line 688
    :cond_0
    const-string v0, "\u5973"

    goto/16 :goto_0

    .line 690
    :cond_1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getConstellation()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 694
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getLoveinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    const-string v1, "\u5df2\u5a5a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 696
    :cond_3
    const-string v0, "3"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getLoveinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 697
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    const-string v1, "\u4fdd\u5bc6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 699
    :cond_4
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    const-string v1, "\u672a\u77e5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 701
    :cond_5
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 702
    :cond_6
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getProfession()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 703
    :cond_7
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getSalary()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private setPicWall()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPicNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/12)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    new-instance v0, Lcom/wanduoduo/adapter/PhotoPicAdapter;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    const/16 v2, 0xc

    new-instance v4, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$2;

    invoke-direct {v4, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$2;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    new-array v5, v3, [Z

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    aput-boolean v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;-><init>(Ljava/util/List;IILcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;[Z)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->picWallAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    .line 184
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvPicWall:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->picWallAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvPicWall:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    return-void
.end method

.method private setTvRenZheng(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter "tv"
    .parameter "s"

    .prologue
    .line 564
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    :cond_0
    const-string v0, "\u672a\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v0, :cond_2

    .line 569
    const-string v0, "\u70b9\u51fb\u4fee\u6539"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 571
    :cond_2
    const-string v0, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTvRenZhengIdCard(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tv"
    .parameter "idcard_ok"
    .parameter "idcard_pic"

    .prologue
    const v2, 0x7f0d002b

    const v1, 0x7f0d001c

    .line 497
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v0, :cond_2

    .line 498
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const-string v0, "*\u5f85\u5ba1\u6838"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    :goto_0
    return-void

    .line 501
    :cond_0
    const-string v0, "1"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string v0, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 505
    :cond_1
    const-string v0, "\u672a\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 509
    :cond_2
    const-string v0, "1"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    const-string v0, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 513
    :cond_3
    const-string v0, "\u672a\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTvRenZhengVideo(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tv"
    .parameter "video"
    .parameter "video_back"

    .prologue
    const v2, 0x7f0d002b

    const v1, 0x7f0d001c

    .line 520
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v0, :cond_2

    .line 521
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "*\u5f85\u5ba1\u6838"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    const-string v0, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 528
    :cond_1
    const-string v0, "\u672a\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 532
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 533
    const-string v0, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 536
    :cond_3
    const-string v0, "\u672a\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTvResult(Landroid/content/Intent;Landroid/widget/TextView;ILjava/util/ArrayList;)V
    .locals 4
    .parameter "data"
    .parameter "tv"
    .parameter "stringResID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/widget/TextView;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 869
    const-string v1, "selectedTagLists"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 870
    .local v0, selectedTagLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 871
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 873
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    .end local v0           #selectedTagLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 875
    .restart local v0       #selectedTagLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "pic"

    .prologue
    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTitleMyGift:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvGift:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setVisibility(I)V

    .line 751
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    .line 752
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvGift:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoGiftShowAdapter:Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->addNewGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 151
    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$1;)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoEditPersonAdapter:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;

    .line 157
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvInfo:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoEditPersonAdapter:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setInitCanEidt()V

    .line 160
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setPicWall()V

    .line 162
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvID:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$1;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V

    .line 170
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 805
    sparse-switch p1, :sswitch_data_0

    .line 864
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 865
    :cond_1
    return-void

    .line 807
    :sswitch_0
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->picWallAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v3}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    .line 808
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPicNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/12)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 811
    :sswitch_1
    if-eqz p3, :cond_1

    .line 814
    const-string v3, "selector_results"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mResults:Ljava/util/List;

    .line 815
    sget-boolean v3, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mResults:Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 816
    :cond_2
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 817
    .local v2, result:Ljava/lang/String;
    sget-object v4, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 819
    .end local v2           #result:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->picWallAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v3}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    .line 820
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPicNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/12)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 823
    :sswitch_2
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvMyTag:Landroid/widget/TextView;

    const v4, 0x7f0701eb

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTagLists:Ljava/util/ArrayList;

    invoke-direct {p0, p3, v3, v4, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvResult(Landroid/content/Intent;Landroid/widget/TextView;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 826
    :sswitch_3
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSport:Landroid/widget/TextView;

    const v4, 0x7f0701f8

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySportLists:Ljava/util/ArrayList;

    invoke-direct {p0, p3, v3, v4, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvResult(Landroid/content/Intent;Landroid/widget/TextView;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 829
    :sswitch_4
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSinger:Landroid/widget/TextView;

    const v4, 0x7f0701f5

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySingerLists:Ljava/util/ArrayList;

    invoke-direct {p0, p3, v3, v4, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvResult(Landroid/content/Intent;Landroid/widget/TextView;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 832
    :sswitch_5
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvFood:Landroid/widget/TextView;

    const v4, 0x7f0701f7

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myFoodLists:Ljava/util/ArrayList;

    invoke-direct {p0, p3, v3, v4, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvResult(Landroid/content/Intent;Landroid/widget/TextView;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 835
    :sswitch_6
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTravel:Landroid/widget/TextView;

    const v4, 0x7f0701f6

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTravelLists:Ljava/util/ArrayList;

    invoke-direct {p0, p3, v3, v4, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvResult(Landroid/content/Intent;Landroid/widget/TextView;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 838
    :sswitch_7
    const-string v3, "mNineLists"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 839
    .local v0, mNineLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 840
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 841
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 842
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->infoEditPersonAdapter:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->rePlaceData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 846
    .end local v0           #mNineLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    if-eqz p3, :cond_0

    .line 847
    const-string v3, "pic"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, pic:Ljava/lang/String;
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    if-eqz v3, :cond_0

    .line 849
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/InfoBean$DataBean;->setIdcard_pic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    .end local v1           #pic:Ljava/lang/String;
    :sswitch_9
    if-eqz p3, :cond_0

    .line 855
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 856
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 857
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    const-string v4, "questionLists"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 858
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    const-string v4, "answerLists"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 859
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionAnswerAdapter:Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;

    if-eqz v3, :cond_0

    .line 860
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionAnswerAdapter:Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/wanduoduo/adapter/info/QuestionAnswerAdapter;->addData(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 805
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0xa -> :sswitch_8
        0xf -> :sswitch_9
        0x271a -> :sswitch_0
        0x2766 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0247,
            0x7f0e0253,
            0x7f0e0256,
            0x7f0e0258,
            0x7f0e025a,
            0x7f0e025c,
            0x7f0e025f,
            0x7f0e024a,
            0x7f0e024c,
            0x7f0e024d,
            0x7f0e024f
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 309
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v15, Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    invoke-direct {v4, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v4, intent1:Landroid/content/Intent;
    const-string v14, "mNineLists"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 311
    const/4 v14, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 314
    .end local v4           #intent1:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    .line 315
    const/4 v14, 0x0

    new-array v11, v14, [Ljava/lang/String;

    .line 316
    .local v11, stringArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->gender:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 321
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTagLists:Ljava/util/ArrayList;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->jumpToTagActivity([Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 319
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0015

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 325
    .end local v11           #stringArray:[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0017

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, sportArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySportLists:Ljava/util/ArrayList;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->jumpToTagActivity([Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 331
    .end local v10           #sportArray:[Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0016

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, singertArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mySingerLists:Ljava/util/ArrayList;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->jumpToTagActivity([Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 337
    .end local v9           #singertArray:[Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0014

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, foodArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myFoodLists:Ljava/util/ArrayList;

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->jumpToTagActivity([Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 343
    .end local v2           #foodArray:[Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0018

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 345
    .local v12, travelArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myTravelLists:Ljava/util/ArrayList;

    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->jumpToTagActivity([Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 349
    .end local v12           #travelArray:[Ljava/lang/String;
    :pswitch_7
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v15, Lcom/wanduoduo/ui/info/InfoQuestionActivity;

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v3, intent:Landroid/content/Intent;
    const-string v14, "questionLists"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->questionLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 351
    const-string v14, "answerLists"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 352
    const/16 v14, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 355
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    if-eqz v14, :cond_0

    .line 356
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v15, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v7, intentPhone:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    invoke-virtual {v14}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMobile()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 360
    :cond_2
    const-string v14, "phone"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    invoke-virtual {v15}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMobile()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v14, "type"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 367
    .end local v7           #intentPhone:Landroid/content/Intent;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    if-eqz v14, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    invoke-virtual {v14}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 369
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    .line 370
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v16, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 372
    :cond_3
    const-string v13, ""

    .line 374
    .local v13, video_url:Ljava/lang/String;
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    invoke-virtual {v15}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v15, "video_url"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 378
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_4

    .line 379
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v15, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    invoke-direct {v5, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v5, intent2:Landroid/content/Intent;
    const-string v14, "isCanEdit"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    const-string v14, "path"

    invoke-virtual {v5, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 375
    .end local v5           #intent2:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 384
    .end local v1           #e:Lorg/json/JSONException;
    :cond_4
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v15, Lcom/wanduoduo/ui/index/VideoPlayActivity;

    invoke-direct {v5, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .restart local v5       #intent2:Landroid/content/Intent;
    const-string v14, "video"

    invoke-virtual {v5, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 392
    .end local v5           #intent2:Landroid/content/Intent;
    .end local v13           #video_url:Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    if-eqz v14, :cond_0

    .line 393
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v15, Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v6, intentCard:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    invoke-virtual {v14}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_pic()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 395
    const/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 397
    :cond_5
    const-string v14, "0"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    invoke-virtual {v15}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alertDialog()V

    goto/16 :goto_0

    .line 400
    :cond_6
    const-string v14, "ishava"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    const/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 407
    .end local v6           #intentCard:Landroid/content/Intent;
    :pswitch_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    if-eqz v14, :cond_0

    .line 408
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mContext:Landroid/content/Context;

    const-class v15, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;

    invoke-direct {v8, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v8, intentSkill:Landroid/content/Intent;
    const-string v14, "type"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    invoke-virtual {v15}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x7f0e0247
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/high16 v6, 0x1000

    const/4 v5, 0x2

    .line 194
    iget-boolean v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_0

    .line 196
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    new-array v2, v5, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u76f8\u673a\u62cd\u7167"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u76f8\u518c\u9009\u62e9"

    aput-object v4, v2, v3

    .line 198
    .local v2, item:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$3;

    invoke-direct {v3, p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$3;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 229
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2           #item:[Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "kind"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    const-string v4, "piclist"

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 214
    const-string v4, "bimp"

    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 215
    const-string v3, "position"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->invateUpLoadPic()V

    goto :goto_0

    .line 222
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    const-string v4, "piclist"

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 225
    const-string v3, "position"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public setData(Lcom/wanduoduo/bean/InfoBean$DataBean;)V
    .locals 11
    .parameter "infoBean"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    .line 444
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->dataBean:Lcom/wanduoduo/bean/InfoBean$DataBean;

    .line 445
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getPic_wall()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, pic_wall:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 447
    const/4 v2, 0x0

    .line 449
    .local v2, jsonArray:Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .local v3, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 451
    iget-object v6, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 456
    .end local v1           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    :goto_1
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPicNum:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sget-object v8, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/12)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->picWallAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    iget-object v6, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->addAlreadyPic(Ljava/util/List;)V

    .line 459
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v5

    iput v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->gender:I

    .line 460
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relMyTag:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 461
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSport:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 462
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSinger:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 463
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relFood:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 464
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relTravel:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 466
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setNineData(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 467
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setAnswerQuestionListView(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->initTags(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->initSport(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->initSinger(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 472
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->initFood(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 473
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->initTravel(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 475
    iget-boolean v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCharacter_interest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getFood_interest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 476
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getPlace_interest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getSports_interest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getStar_interest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvMyIntrest:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_2
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPhone:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMobile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvRenZheng(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 481
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvVideo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo_back()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvRenZhengVideo(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvIdCard:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_pic()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvRenZhengIdCard(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSkill:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdentify_ok()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setTvRenZheng(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setGiftWall(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 492
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getQa_list()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->isCanEdit:Z

    if-nez v5, :cond_3

    .line 493
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvWenDa:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    :cond_3
    return-void

    .line 453
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 453
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .restart local v1       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    goto :goto_2
.end method

.method public upLoadPic()V
    .locals 4

    .prologue
    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v0, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 710
    const-string v1, "pic_upload"

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    new-instance v3, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Ljava/util/ArrayList;)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostPic(Ljava/lang/String;Ljava/util/List;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 739
    return-void
.end method
