.class Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;
.super Ljava/lang/Object;
.source "SettingRealNameActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingRealNameActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
    .locals 11
    .parameter "infoBean"

    .prologue
    const/4 v2, 0x2

    .line 59
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_pic()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, idcard_pic:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 63
    .local v9, jsonArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    #getter for: Lcom/wanduoduo/ui/info/SettingRealNameActivity;->alreadyPicLists:Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->access$000(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 65
    .end local v7           #i:I
    .end local v9           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 66
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    .end local v6           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v10, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    new-instance v0, Lcom/wanduoduo/adapter/PhotoPicAdapter;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    #getter for: Lcom/wanduoduo/ui/info/SettingRealNameActivity;->alreadyPicLists:Ljava/util/List;
    invoke-static {v1}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->access$000(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1$1;

    invoke-direct {v4, p0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1$1;-><init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;)V

    const/4 v3, 0x0

    new-array v5, v3, [Z

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;-><init>(Ljava/util/List;IILcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;[Z)V

    #setter for: Lcom/wanduoduo/ui/info/SettingRealNameActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;
    invoke-static {v10, v0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->access$102(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Lcom/wanduoduo/adapter/PhotoPicAdapter;)Lcom/wanduoduo/adapter/PhotoPicAdapter;

    .line 76
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->gvIdCard:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    #getter for: Lcom/wanduoduo/ui/info/SettingRealNameActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;
    invoke-static {v1}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->access$100(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)Lcom/wanduoduo/adapter/PhotoPicAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->gvIdCard:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    return-void
.end method
