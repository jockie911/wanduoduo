.class Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$1;
.super Ljava/lang/Object;
.source "PlayerPerfectionItemActivity.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/CallBackFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setPriceWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->llItemPrice:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvWraning:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u53ef\u8bbe\u7f6e\u7684\u91d1\u989d\u7684\u4e0a\u9650\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143/\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    #setter for: Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->limitMaxPrice:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->access$002(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    return-void
.end method
