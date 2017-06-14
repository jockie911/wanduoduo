.class Lcom/wanduoduo/fragment/InfoFragment$2;
.super Lcom/wanduoduo/widget/MyHandler;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/InfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/InfoFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/InfoFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 147
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 148
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->tv_coin:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCoin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->tvConpous:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getTicket_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->tvMoney:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMoney()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->tvNickname:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-virtual {v2}, Lcom/wanduoduo/fragment/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v3, v3, Lcom/wanduoduo/fragment/InfoFragment;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 154
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->relAuthentticationSkill:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 155
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->relAuthentticationVideo:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 157
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVip_level()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, vip_level:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, level:I
    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->tvVip:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->vipNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$100(Lcom/wanduoduo/fragment/InfoFragment;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->ivVipLevel:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->vipRes:[I
    invoke-static {v3}, Lcom/wanduoduo/fragment/InfoFragment;->access$200(Lcom/wanduoduo/fragment/InfoFragment;)[I

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #setter for: Lcom/wanduoduo/fragment/InfoFragment;->isVideoExist:Z
    invoke-static {v2, v5}, Lcom/wanduoduo/fragment/InfoFragment;->access$302(Lcom/wanduoduo/fragment/InfoFragment;Z)Z

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 169
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->tvSkillOrCar:Landroid/widget/TextView;

    const-string v3, "\u8f66\u8f86\u8ba4\u8bc1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .end local v0           #level:I
    .end local v1           #vip_level:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 171
    .restart local v0       #level:I
    .restart local v1       #vip_level:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/fragment/InfoFragment;->access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 172
    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$2;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    iget-object v2, v2, Lcom/wanduoduo/fragment/InfoFragment;->tvSkillOrCar:Landroid/widget/TextView;

    const-string v3, "\u6280\u80fd\u8ba4\u8bc1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    .end local v0           #level:I
    .end local v1           #vip_level:Ljava/lang/String;
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 175
    const-string v2, "\u5934\u50cf\u4fee\u6539\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0
.end method
