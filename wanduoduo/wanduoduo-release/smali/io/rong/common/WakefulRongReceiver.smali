.class public abstract Lio/rong/common/WakefulRongReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulRongReceiver.java"


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/rong/common/WakefulRongReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    .line 64
    const/4 v0, 0x1

    sput v0, Lio/rong/common/WakefulRongReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    const-string v4, "android.support.content.wakelockid"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, id:I
    const-string v4, "WakefulRongReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeWakefulIntent id #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return v2

    .line 126
    :cond_0
    sget-object v4, Lio/rong/common/WakefulRongReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v4

    .line 127
    :try_start_0
    sget-object v2, Lio/rong/common/WakefulRongReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 128
    .local v1, wl:Landroid/os/PowerManager$WakeLock;
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 130
    sget-object v2, Lio/rong/common/WakefulRongReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 131
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 139
    :cond_1
    const-string v2, "WakefulRongReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active wake lock id #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 141
    .end local v1           #wl:Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    sget-object v6, Lio/rong/common/WakefulRongReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v6

    .line 82
    :try_start_0
    sget v2, Lio/rong/common/WakefulRongReceiver;->mNextId:I

    .line 83
    .local v2, id:I
    sget v5, Lio/rong/common/WakefulRongReceiver;->mNextId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lio/rong/common/WakefulRongReceiver;->mNextId:I

    .line 84
    sget v5, Lio/rong/common/WakefulRongReceiver;->mNextId:I

    if-gtz v5, :cond_0

    .line 85
    const/4 v5, 0x1

    sput v5, Lio/rong/common/WakefulRongReceiver;->mNextId:I

    .line 88
    :cond_0
    const-string v5, "android.support.content.wakelockid"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, comp:Landroid/content/ComponentName;
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v6

    .line 108
    .end local v0           #comp:Landroid/content/ComponentName;
    :goto_1
    return-object v0

    .line 93
    .restart local v0       #comp:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v2           #id:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 101
    .restart local v0       #comp:Landroid/content/ComponentName;
    .restart local v2       #id:I
    :cond_1
    :try_start_3
    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 102
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wake:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 104
    .local v4, wl:Landroid/os/PowerManager$WakeLock;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 105
    const-wide/32 v8, 0xea60

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 106
    sget-object v5, Lio/rong/common/WakefulRongReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    const-string v5, "WakefulRongReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "require wakelock. id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
