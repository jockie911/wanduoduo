.class Lio/rong/imkit/userInfoCache/RongDatabaseDao;
.super Ljava/lang/Object;
.source "RongDatabaseDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RongDatabaseDao"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final discussionsTable:Ljava/lang/String;

.field private final groupUsersTable:Ljava/lang/String;

.field private final groupsTable:Ljava/lang/String;

.field private rongUserCacheDatabaseHelper:Lio/rong/imkit/userInfoCache/RongUserCacheDatabaseHelper;

.field private final usersTable:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "users"

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->usersTable:Ljava/lang/String;

    .line 21
    const-string v0, "group_users"

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->groupUsersTable:Ljava/lang/String;

    .line 22
    const-string v0, "groups"

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->groupsTable:Ljava/lang/String;

    .line 23
    const-string v0, "discussions"

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->discussionsTable:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    return-void
.end method

.method getDiscussionInfo(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;
    .locals 12
    .parameter "discussionId"

    .prologue
    const/4 v2, 0x0

    .line 265
    if-nez p1, :cond_0

    .line 266
    const-string v0, "RongDatabaseDao"

    const-string v1, "getDiscussionInfo parameter is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-object v2

    .line 269
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 270
    const-string v0, "RongDatabaseDao"

    const-string v1, "getDiscussionInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "discussions"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 275
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 276
    .local v9, discussion:Lio/rong/imlib/model/Discussion;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const-string v0, "id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 278
    .local v10, id:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, name:Ljava/lang/String;
    new-instance v9, Lio/rong/imlib/model/Discussion;

    .end local v9           #discussion:Lio/rong/imlib/model/Discussion;
    invoke-direct {v9, v10, v11}, Lio/rong/imlib/model/Discussion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v10           #id:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .restart local v9       #discussion:Lio/rong/imlib/model/Discussion;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    .line 284
    goto :goto_0
.end method

.method getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;
    .locals 13
    .parameter "groupId"

    .prologue
    const/4 v2, 0x0

    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string v0, "RongDatabaseDao"

    const-string v1, "getGroupInfo parameter is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-object v2

    .line 199
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 200
    const-string v0, "RongDatabaseDao"

    const-string v1, "getGroupInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 206
    .local v9, group:Lio/rong/imlib/model/Group;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, id:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 209
    .local v11, name:Ljava/lang/String;
    const-string v0, "portrait"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, portrait:Ljava/lang/String;
    new-instance v9, Lio/rong/imlib/model/Group;

    .end local v9           #group:Lio/rong/imlib/model/Group;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v9, v10, v11, v0}, Lio/rong/imlib/model/Group;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    .end local v10           #id:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #portrait:Ljava/lang/String;
    .restart local v9       #group:Lio/rong/imlib/model/Group;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    .line 214
    goto :goto_0
.end method

.method getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;
    .locals 13
    .parameter "groupId"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 125
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    const-string v0, "RongDatabaseDao"

    const-string v1, "getGroupUserInfo parameter is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-object v2

    .line 129
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 130
    const-string v0, "RongDatabaseDao"

    const-string v1, "getGroupUserInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "group_users"

    const-string v3, "group_id = ? and user_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 136
    .local v10, info:Lio/rong/imkit/model/GroupUserInfo;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "group_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, gId:Ljava/lang/String;
    const-string v0, "user_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, uId:Ljava/lang/String;
    const-string v0, "nickname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, nickname:Ljava/lang/String;
    new-instance v10, Lio/rong/imkit/model/GroupUserInfo;

    .end local v10           #info:Lio/rong/imkit/model/GroupUserInfo;
    invoke-direct {v10, v9, v12, v11}, Lio/rong/imkit/model/GroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v9           #gId:Ljava/lang/String;
    .end local v11           #nickname:Ljava/lang/String;
    .end local v12           #uId:Ljava/lang/String;
    .restart local v10       #info:Lio/rong/imkit/model/GroupUserInfo;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v2, v10

    .line 143
    goto :goto_0
.end method

.method getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
    .locals 13
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 56
    if-nez p1, :cond_0

    .line 57
    const-string v0, "RongDatabaseDao"

    const-string v1, "getUserInfo userId is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-object v2

    .line 60
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 61
    const-string v0, "RongDatabaseDao"

    const-string v1, "getUserInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "users"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 66
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 67
    .local v10, info:Lio/rong/imlib/model/UserInfo;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, id:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, name:Ljava/lang/String;
    const-string v0, "portrait"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, portrait:Ljava/lang/String;
    new-instance v10, Lio/rong/imlib/model/UserInfo;

    .end local v10           #info:Lio/rong/imlib/model/UserInfo;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v9, v11, v0}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .end local v9           #id:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #portrait:Ljava/lang/String;
    .restart local v10       #info:Lio/rong/imlib/model/UserInfo;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v2, v10

    .line 74
    goto :goto_0
.end method

.method declared-synchronized insertDiscussionInfo(Lio/rong/imlib/model/Discussion;)V
    .locals 4
    .parameter "discussion"

    .prologue
    .line 288
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 289
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertDiscussionInfo parameter is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 293
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertDiscussionInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 297
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "name"

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "portrait"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "discussions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized insertGroupInfo(Lio/rong/imlib/model/Group;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 218
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertGroupInfo parameter is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 223
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertGroupInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 227
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "name"

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "portrait"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "groups"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized insertGroupUserInfo(Lio/rong/imkit/model/GroupUserInfo;)V
    .locals 4
    .parameter "userInfo"

    .prologue
    .line 147
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertGroupUserInfo parameter is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 152
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertGroupUserInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 156
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "group_id"

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "user_id"

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "nickname"

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "group_users"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized insertUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 4
    .parameter "userInfo"

    .prologue
    .line 78
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertUserInfo userId is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 83
    const-string v1, "RongDatabaseDao"

    const-string v2, "insertUserInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 87
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "name"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "portrait"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "users"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appKey"
    .parameter "currentUserId"

    .prologue
    .line 30
    invoke-static {p1, p2, p3}, Lio/rong/imkit/userInfoCache/RongUserCacheDatabaseHelper;->setDbPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    new-instance v1, Lio/rong/imkit/userInfoCache/RongUserCacheDatabaseHelper;

    invoke-direct {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserCacheDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->rongUserCacheDatabaseHelper:Lio/rong/imkit/userInfoCache/RongUserCacheDatabaseHelper;

    .line 33
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->rongUserCacheDatabaseHelper:Lio/rong/imkit/userInfoCache/RongUserCacheDatabaseHelper;

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongUserCacheDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "RongDatabaseDao"

    const-string v2, "SQLiteException occur"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method declared-synchronized putDiscussionInfo(Lio/rong/imlib/model/Discussion;)V
    .locals 5
    .parameter "discussion"

    .prologue
    .line 322
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    const-string v0, "RongDatabaseDao"

    const-string v1, "putDiscussionInfo parameter is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 327
    const-string v0, "RongDatabaseDao"

    const-string v1, "putDiscussionInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_2
    :try_start_2
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "replace into discussions (id, name, portrait) values (?, ?, ?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized putGroupInfo(Lio/rong/imlib/model/Group;)V
    .locals 6
    .parameter "group"

    .prologue
    .line 252
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    const-string v0, "RongDatabaseDao"

    const-string v1, "putGroupInfo parameter is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 257
    const-string v0, "RongDatabaseDao"

    const-string v1, "putGroupInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 261
    :cond_2
    :try_start_2
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "replace into groups (id, name, portrait) values (?, ?, ?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized putGroupUserInfo(Lio/rong/imkit/model/GroupUserInfo;)V
    .locals 5
    .parameter "userInfo"

    .prologue
    .line 181
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    const-string v0, "RongDatabaseDao"

    const-string v1, "putGroupUserInfo parameter is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 186
    const-string v0, "RongDatabaseDao"

    const-string v1, "putGroupUserInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :cond_2
    :try_start_2
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from group_users where group_id=? and user_id=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into group_users (group_id, user_id, nickname) values (?, ?, ?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized putUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 6
    .parameter "userInfo"

    .prologue
    .line 112
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    const-string v0, "RongDatabaseDao"

    const-string v1, "putUserInfo userId is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 117
    const-string v0, "RongDatabaseDao"

    const-string v1, "putUserInfo db is invalid"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_2
    :try_start_2
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "replace into users (id, name, portrait) values (?, ?, ?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized updateDiscussionInfo(Lio/rong/imlib/model/Discussion;)V
    .locals 7
    .parameter "discussion"

    .prologue
    .line 305
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateDiscussionInfo parameter is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 310
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateDiscussionInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 314
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "name"

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "portrait"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "discussions"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized updateGroupInfo(Lio/rong/imlib/model/Group;)V
    .locals 7
    .parameter "group"

    .prologue
    .line 235
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateGroupInfo parameter is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 240
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateGroupInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 244
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "name"

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "portrait"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "groups"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized updateGroupUserInfo(Lio/rong/imkit/model/GroupUserInfo;)V
    .locals 7
    .parameter "userInfo"

    .prologue
    .line 164
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateGroupUserInfo parameter is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 169
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateGroupUserInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 173
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "group_id"

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "user_id"

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "nickname"

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "group_users"

    const-string v3, "group_id=? and user_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized updateUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 7
    .parameter "userInfo"

    .prologue
    .line 95
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateUserInfo userId is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 100
    const-string v1, "RongDatabaseDao"

    const-string v2, "updateUserInfo db is invalid"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 104
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "name"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "portrait"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "users"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
