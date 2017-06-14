.class public Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "ActiviPublishSelectPlaceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;,
        Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;
    }
.end annotation


# instance fields
.field private activiPublishSelectPlaceAdapter:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

.field private lat:D

.field private lng:D

.field lvPlace:Landroid/widget/ListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00c6
        }
    .end annotation
.end field

.field private pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 29
    iput-wide v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->lat:D

    .line 30
    iput-wide v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->lng:D

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->activiPublishSelectPlaceAdapter:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)Lcom/wanduoduo/bean/PubSelectPlaceBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f04001c

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u5b9a\u4f4d\u7ed3\u679c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->activiPublishSelectPlaceAdapter:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

    .line 43
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->lvPlace:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->activiPublishSelectPlaceAdapter:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    new-instance v0, Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-direct {v0}, Lcom/wanduoduo/bean/PubSelectPlaceBean;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    .line 46
    new-instance v0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/BDLocationUtils;->start(Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;)V

    .line 55
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->lvPlace:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 60
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, ""

    .line 61
    .local v1, name:Ljava/lang/String;
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->activiPublishSelectPlaceAdapter:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->poiList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->activiPublishSelectPlaceAdapter:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->poiList:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/Poi;

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-virtual {v2, v1}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->setPlace(Ljava/lang/String;)V

    .line 66
    const-string v2, "pubSelectPlaceBean"

    iget-object v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->setResult(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->finish()V

    .line 69
    return-void
.end method
