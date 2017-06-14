.class public Lcom/wanduoduo/utils/SPUtils;
.super Ljava/lang/Object;
.source "SPUtils.java"


# static fields
.field private static final SP_NAME:Ljava/lang/String; = "my_sp"

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteSP()V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    .line 78
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public static getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 3
    .parameter "key"
    .parameter "def"

    .prologue
    .line 69
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    .line 72
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getIntData(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "def"

    .prologue
    .line 35
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    .line 38
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "def"

    .prologue
    .line 55
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    .line 58
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static savaBooleanData(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 62
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    .line 65
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public static savaIntData(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "position"

    .prologue
    .line 28
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    .line 31
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method

.method public static savaStringData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 48
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    .line 51
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
