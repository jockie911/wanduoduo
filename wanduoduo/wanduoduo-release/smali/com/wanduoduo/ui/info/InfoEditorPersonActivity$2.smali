.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;
.super Lcom/wanduoduo/widget/MyHandler;
.source "InfoEditorPersonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f0d0021

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 209
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 210
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_4

    .line 211
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$200(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v4}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relLove:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 213
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v4}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v4, v4, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 214
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoEditPersonCenterFragment:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;
    invoke-static {v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$300(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v4}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setData(Lcom/wanduoduo/bean/InfoBean$DataBean;)V

    .line 216
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getRelation_status()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const-string v3, "\u5df2\u5173\u6ce8"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const v3, 0x7f020120

    invoke-static {v2, v6, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 224
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCover_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    new-instance v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2$1;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/wanduoduo/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_2
    :goto_1
    return-void

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getRelation_status()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 220
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const-string v3, "\u597d\u53cb"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const v3, 0x7f02011f

    invoke-static {v2, v6, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 239
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_5

    .line 240
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, pic_wall:Ljava/lang/String;
    const-string v3, "user_info"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v4, "token"

    const-string v5, "token"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v4, "pic_wall"

    .line 243
    invoke-static {v4, v1}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;

    iget-object v6, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v5, v6, v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V

    .line 242
    invoke-static {v3, v4, v5}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_1

    .line 244
    .end local v1           #pic_wall:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x5

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_6

    .line 245
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoEditPersonCenterFragment:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$300(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;
    invoke-static {v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$400(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;
    invoke-static {v4}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$400(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->dataListBean:Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;
    invoke-static {v5}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$400(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->addGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->window:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$500(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->window:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$500(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_1

    .line 248
    :cond_6
    const/16 v3, 0x66

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_7

    .line 249
    const-string v2, "\u9080\u8bf7\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    :cond_7
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_8

    .line 251
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 252
    const-string v2, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-virtual {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->finish()V

    goto/16 :goto_1

    .line 254
    :cond_8
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_a

    .line 255
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$600(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoWatchBean;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$600(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoWatchBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean;->getData()Lcom/wanduoduo/bean/InfoWatchBean$DataBean;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$600(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoWatchBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean;->getData()Lcom/wanduoduo/bean/InfoWatchBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 256
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$600(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoWatchBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean;->getData()Lcom/wanduoduo/bean/InfoWatchBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    .line 257
    .local v0, bean:Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackLists:Ljava/util/List;
    invoke-static {v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$700(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 260
    .end local v0           #bean:Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;
    :cond_9
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #calls: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->showIvRightDialog()V
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$800(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    goto/16 :goto_1

    .line 261
    :cond_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 262
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 263
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z
    invoke-static {v4}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$900(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Z

    move-result v4

    if-nez v4, :cond_b

    :goto_3
    #setter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z
    invoke-static {v3, v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$902(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Z)Z

    .line 264
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->isBlack:Z
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$900(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 265
    const-string v2, "\u52a0\u5165\u9ed1\u540d\u5355\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 263
    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    .line 267
    :cond_c
    const-string v2, "\u53d6\u6d88\u9ed1\u540d\u5355\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
