.class Lcom/wanduoduo/adapter/index/SelectLocationAdapter$1;
.super Ljava/lang/Object;
.source "SelectLocationAdapter.java"

# interfaces
.implements Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

.field final synthetic val$tvLocation:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/index/SelectLocationAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$1;->val$tvLocation:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationSuccess(Lcom/baidu/location/BDLocation;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$1;->val$tvLocation:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$1;->val$tvLocation:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 108
    return-void
.end method
