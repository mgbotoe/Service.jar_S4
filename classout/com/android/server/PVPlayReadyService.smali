.class public Lcom/android/server/PVPlayReadyService;
.super Landroid/app/Service;
.source "PVPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PVPlayReadyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat; = null

.field public static final GOT_DATA_CONNECTION:I = 0x2

.field public static final GOT_NITZ:I = 0x3

.field private static final LIMIT_TIME:I = 0x1388

.field private static final NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final PLAYREADY_BEFORE_TIME_FILE:Ljava/lang/String; = "data/data/.drm/.playready/PVPlayReadyBeforeTime.ini"

.field private static final PLAYREADY_BOOT_NITZ_FILE:Ljava/lang/String; = "/data/data/.drm/.playready/PVPlayReadyBootNITZ.dat"

.field private static final PLAYREADY_TIME_DIFF_FILE:Ljava/lang/String; = "/data/data/.drm/.playready/PVPlayReadyTimeDiff.dat"

.field private static final TAG:Ljava/lang/String; = "PVPLayReadyService"

.field public static final TIME_CHANGE:I = 0x4

.field private static beforeBeforeTime:J

.field private static firstNetworkTime:Z

.field private static timeFormat:Ljava/lang/String;


# instance fields
.field private mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/PVPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/PVPlayReadyService;->firstNetworkTime:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    invoke-static {}, Lcom/android/server/PVPlayReadyService;->nitzReceived()V

    return-void
.end method

.method private static native autoUpdate()V
.end method

.method private static native bootComplete()V
.end method

.method private getBeforeTime()J
    .registers 13

    const-wide/16 v7, -0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "data/data/.drm/.playready/PVPlayReadyBeforeTime.ini"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_11} :catch_d2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_9b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_ae

    :try_start_11
    const-string v9, "PVPLayReadyService"

    const-string v10, "FileReading Start"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_28} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_28} :catch_cf
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_28} :catch_cc

    goto :goto_1f

    :catch_29
    move-exception v4

    move-object v2, v3

    :goto_2b
    :try_start_2b
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_bc

    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_b9

    :cond_33
    :goto_33
    move-wide v7, v0

    :cond_34
    :goto_34
    return-wide v7

    :cond_35
    :try_start_35
    const-string v9, "PVPLayReadyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v9, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_73

    sget-wide v9, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    cmp-long v9, v9, v0

    if-nez v9, :cond_73

    const-string v9, "PVPLayReadyService"

    const-string v10, "returning because of double intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_6c} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_6c} :catch_cf
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_6c} :catch_cc

    if-eqz v3, :cond_71

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_c5

    :cond_71
    :goto_71
    move-object v2, v3

    goto :goto_34

    :cond_73
    :try_start_73
    const-string v9, "PVPLayReadyService"

    const-string v10, "proper beforetime so proceed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v0, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    const-string v9, "PVPLayReadyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme in Long is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_73 .. :try_end_94} :catchall_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_94} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_94} :catch_cf
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_94} :catch_cc

    if-eqz v3, :cond_99

    :try_start_96
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_c7

    :cond_99
    :goto_99
    move-object v2, v3

    goto :goto_33

    :catch_9b
    move-exception v4

    :goto_9c
    :try_start_9c
    const-string v9, "PVPlayReadyService"

    const-string v10, "Returning from PVPlayReadyService because beforetime not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_bc

    if-eqz v2, :cond_34

    :try_start_a8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_34

    :catch_ac
    move-exception v9

    goto :goto_34

    :catch_ae
    move-exception v4

    :goto_af
    :try_start_af
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_bc

    if-eqz v2, :cond_33

    :try_start_b4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b9

    goto/16 :goto_33

    :catch_b9
    move-exception v7

    goto/16 :goto_33

    :catchall_bc
    move-exception v7

    :goto_bd
    if-eqz v2, :cond_c2

    :try_start_bf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    :cond_c2
    :goto_c2
    throw v7

    :catch_c3
    move-exception v8

    goto :goto_c2

    :catch_c5
    move-exception v9

    goto :goto_71

    :catch_c7
    move-exception v7

    goto :goto_99

    :catchall_c9
    move-exception v7

    move-object v2, v3

    goto :goto_bd

    :catch_cc
    move-exception v4

    move-object v2, v3

    goto :goto_af

    :catch_cf
    move-exception v4

    move-object v2, v3

    goto :goto_9c

    :catch_d2
    move-exception v4

    goto/16 :goto_2b
.end method

