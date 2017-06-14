.class public Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;,
        Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;,
        Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;
    }
.end annotation


# static fields
.field private static final FOLLOW:I = 0x2710

.field private static final UNFOLLOW:I = 0x2711


# instance fields
.field private allGiftAdapter:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;

.field private allGiftListBean:Lcom/wanduoduo/bean/AllGiftListBean;

.field private blackLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;

.field civAvatar:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0122
        }
    .end annotation
.end field

.field contentContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00f0
        }
    .end annotation
.end field

.field private dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

.field fmSc:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e019b
        }
    .end annotation
.end field

.field gvSendGift:Landroid/widget/GridView;

.field private infoBean:Lcom/wanduoduo/bean/InfoBean;

.field private infoEditPersonCenterFragment:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

.field private isBlack:Z

.field private isCanEdit:Z

.field ivChangeCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0192
        }
    .end annotation
.end field

.field ivCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0191
        }
    .end annotation
.end field

.field ivRightTitleBar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e2
        }
    .end annotation
.end field

.field llBaseTitleBar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ec
        }
    .end annotation
.end field

.field llChattingLove:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e019d
        }
    .end annotation
.end field

.field private myCoin:I

.field public myHandler:Lcom/wanduoduo/widget/MyHandler;

.field relLove:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0103
        }
    .end annotation
.end field

.field relManageSkill:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e019c
        }
    .end annotation
.end field

.field tvActivi:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e014a
        }
    .end annotation
.end field

.field tvLove:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0104
        }
    .end annotation
.end field

.field tvPersonCenter:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0194
        }
    .end annotation
.end field

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
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

.field private user_id:Ljava/lang/String;

.field vActivi:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0197
        }
    .end annotation
.end field

.field vPersonCenter:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0195
        }
    .end annotation
.end field

.field vSkill:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e019a
        }
    .end annotation
.end field

.field private window:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myCoin:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackLists:Ljava/util/List;

    .line 206
    new-instance v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Lcom/wanduoduo/bean/AllGiftListBean;)Lcom/wanduoduo/bean/AllGiftListBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->allGiftListBean:Lcom/wanduoduo/bean/AllGiftListBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->jumpToChargeCoin()V

    return-void
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getBlackMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myCoin:I

    return v0
.end method

