.class public final Lcom/android/server/ssrm/TouchBusBooster;
.super Ljava/lang/Object;
.source "TouchBusBooster.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final JA_BUS_INT_DVFS_PATH:Ljava/lang/String; = "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

.field private static final JA_BUS_MIF_DVFS_PATH:Ljava/lang/String; = "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

.field private static final PROCESS_STATE_BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static TAG:Ljava/lang/String; = null

.field private static final TSP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_RESULT_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd_result"

.field private static mBusPowerSavingPackages:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/ssrm/TouchBusBooster;

.field private static mJaBusIntDvfsPath:Z

.field private static mJaBusMifDvfsPath:Z

.field private static mSIPVisible:Z

.field private static mTouchBusPowerSaving:Z

.field private static mTouchBusPowerSavingPackages:[Ljava/lang/String;

.field private static mTspPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "TouchBusBooster"

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v3, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/TouchBusBooster;->DEBUG:Z

    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mSIPVisible:Z

    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    new-array v3, v7, [Ljava/lang/String;

    const-string v6, "com.android.chrome"

    aput-object v6, v3, v5

    const-string v6, "com.sec.android.app.sbrowser"

    aput-object v6, v3, v4

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSavingPackages:[Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "com.facebook.katana"

    aput-object v6, v3, v5

    const-string v6, "com.google.android.talk"

    aput-object v6, v3, v4

    const-string v6, "com.kakao.talk"

    aput-object v6, v3, v7

    const/4 v6, 0x3

    const-string v7, "com.whatsapp"

    aput-object v7, v3, v6

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->mBusPowerSavingPackages:[Ljava/lang/String;

    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_d0

    move v3, v4

    :goto_62
    sput-boolean v3, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_d2

    move v3, v4

    :goto_71
    sput-boolean v3, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_d4

    :goto_7f
    sput-boolean v4, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    sget-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "static:: mTspPathExist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "static:: mJaBusMifDvfsPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "static:: mJaBusIntDvfsPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d0
    move v3, v5

    goto :goto_62

    :cond_d2
    move v3, v5

    goto :goto_71

    :cond_d4
    move v4, v5

    goto :goto_7f
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ssrm/TouchBusBooster;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/ssrm/TouchBusBooster;

    invoke-direct {v0}, Lcom/android/server/ssrm/TouchBusBooster;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    :cond_b
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    return-object v0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_39

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_be
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_c1

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_9f

    :cond_37
    :goto_37
    move-object v0, v1

    :cond_38
    :goto_38
    return-object v3

    :catch_39
    move-exception v2

    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_7a

    if-eqz v0, :cond_38

    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_38

    :catch_5c
    move-exception v2

    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :catchall_7a
    move-exception v4

    :goto_7b
    if-eqz v0, :cond_80

    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    :cond_80
    :goto_80
    throw v4

    :catch_81
    move-exception v2

    sget-object v5, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLineFromSysfs:: e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :catch_9f
    move-exception v2

    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :catchall_be
    move-exception v4

    move-object v0, v1

    goto :goto_7b

    :catch_c1
    move-exception v2

    move-object v0, v1

    goto/16 :goto_3a
.end method

.method protected static writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_19

    :try_start_6
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_39
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_3c

    if-eqz v2, :cond_17

    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_34

    :cond_17
    :goto_17
    move-object v1, v2

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    :goto_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    if-eqz v1, :cond_18

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_18

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catchall_28
    move-exception v3

    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    throw v3

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_39
    move-exception v3

    move-object v1, v2

    goto :goto_29

    :catch_3c
    move-exception v0

    move-object v1, v2

    goto :goto_1a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const-string v10, "PACKAGE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "PROCESS_STATE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "FOREGROUND"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSavingPackages:[Ljava/lang/String;

    array-length v5, v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v5, :cond_28

    aget-object v9, v0, v1

    if-nez v9, :cond_21

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_21
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v4, 0x1

    :cond_28
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mBusPowerSavingPackages:[Ljava/lang/String;

    array-length v5, v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v5, :cond_3f

    aget-object v9, v0, v1

    if-nez v9, :cond_35

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_35
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    const/4 v4, 0x1

    if-eqz v3, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    if-eqz v3, :cond_8a

    if-eqz v4, :cond_88

    const/4 v6, 0x1

    :goto_44
    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eq v6, v10, :cond_87

    sput-boolean v6, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eqz v10, :cond_91

    sget-object v10, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v11, "TouchBusPowerSaving:: now it is enabled."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    if-eqz v10, :cond_67

    if-nez v2, :cond_67

    const-string v10, "boost_level,1"

    const-string v11, "/sys/class/sec/tsp/cmd"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v10}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    :cond_67
    const-string v10, "ja"

    const-string v11, "jf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_87

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    if-eqz v10, :cond_87

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    if-eqz v10, :cond_87

    const-string v10, "0"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "0"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void

    :cond_88
    const/4 v6, 0x0

    goto :goto_44

    :cond_8a
    if-eqz v4, :cond_8e

    const/4 v6, 0x0

    goto :goto_44

    :cond_8e
    sget-boolean v6, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    goto :goto_44

    :cond_91
    sget-object v10, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v11, "TouchBusPowerSaving:: now it is disabled."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    if-eqz v10, :cond_a8

    const-string v10, "boost_level,2"

    const-string v11, "/sys/class/sec/tsp/cmd"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v10}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    :cond_a8
    const-string v10, "ja"

    const-string v11, "jf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_87

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    if-eqz v10, :cond_87

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    if-eqz v10, :cond_87

    const-string v10, "1"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "1"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87
.end method

.method public onSIPEventCallback(Z)V
    .registers 4

    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sput-boolean p1, Lcom/android/server/ssrm/TouchBusBooster;->mSIPVisible:Z

    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->mSIPVisible:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v1, "onSIPEventCallback:: now touch booster level 1 is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "boost_level,1"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    :cond_23
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v1, "onSIPEventCallback:: now touch booster level 2 is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "boost_level,2"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8
.end method
