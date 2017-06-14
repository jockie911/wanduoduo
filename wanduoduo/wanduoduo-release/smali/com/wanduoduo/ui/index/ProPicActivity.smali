.class public Lcom/wanduoduo/ui/index/ProPicActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "ProPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/index/ProPicActivity$ProPicAdapter;
    }
.end annotation


# instance fields
.field gridView:Landroid/widget/GridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01cb
        }
    .end annotation
.end field

.field mProPicLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/index/ProPicActivity;->mProPicLists:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f04004e

    return v0
.end method

.method protected initData()V
    .locals 7

    .prologue
    .line 34
    iget-object v5, p0, Lcom/wanduoduo/ui/index/ProPicActivity;->tvTitle:Landroid/widget/TextView;

    const-string v6, "\u67e5\u770b\u8bc1\u4e66"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/ProPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pro_pic"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, pro_pic:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 41
    iget-object v5, p0, Lcom/wanduoduo/ui/index/ProPicActivity;->mProPicLists:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    new-instance v3, Lcom/wanduoduo/ui/index/ProPicActivity$ProPicAdapter;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/wanduoduo/ui/index/ProPicActivity$ProPicAdapter;-><init>(Lcom/wanduoduo/ui/index/ProPicActivity;Lcom/wanduoduo/ui/index/ProPicActivity$1;)V

    .line 48
    .local v3, proPicAdapter:Lcom/wanduoduo/ui/index/ProPicActivity$ProPicAdapter;
    iget-object v5, p0, Lcom/wanduoduo/ui/index/ProPicActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v5, p0, Lcom/wanduoduo/ui/index/ProPicActivity;->mProPicLists:Ljava/util/List;

    invoke-virtual {v3, v5}, Lcom/wanduoduo/ui/index/ProPicActivity$ProPicAdapter;->addData(Ljava/util/List;)V

    .line 50
    return-void
.end method