.method static synthetic access$1202(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myCoin:I

    return p1
.end method

.method static synthetic access$1300(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->follow(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoEditPersonCenterFragment:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoWatchBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Lcom/wanduoduo/bean/InfoWatchBean;)Lcom/wanduoduo/bean/InfoWatchBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->showIvRightDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z

    return v0
.end method

.method static synthetic access$902(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z

    return p1
.end method

.method private changePicCoverDialog()V
    .locals 4

    .prologue
    .line 403
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u4f1a\u5458\u4eab\u53d7\u6b64\u9879\u670d\u52a1\uff0c\u662f\u5426\u5145\u503c\u4f1a\u5458?"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 405
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$6;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$6;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$5;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$5;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    .line 413
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 419
    return-void
.end method

.method private follow(ILjava/lang/String;)V
    .locals 4
    .parameter "relationStatus"
    .parameter "user_id"

    .prologue
    .line 451
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 452
    :cond_0
    const-string v0, "user_unfollow"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "user_id"

    .line 453
    invoke-static {v1, p2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    const/16 v3, 0x2711

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V

    .line 452
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 458
    :goto_0
    return-void

    .line 455
    :cond_1
    const-string v0, "user_follow"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "user_id"

    .line 456
    invoke-static {v1, p2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    const/16 v3, 0x2710

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V

    .line 455
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0
.end method

.method private getBlackMap()Ljava/util/Map;
    .locals 4
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
    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    return-object v0
.end method

.method private getGiftList()V
    .locals 3

    .prologue
    .line 155
    const-string v0, "item_list"

    const/4 v1, 0x0

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 167
    return-void
.end method

.method private getMap()Ljava/util/Map;
    .locals 4
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
    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-boolean v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isCanEdit:Z

    if-nez v1, :cond_0

    .line 200
    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    return-object v0
.end method

.method private getMyCoin()V
    .locals 4

    .prologue
    .line 148
    const-string v0, "user_info"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 149
    return-void
.end method

.method private getSendGiftMap(Ljava/lang/String;I)Ljava/util/Map;
    .locals 4
    .parameter "item_id"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 565
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "item_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v1, "num"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    return-object v0
.end method

.method private jumpToChargeCoin()V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/PlayCoinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "coin"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    return-void
.end method

.method private requestBlackPerson()V
    .locals 4

    .prologue
    .line 396
    const-string v0, "user_blacklist"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 397
    return-void
.end method

.method private selectFragment(I)V
    .locals 6
    .parameter "currentPosition"

    .prologue
    const v5, 0x7f0d001c

    const v4, 0x7f0d001b

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 573
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->currentSelectedPosition:I

    iput v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->beforeSelectedPosition:I

    .line 574
    iput p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->currentSelectedPosition:I

    .line 575
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vPersonCenter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vSkill:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vActivi:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvSkill:Landroid/widget/TextView;

    const v1, 0x7f020094

    invoke-static {v0, v4, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 579
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvActivi:Landroid/widget/TextView;

    const v1, 0x7f02008a

    invoke-static {v0, v4, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 580
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvPersonCenter:Landroid/widget/TextView;

    const v1, 0x7f020090

    invoke-static {v0, v4, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 582
    if-nez p1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvPersonCenter:Landroid/widget/TextView;

    const v1, 0x7f020091

    invoke-static {v0, v5, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 584
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vPersonCenter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-boolean v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isCanEdit:Z

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relManageSkill:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 591
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->fmSc:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 593
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e00f0

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getFragment()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 615
    :goto_1
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llChattingLove:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvActivi:Landroid/widget/TextView;

    const v1, 0x7f02008b

    invoke-static {v0, v5, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 596
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vActivi:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relManageSkill:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llChattingLove:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->fmSc:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 602
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e019b

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getFragment()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvSkill:Landroid/widget/TextView;

    const v1, 0x7f020095

    invoke-static {v0, v5, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 605
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vSkill:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-boolean v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isCanEdit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relManageSkill:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llChattingLove:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->fmSc:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 612
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e019b

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getFragment()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_1
.end method

.method private sendDataRequest()V
    .locals 4

    .prologue
    .line 193
    const-string v0, "user_info"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 194
    return-void
.end method

.method private setInitCanEdit()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 173
    iget-boolean v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isCanEdit:Z

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u4fdd\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvRightTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llChattingLove:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llChattingLove:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    :cond_1
    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivChangeCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relManageSkill:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setRelationShip()V
    .locals 5

    .prologue
    .line 425
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getRelation_status()I

    move-result v1

    .line 426
    .local v1, relation_status:I
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 428
    :cond_0
    const-string v2, "\u662f\u5426\u53d6\u6d88\u5173\u6ce8\uff1f"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 432
    :goto_0
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$7;

    invoke-direct {v4, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$7;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    .line 438
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 444
    return-void

    .line 430
    :cond_1
    const-string v2, "\u662f\u5426\u5173\u6ce8\uff1f"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showIvRightDialog()V
    .locals 4

    .prologue
    .line 343
    iget-boolean v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z

    if-nez v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z

    .line 351
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .line 352
    .local v0, msg:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z

    if-eqz v2, :cond_2

    .line 353
    const-string v0, "\u662f\u5426\u53d6\u6d88\u62c9\u9ed1?"

    .line 357
    :goto_0
    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-static {p0, v0, v2}, Lcom/wanduoduo/utils/DialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/wanduoduo/utils/DialogUtils$DialogIF;)V

    .line 382
    return-void

    .line 355
    :cond_2
    const-string v0, "\u662f\u5426\u52a0\u5165\u9ed1\u540d\u5355?"

    goto :goto_0
.end method


# virtual methods
.method protected getFragment()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->mFragment:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoEditPersonCenterFragment:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->getFragment()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f040046

    return v0
.end method

.method public helloEventBus(Lcom/wanduoduo/eventclass/InfoRefreshEventClass;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lde/greenrobot/event/Subscribe;
        threadMode = .enum Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;
    .end annotation

    .prologue
    .line 633
    const-string v0, "\u6536\u5230\u6d88\u606f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->sendDataRequest()V

    .line 635
    return-void
.end method

.method protected initData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isCanEdit:Z

    .line 127
    iget-boolean v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isCanEdit:Z

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-boolean v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isCanEdit:Z

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-direct {v1, v2, v3, v4}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;-><init>(ZLjava/lang/String;Lcom/wanduoduo/widget/MyHandler;)V

    iput-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoEditPersonCenterFragment:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    .line 136
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->sendDataRequest()V

    .line 137
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->setInitCanEdit()V

    .line 139
    invoke-direct {p0, v5}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->selectFragment(I)V

    .line 140
    const/4 v1, -0x1

    iput v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->beforeSelectedPosition:I

    .line 141
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getGiftList()V

    .line 143
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getMyCoin()V

    .line 145
    return-void

    .line 130
    :cond_0
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 694
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getMyCoin()V

    .line 696
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 697
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->sendDataRequest()V

    .line 698
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 699
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0193,
            0x7f0e0198,
            0x7f0e019c,
            0x7f0e01ef,
            0x7f0e00d9,
            0x7f0e019e,
            0x7f0e0103,
            0x7f0e0192,
            0x7f0e00e2,
            0x7f0e0196
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 278
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->selectFragment(I)V

    goto :goto_0

    .line 281
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->selectFragment(I)V

    goto :goto_0

    .line 284
    :sswitch_2
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->selectFragment(I)V

    goto :goto_0

    .line 287
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    :sswitch_4
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "\u6b63\u5728\u4e0a\u4f20\u4e2d..."

    aput-object v4, v3, v6

    invoke-static {p0, v3}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoEditPersonCenterFragment:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-virtual {v3}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->upLoadPic()V

    goto :goto_0

    .line 294
    :sswitch_5
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v3, :cond_0

    .line 296
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/model/UserInfo;

    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongIM;->setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 297
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5}, Lio/rong/imkit/RongIM;->startPrivateChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :sswitch_6
    const/4 v3, 0x0

    const v4, 0x7f0400c5

    invoke-static {p0, v3, v4}, Lcom/wanduoduo/utils/PopWindowUtils;->getWindow(Landroid/content/Context;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->window:Landroid/widget/PopupWindow;

    .line 301
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->window:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvTitle:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 302
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0e0305

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->gvSendGift:Landroid/widget/GridView;

    .line 304
    const v3, 0x7f0e0112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 305
    .local v1, tvCoin:Landroid/widget/TextView;
    const v3, 0x7f0e0306

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    .local v0, tvCharge:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myCoin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$3;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$3;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->allGiftListBean:Lcom/wanduoduo/bean/AllGiftListBean;

    if-eqz v3, :cond_0

    .line 315
    new-instance v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->allGiftListBean:Lcom/wanduoduo/bean/AllGiftListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AllGiftListBean;->getData()Lcom/wanduoduo/bean/AllGiftListBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Ljava/util/List;)V

    iput-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->allGiftAdapter:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;

    .line 316
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->gvSendGift:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->allGiftAdapter:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->gvSendGift:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 321
    .end local v0           #tvCharge:Landroid/widget/TextView;
    .end local v1           #tvCoin:Landroid/widget/TextView;
    .end local v2           #v:Landroid/view/View;
    :sswitch_7
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->setRelationShip()V

    goto/16 :goto_0

    .line 324
    :sswitch_8
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIs_vip()I

    move-result v3

    if-nez v3, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->changePicCoverDialog()V

    goto/16 :goto_0

    .line 331
    :sswitch_9
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;

    if-nez v3, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->requestBlackPerson()V

    goto/16 :goto_0

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->showIvRightDialog()V

    goto/16 :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x7f0e00d9 -> :sswitch_5
        0x7f0e00e2 -> :sswitch_9
        0x7f0e0103 -> :sswitch_7
        0x7f0e0192 -> :sswitch_8
        0x7f0e0193 -> :sswitch_0
        0x7f0e0196 -> :sswitch_1
        0x7f0e0198 -> :sswitch_2
        0x7f0e019c -> :sswitch_3
        0x7f0e019e -> :sswitch_6
        0x7f0e01ef -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .parameter "savedInstanceState"
    .parameter "persistentState"

    .prologue
    .line 639
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 640
    invoke-super {p0, p1, p2}, Lcom/wanduoduo/base/BaseActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 641
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 645
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 647
    :cond_0
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onDestroy()V

    .line 648
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 544
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->allGiftAdapter:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$AllGiftAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    .line 545
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myCoin:I

    if-le v0, v1, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->jumpToChargeCoin()V

    .line 561
    :goto_0
    return-void

    .line 550
    :cond_0
    const-string v0, "send_item"

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->getSendGiftMap(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$9;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$9;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0
.end method
