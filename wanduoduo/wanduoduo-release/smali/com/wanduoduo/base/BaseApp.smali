.class public Lcom/wanduoduo/base/BaseApp;
.super Landroid/app/Application;
.source "BaseApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/base/BaseApp$MyRefreshListen;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private connect(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/base/BaseApp;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/wanduoduo/base/BaseApp$2;

    invoke-direct {v0, p0}, Lcom/wanduoduo/base/BaseApp$2;-><init>(Lcom/wanduoduo/base/BaseApp;)V

    invoke-static {p1, v0}, Lio/rong/imkit/RongIM;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;

    .line 192
    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/wanduoduo/base/BaseApp;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 140
    .local v2, pid:I
    const-string v3, "activity"

    .line 141
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 143
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 142
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 144
    .local v1, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 145
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 147
    .end local v1           #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initCityListData()V
    .locals 4

    .prologue
    .line 200
    const-string v0, "city_select"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "city_select"

    const/4 v1, 0x0

    new-instance v2, Lcom/wanduoduo/base/BaseApp$MyRefreshListen;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/base/BaseApp$MyRefreshListen;-><init>(Lcom/wanduoduo/base/BaseApp;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 203
    :cond_0
    return-void
.end method

.method private initRongIMBrhevieClick()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/wanduoduo/base/BaseApp$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/base/BaseApp$1;-><init>(Lcom/wanduoduo/base/BaseApp;)V

    invoke-static {v0}, Lio/rong/imkit/RongIM;->setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V

    .line 131
    return-void
.end method

.method public static initSmallVideo(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 234
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 235
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 236
    .local v0, dcim:Ljava/io/File;
    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->isZte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mabeijianxi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmabeijianxi/camera/VCamera;->setVideoCachePath(Ljava/lang/String;)V

    .line 247
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Lmabeijianxi/camera/VCamera;->setDebugMode(Z)V

    .line 248
    invoke-static {p0}, Lmabeijianxi/camera/VCamera;->initialize(Landroid/content/Context;)V

    .line 249
    return-void

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sdcard/"

    const-string v4, "/sdcard-ext/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mabeijianxi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmabeijianxi/camera/VCamera;->setVideoCachePath(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mabeijianxi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmabeijianxi/camera/VCamera;->setVideoCachePath(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/wanduoduo/base/BaseApp;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseApp;->initCityListData()V

    .line 52
    sget-object v2, Lcom/wanduoduo/base/BaseApp;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 53
    .local v0, msgApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    const-string v2, "wx639bd824236a825c"

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wanduoduo/base/BaseApp;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "io.rong.push"

    .line 56
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wanduoduo/base/BaseApp;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    invoke-static {p0}, Lio/rong/imkit/RongIM;->init(Landroid/content/Context;)V

    .line 59
    :cond_1
    const-string v2, "rc_token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, rc_token:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    invoke-direct {p0, v1}, Lcom/wanduoduo/base/BaseApp;->connect(Ljava/lang/String;)V

    .line 64
    :cond_2
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseApp;->initRongIMBrhevieClick()V

    .line 66
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wanduoduo/base/BaseApp;->initSmallVideo(Landroid/content/Context;)V

    .line 69
    return-void
.end method