.method private handleConnectivityStateChanged()V
    .registers 4

    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/PVPlayReadyService$1;

    invoke-direct {v2, p0}, Lcom/android/server/PVPlayReadyService$1;-><init>(Lcom/android/server/PVPlayReadyService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native nitzReceived()V
.end method

.method private static native ntpReceived(JJ)V
.end method

.method private static native testMethod()V
.end method

.method private static native updateTime(JJ)V
.end method

.method private userUpdateHandler()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "time_12_24"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v6, "PVPLayReadyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoEnable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PVPLayReadyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeFormat before setting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PVPLayReadyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nowTimeFormat before setting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    sget-object v6, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    if-nez v6, :cond_6f

    const-string v6, "24"

    sput-object v6, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    :cond_6f
    if-nez v3, :cond_73

    const-string v3, "24"

    :cond_73
    const-string v6, "PVPLayReadyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeFormat after setting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PVPLayReadyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nowTimeFormat after setting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_144

    const-string v6, "PVPLayReadyService"

    const-string v7, "userUpdatedTimeReceiver time format is not changed check if it is NITZ Update"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_12a

    const-string v6, "PVPLayReadyService"

    const-string v7, "This is a not NITZ update.Time format is also not changed.Update delta"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    const-string v6, "/data/data/.drm/.playready/PVPlayReadyTimeDiff.dat"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_11b

    const-string v6, "PVPLayReadyService"

    const-string v7, "PLAYREADY_TIME_DIFF_FILE does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d2
    if-eqz v4, :cond_db

    const-string v6, "PVPLayReadyService"

    const-string v7, "deleted PLAYREADY_TIME_DIFF_FILE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    const-string v6, "data/data/.drm/.playready/PVPlayReadyBeforeTime.ini"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_120

    const-string v6, "PVPLayReadyService"

    const-string v7, "PLAYREADY_BEFORE_TIME_FILE does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f0
    if-eqz v4, :cond_f9

    const-string v6, "PVPLayReadyService"

    const-string v7, "deleted PLAYREADY_BEFORE_TIME_FILE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    const-string v6, "/data/data/.drm/.playready/PVPlayReadyBootNITZ.dat"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_125

    const-string v6, "PVPLayReadyService"

    const-string v7, "PLAYREADY_BOOT_NITZ_FILE does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10e
    if-eqz v4, :cond_117

    const-string v6, "PVPLayReadyService"

    const-string v7, "deleted PLAYREADY_BOOT_NITZ_FILE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_117
    invoke-direct {p0}, Lcom/android/server/PVPlayReadyService;->handleConnectivityStateChanged()V

    :goto_11a
    return-void

    :cond_11b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_d2

    :cond_120
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_f0

    :cond_125
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_10e

    :cond_12a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_140

    const-string v6, "PVPLayReadyService"

    const-string v7, "Auto time update is on but sim is not in ready state hence no NITZ update will follow"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->handleUserUpdatedTimeUpdation()V

    goto :goto_11a

    :cond_140
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->autoUpdate()V

    goto :goto_11a

    :cond_144
    const-string v6, "PVPLayReadyService"

    const-string v7, "userUpdatedTimeReceiver format is changed no need to udpate Delta"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    goto :goto_11a
.end method


# virtual methods
.method public handleNitzTimeUpdation()V
    .registers 7

    const-wide/16 v1, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/server/PVPlayReadyService$2;

    invoke-direct {v3, p0}, Lcom/android/server/PVPlayReadyService$2;-><init>(Lcom/android/server/PVPlayReadyService;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public handleUserUpdatedTimeUpdation()V
    .registers 10

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v0, v5, v7

    invoke-direct {p0}, Lcom/android/server/PVPlayReadyService;->getBeforeTime()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_48

    const-string v5, "PVPlayReadyService"

    const-string v6, "Not calling updateTime"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    const-string v5, "PVPLayReadyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay beforeTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "and afterTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_48
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/PVPlayReadyService;->updateTime(JJ)V

    goto :goto_25
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/server/PVPlayReadyService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/PVPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/PVPlayReadyService$ServiceHandler;-><init>(Lcom/android/server/PVPlayReadyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onLowMemory()V
    .registers 3

    const-string v0, "PVPLayReadyService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onNetworkStateChanged(JJ)V
    .registers 8

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_d

    cmp-long v0, p3, v1

    if-lez v0, :cond_d

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/PVPlayReadyService;->ntpReceived(JJ)V

    :cond_d
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/PVPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    if-nez v1, :cond_33

    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    const-string v1, "PVPLayReadyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Format is: :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iput v4, v0, Landroid/os/Message;->what:I

    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/PVPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_43

    :cond_59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "PVPlayReadyService"

    const-string v2, "Current action is nitz set time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_43

    :cond_70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    const-string v1, "PVPlayReadyService"

    const-string v2, "Current action is user change time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_43

    :cond_87
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->testMethod()V

    goto :goto_43
.end method
