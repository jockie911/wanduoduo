.class Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;
.super Ljava/lang/Object;
.source "InfoEditContentActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditContentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 254
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    iget-object v6, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$key:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_1
    return-void

    .line 220
    :sswitch_0
    const-string v7, "nickname"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v7, "gender"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v7, "age"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v7, "constellation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string v7, "height"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_5
    const-string v7, "loveinfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "city_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v7, "profession"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "salary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v0, "1"

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u7537"

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "\u5973"

    goto :goto_2

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 237
    :pswitch_5
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x5

    const-string v0, "1"

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5355\u8eab"

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    const-string v0, "2"

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u5df2\u5a5a"

    goto :goto_3

    :cond_3
    const-string v0, "\u4fdd\u5bc6"

    goto :goto_3

    .line 240
    :pswitch_6
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->city_title:Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$200(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 243
    :pswitch_7
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 246
    :pswitch_8
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c388a2d -> :sswitch_3
        -0x6e10dce0 -> :sswitch_5
        -0x4a7a0d3f -> :sswitch_1
        -0x48c76ed9 -> :sswitch_4
        -0x48231f04 -> :sswitch_7
        -0x36393636 -> :sswitch_8
        0x178ff -> :sswitch_2
        0x436a86e -> :sswitch_0
        0x2ed0dc6f -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
