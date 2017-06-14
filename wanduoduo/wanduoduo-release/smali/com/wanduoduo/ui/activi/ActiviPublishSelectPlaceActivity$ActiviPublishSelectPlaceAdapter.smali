.class Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiviPublishSelectPlaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiviPublishSelectPlaceAdapter"
.end annotation


# instance fields
.field public poiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, poiList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/location/Poi;>;"
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->poiList:Ljava/util/List;

    .line 105
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->poiList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->poiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400af

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    :cond_0
    #calls: Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;->access$300(Landroid/view/View;)Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;

    move-result-object v0

    .line 94
    .local v0, holder:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;
    iget-object v1, v0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;->tvItemHead:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    if-nez p1, :cond_1

    .line 96
    iget-object v1, v0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;->tvPlace:Landroid/widget/TextView;

    const-string v2, "\u4e0d\u663e\u793a\u5730\u7406\u4f4d\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    return-object p2

    .line 98
    :cond_1
    iget-object v2, v0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ViewHolder;->tvPlace:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->poiList:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/Poi;

    invoke-virtual {v1}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
