.class Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;
.super Ljava/lang/Object;
.source "BuyServiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/info/BuyServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickListener"
.end annotation


# instance fields
.field private clickStatus:I

.field private position:I

.field final synthetic this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;II)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "clickStatus"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    .line 230
    iput p3, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->clickStatus:I

    .line 231
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/high16 v4, 0x1000

    .line 235
    iget v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->clickStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 237
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    const-string v2, "playerInfoBean"

    iget-object v3, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget v4, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    #calls: Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->getPlayerInfoBean(I)Lcom/wanduoduo/bean/PlayerInfoBean;
    invoke-static {v3, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->access$100(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;I)Lcom/wanduoduo/bean/PlayerInfoBean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const-string v3, "create_time"

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    iget v4, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_create_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    .end local v0           #intent1:Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    const-string v3, "order_id"

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    iget v4, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v3, "gift_id"

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    iget v4, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getGift_tag_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v3, "avatar"

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    iget v4, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v3, "nickname"

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    iget v4, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 255
    .end local v1           #intent2:Landroid/content/Intent;
    :sswitch_2
    const-string v3, "order_confirm"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v4, "order_id"

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    iget v5, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v2, "token"

    const-string v4, "token"

    const-string v5, ""

    .line 256
    invoke-static {v4, v5}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;

    iget-object v5, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    const/4 v6, 0x1

    iget v7, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;->position:I

    invoke-direct {v4, v5, v6, v7}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;-><init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;II)V

    .line 255
    invoke-static {v3, v2, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto/16 :goto_0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method
