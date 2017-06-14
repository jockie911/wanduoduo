.class Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;
.super Ljava/lang/Object;
.source "EvaluateTextMessageItemProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

.field final synthetic val$data:Lio/rong/imkit/model/UIMessage;

.field final synthetic val$holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Lio/rong/imkit/model/UIMessage;Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->this$0:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$data:Lio/rong/imkit/model/UIMessage;

    iput-object p3, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 184
    iget-object v3, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    check-cast v3, Lio/rong/message/TextMessage;

    invoke-virtual {v3}, Lio/rong/message/TextMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, extra:Ljava/lang/String;
    const-string v2, ""

    .line 186
    .local v2, knowledgeId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v3, "sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v2}, Lio/rong/imlib/RongIMClient;->evaluateCustomService(Ljava/lang/String;ZLjava/lang/String;)V

    .line 195
    iget-object v3, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_complete:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v3, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_yes:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v3, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_no:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v3, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->tv_prompt:Landroid/widget/TextView;

    const-string v4, "\u611f\u8c22\u60a8\u7684\u8bc4\u4ef7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;->val$data:Lio/rong/imkit/model/UIMessage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIMessage;->setEvaluated(Z)V

    .line 200
    return-void

    .line 190
    :catch_0
    move-exception v3

    goto :goto_0
.end method
