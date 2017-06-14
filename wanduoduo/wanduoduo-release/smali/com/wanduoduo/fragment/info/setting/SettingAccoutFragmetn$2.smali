.class Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;
.super Lcom/wanduoduo/widget/MyHandler;
.source "SettingAccoutFragmetn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    #getter for: Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->access$000(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->relEditPhone:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 73
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->relRealName:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 75
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    #getter for: Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->access$000(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, mobile:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->tvPhoneNum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    const-string v1, "0"

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    #getter for: Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->access$000(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    .end local v0           #mobile:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 82
    .restart local v0       #mobile:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->ivAlreadyName:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
