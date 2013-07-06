.class Lcom/android/server/WifiOffloadService$12;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->getDataUsageforPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J
    .registers 17

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p2

    move-object/from16 v1, p3

    move v2, p1

    :try_start_a
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_80

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_7f

    const-wide/high16 v1, -0x8000

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    if-eqz v9, :cond_7f

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received bytes  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferred bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataUsage for app with uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-wide v1, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v6, v1, v3

    :cond_7f
    return-wide v6

    :catch_80
    move-exception v8

    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_a3

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get history for uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    move-object v0, v10

    goto/16 :goto_e
.end method


# virtual methods
.method public run()V
    .registers 27

    const/4 v12, 0x0

    const/16 v25, -0x1

    const-wide/16 v23, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v4, v5}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v4}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v5, "WiFi is already connected; return false"

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    :try_start_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v0, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APP UID == "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5b} :catch_d0

    const/4 v15, 0x0

    :try_start_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v4, v4, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v5, v5, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "data_usage"

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_182

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor count == "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_152

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    move/from16 v0, v25

    #calls: Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)Z
    invoke-static {v4, v0, v5}, Lcom/android/server/WifiOffloadService;->access$2100(Lcom/android/server/WifiOffloadService;ILjava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v5, "App lauched for the first time, so dont offload but insert the UID to DB"

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V
    :try_end_c9
    .catchall {:try_start_5c .. :try_end_c9} :catchall_1c4
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_c9} :catch_1a3

    if-eqz v15, :cond_28

    :try_start_cb
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_d0

    goto/16 :goto_28

    :catch_d0
    move-exception v17

    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ex in getting uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_eb
    const/16 v21, 0x0

    :try_start_ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$2200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v22

    const-string v4, "netstats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_106} :catch_1ee

    move-result-object v20

    if-eqz v20, :cond_10f

    if-eqz v22, :cond_10f

    :try_start_10b
    invoke-interface/range {v20 .. v20}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_10e} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_1ee

    move-result-object v21

    :cond_10f
    :goto_10f
    if-eqz v21, :cond_29c

    :try_start_111
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WifiOffloadService$12;->getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi_offload/ExceptionalAppList;->getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_129
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_266

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_135} :catch_1ee

    :try_start_135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v13, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v14, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/WifiOffloadService$12;->getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J
    :try_end_14e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_135 .. :try_end_14e} :catch_241
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_14e} :catch_1ee

    move-result-wide v4

    add-long v23, v23, v4

    goto :goto_129

    :cond_152
    :try_start_152
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_182

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_182

    const-string v4, "launchcount"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launch count in DB: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_182
    .catchall {:try_start_152 .. :try_end_182} :catchall_1c4
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_182} :catch_1a3

    :cond_182
    if-eqz v15, :cond_187

    :try_start_184
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_187
    :goto_187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LAUNCH COUNT  = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1a1} :catch_d0

    goto/16 :goto_eb

    :catch_1a3
    move-exception v17

    :try_start_1a4
    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getDataUsageforPackage for dbHelper "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1be
    .catchall {:try_start_1a4 .. :try_end_1be} :catchall_1c4

    if-eqz v15, :cond_187

    :try_start_1c0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_187

    :catchall_1c4
    move-exception v4

    if-eqz v15, :cond_1ca

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1ca
    throw v4
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1cb} :catch_d0

    :catch_1cb
    move-exception v17

    :try_start_1cc
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_10f

    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runtime ex in opening netstats session"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1ec} :catch_1ee

    goto/16 :goto_10f

    :catch_1ee
    move-exception v17

    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ex in reading stats "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v4, v5}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    :cond_211
    if-eqz v21, :cond_216

    :try_start_213
    invoke-interface/range {v21 .. v21}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_216} :catch_356

    :cond_216
    :goto_216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify here. canOffload "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v7}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    goto/16 :goto_28

    :catch_241
    move-exception v17

    :try_start_242
    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": Tried to check data usage for dependencies but failed to find package. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    :cond_266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total data usage for this app = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launch count for this app  = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_29c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    const/high16 v4, 0x10

    const-string v5, "persist.offload.datausage.limit"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget v7, v7, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    mul-int v16, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data Usage as per launch count = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v7, v11

    div-long v7, v23, v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    int-to-long v4, v11

    div-long v4, v23, v4

    move/from16 v0, v16

    int-to-long v7, v0

    cmp-long v4, v4, v7

    if-ltz v4, :cond_307

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v5, "canAppOffload exceeds the threshold so Offload"

    invoke-virtual {v4, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v4, v5}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    :cond_307
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    add-int/lit8 v11, v11, 0x1

    const-string v4, "launchcount"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v4, v4, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v5, v5, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "data_usage"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)Z

    move-result v4

    if-eqz v4, :cond_211

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    if-eqz v21, :cond_28

    invoke-interface/range {v21 .. v21}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_354} :catch_1ee

    goto/16 :goto_28

    :catch_356
    move-exception v17

    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ex in closing statsSession "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_216
.end method
