.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .registers 190

    const-string v7, "SystemServer"

    const-string v9, "!@Begin SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v148

    if-eqz v148, :cond_55

    invoke-virtual/range {v148 .. v148}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_55

    const/4 v7, 0x0

    move-object/from16 v0, v148

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_196

    const/16 v140, 0x1

    :goto_3c
    invoke-virtual/range {v148 .. v148}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_19a

    const/4 v7, 0x1

    invoke-virtual/range {v148 .. v148}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v148

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v139

    :goto_4e
    move/from16 v0, v140

    move-object/from16 v1, v139

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    :cond_55
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    const-string v7, ""

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19e

    const/16 v104, 0x0

    :goto_67
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const/16 v112, 0x0

    const/16 v64, 0x0

    const/16 v87, 0x0

    const/16 v115, 0x0

    const/16 v137, 0x0

    const/16 v150, 0x0

    const/16 v96, 0x0

    const/16 v72, 0x0

    const/16 v175, 0x0

    const/16 v66, 0x0

    const/16 v125, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v129, 0x0

    const/16 v81, 0x0

    const/16 v138, 0x0

    const/16 v185, 0x0

    const/16 v182, 0x0

    const/16 v184, 0x0

    const/16 v147, 0x0

    const/16 v180, 0x0

    const/16 v136, 0x0

    const/4 v5, 0x0

    const/16 v187, 0x0

    const/16 v73, 0x0

    const/16 v97, 0x0

    const/16 v143, 0x0

    const/16 v144, 0x0

    const/16 v173, 0x0

    const/16 v145, 0x0

    const/16 v168, 0x0

    const/16 v171, 0x0

    const/16 v141, 0x0

    const/16 v157, 0x0

    const/16 v131, 0x0

    const/16 v93, 0x0

    const/16 v78, 0x0

    const/16 v111, 0x0

    const/16 v154, 0x0

    const/16 v127, 0x0

    const/16 v85, 0x0

    const/16 v162, 0x0

    const/16 v160, 0x0

    const/16 v156, 0x0

    const/16 v91, 0x0

    const/16 v122, 0x0

    new-instance v170, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v170

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v170 .. v170}, Landroid/os/HandlerThread;->start()V

    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v170 .. v170}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v188, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v188

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v188 .. v188}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v188 .. v188}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v24, 0x0

    :try_start_118
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/pm/Installer;

    invoke-direct/range {v113 .. v113}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_124
    .catch Ljava/lang/RuntimeException; {:try_start_118 .. :try_end_124} :catch_1063

    :try_start_124
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/pm/Installer;->ping()Z

    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_144
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_144} :catch_1072

    :try_start_144
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v104 .. v104}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_164
    .catch Ljava/lang/RuntimeException; {:try_start_144 .. :try_end_164} :catch_1083

    :try_start_164
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_b21

    const/16 v149, 0x0

    :goto_179
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v149

    if-ge v0, v7, :cond_1a4

    const-string v7, "telephony.registry"

    move/from16 v0, v149

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v149

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_193
    .catch Ljava/lang/RuntimeException; {:try_start_164 .. :try_end_193} :catch_b86

    add-int/lit8 v149, v149, 0x1

    goto :goto_179

    :cond_196
    const/16 v140, 0x0

    goto/16 :goto_3c

    :cond_19a
    const/16 v139, 0x0

    goto/16 :goto_4e

    :cond_19e
    invoke-static/range {v105 .. v105}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v104

    goto/16 :goto_67

    :cond_1a4
    move-object/from16 v128, v127

    :goto_1a6
    :try_start_1a6
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1152

    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v127, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_1be
    .catch Ljava/lang/RuntimeException; {:try_start_1a6 .. :try_end_1be} :catch_10b2

    :try_start_1be
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_1c5
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1eb

    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1eb
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b52

    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_209
    .catch Ljava/lang/RuntimeException; {:try_start_1be .. :try_end_209} :catch_b86

    const/16 v24, 0x1

    :cond_20b
    :goto_20b
    :try_start_20b
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v86, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_219
    .catch Ljava/lang/Throwable; {:try_start_20b .. :try_end_219} :catch_b67
    .catch Ljava/lang/RuntimeException; {:try_start_20b .. :try_end_219} :catch_b86

    :try_start_219
    const-string v7, "container_service"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_227
    .catch Ljava/lang/Throwable; {:try_start_219 .. :try_end_227} :catch_1149
    .catch Ljava/lang/RuntimeException; {:try_start_219 .. :try_end_227} :catch_10c1

    move-object/from16 v85, v86

    :goto_229
    :try_start_229
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_236
    .catch Ljava/lang/RuntimeException; {:try_start_229 .. :try_end_236} :catch_b86

    move-result v159

    if-eqz v159, :cond_260

    :try_start_239
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v163, Lcom/android/server/TimaService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_247
    .catch Ljava/lang/Throwable; {:try_start_239 .. :try_end_247} :catch_ba3
    .catch Ljava/lang/RuntimeException; {:try_start_239 .. :try_end_247} :catch_b86

    :try_start_247
    const-string v7, "tima"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24e
    .catch Ljava/lang/Throwable; {:try_start_247 .. :try_end_24e} :catch_1144
    .catch Ljava/lang/RuntimeException; {:try_start_247 .. :try_end_24e} :catch_10d0

    move-object/from16 v162, v163

    :goto_250
    :try_start_250
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v161, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_25e
    .catch Ljava/lang/Throwable; {:try_start_250 .. :try_end_25e} :catch_baf
    .catch Ljava/lang/RuntimeException; {:try_start_250 .. :try_end_25e} :catch_b86

    move-object/from16 v160, v161

    :cond_260
    :goto_260
    :try_start_260
    const-string v7, "SystemServer"

    const-string v9, "!@Begin PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v104, :cond_bbb

    const/4 v7, 0x1

    :goto_26a
    move-object/from16 v0, v113

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v136

    const-string v7, "SystemServer"

    const-string v9, "!@End PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_279
    .catch Ljava/lang/RuntimeException; {:try_start_260 .. :try_end_279} :catch_b86

    const/16 v107, 0x0

    :try_start_27b
    invoke-interface/range {v136 .. v136}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_27e
    .catch Landroid/os/RemoteException; {:try_start_27b .. :try_end_27e} :catch_fe7
    .catch Ljava/lang/RuntimeException; {:try_start_27b .. :try_end_27e} :catch_b86

    move-result v107

    :goto_27f
    :try_start_27f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_29a
    .catch Ljava/lang/RuntimeException; {:try_start_27f .. :try_end_29a} :catch_b86

    :try_start_29a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v65, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2a8
    .catch Ljava/lang/Throwable; {:try_start_29a .. :try_end_2a8} :catch_bbe
    .catch Ljava/lang/RuntimeException; {:try_start_29a .. :try_end_2a8} :catch_b86

    :try_start_2a8
    const-string v7, "account"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2af
    .catch Ljava/lang/Throwable; {:try_start_2a8 .. :try_end_2af} :catch_113f
    .catch Ljava/lang/RuntimeException; {:try_start_2a8 .. :try_end_2af} :catch_10df

    move-object/from16 v64, v65

    :goto_2b1
    :try_start_2b1
    const-string v7, ""

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b8
    .catch Ljava/lang/RuntimeException; {:try_start_2b1 .. :try_end_2b8} :catch_b86

    move-result v7

    if-eqz v7, :cond_2cc

    :try_start_2bb
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2cc
    .catch Ljava/lang/Throwable; {:try_start_2bb .. :try_end_2cc} :catch_bca
    .catch Ljava/lang/RuntimeException; {:try_start_2bb .. :try_end_2cc} :catch_b86

    :cond_2cc
    :goto_2cc
    :try_start_2cc
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_bd6

    const/4 v7, 0x1

    :goto_2d9
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v87

    new-instance v92, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_2e4
    .catch Ljava/lang/RuntimeException; {:try_start_2cc .. :try_end_2e4} :catch_b86

    :try_start_2e4
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_2ef

    const-string v7, "DirEncryptService"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ef
    .catch Ljava/lang/Throwable; {:try_start_2e4 .. :try_end_2ef} :catch_bd9
    .catch Ljava/lang/RuntimeException; {:try_start_2e4 .. :try_end_2ef} :catch_10ee

    :cond_2ef
    move-object/from16 v91, v92

    :goto_2f1
    :try_start_2f1
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_307
    .catch Ljava/lang/RuntimeException; {:try_start_2f1 .. :try_end_307} :catch_b86

    :try_start_307
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_313
    .catch Ljava/lang/RuntimeException; {:try_start_307 .. :try_end_313} :catch_10fd

    :try_start_313
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v176, Lcom/android/server/VibratorService;

    move-object/from16 v0, v176

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_326
    .catch Ljava/lang/RuntimeException; {:try_start_313 .. :try_end_326} :catch_1108

    :try_start_326
    const-string v7, "vibrator"

    move-object/from16 v0, v176

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v151, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v151

    invoke-direct {v0, v5, v4, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V
    :try_end_33f
    .catch Ljava/lang/RuntimeException; {:try_start_326 .. :try_end_33f} :catch_1111

    :try_start_33f
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35d
    .catch Ljava/lang/RuntimeException; {:try_start_33f .. :try_end_35d} :catch_111c

    :try_start_35d
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_387
    .catch Ljava/lang/RuntimeException; {:try_start_35d .. :try_end_387} :catch_1129

    :try_start_387
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b5

    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_3b5
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_be7

    const/16 v22, 0x1

    :goto_3c3
    if-nez v107, :cond_beb

    const/16 v23, 0x1

    :goto_3c7
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v187

    const-string v7, "window"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v187

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v5}, Lcom/android/server/power/FakeShutdown;->restoreAirplaneMode(Landroid/content/Context;)V

    new-instance v7, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, v187

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bef

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41b
    .catch Ljava/lang/RuntimeException; {:try_start_387 .. :try_end_41b} :catch_bfd

    :goto_41b
    move-object/from16 v175, v176

    move-object/from16 v150, v151

    move-object/from16 v112, v113

    :goto_421
    const/16 v94, 0x0

    const/16 v102, 0x0

    const/16 v152, 0x0

    const/16 v109, 0x0

    const/16 v67, 0x0

    const/16 v133, 0x0

    const/16 v178, 0x0

    const/16 v116, 0x0

    const/16 v120, 0x0

    const/16 v88, 0x0

    const/16 v164, 0x0

    const/16 v118, 0x0

    const/16 v99, 0x0

    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_46a

    :try_start_440
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v110, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v187

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_450
    .catch Ljava/lang/Throwable; {:try_start_440 .. :try_end_450} :catch_c2f

    :try_start_450
    const-string v7, "input_method"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_457
    .catch Ljava/lang/Throwable; {:try_start_450 .. :try_end_457} :catch_105e

    move-object/from16 v109, v110

    :goto_459
    :try_start_459
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46a
    .catch Ljava/lang/Throwable; {:try_start_459 .. :try_end_46a} :catch_c3b

    :cond_46a
    :goto_46a
    :try_start_46a
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_46d
    .catch Ljava/lang/Throwable; {:try_start_46a .. :try_end_46d} :catch_c47

    :goto_46d
    :try_start_46d
    invoke-interface/range {v136 .. v136}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_470
    .catch Ljava/lang/Throwable; {:try_start_46d .. :try_end_470} :catch_c53

    :goto_470
    :try_start_470
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10405be

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_483
    .catch Landroid/os/RemoteException; {:try_start_470 .. :try_end_483} :catch_105b

    :goto_483
    if-eqz v85, :cond_488

    :try_start_485
    invoke-virtual/range {v85 .. v85}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_488
    .catch Ljava/lang/Throwable; {:try_start_485 .. :try_end_488} :catch_c5f

    :cond_488
    :goto_488
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_114e

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4b2

    :try_start_49b
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v126, Lcom/android/server/MountService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_4a9
    .catch Ljava/lang/Throwable; {:try_start_49b .. :try_end_4a9} :catch_c6b

    :try_start_4a9
    const-string v7, "mount"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b0
    .catch Ljava/lang/Throwable; {:try_start_4a9 .. :try_end_4b0} :catch_1056

    move-object/from16 v125, v126

    :cond_4b2
    :goto_4b2
    :try_start_4b2
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v91, :cond_4c5

    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_4c5
    .catch Ljava/lang/Throwable; {:try_start_4b2 .. :try_end_4c5} :catch_c77

    :cond_4c5
    :goto_4c5
    :try_start_4c5
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v119, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v119

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_4d3
    .catch Ljava/lang/Throwable; {:try_start_4c5 .. :try_end_4d3} :catch_c83

    :try_start_4d3
    const-string v7, "lock_settings"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4da
    .catch Ljava/lang/Throwable; {:try_start_4d3 .. :try_end_4da} :catch_1051

    move-object/from16 v118, v119

    :goto_4dc
    :try_start_4dc
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v95, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4ea
    .catch Ljava/lang/Throwable; {:try_start_4dc .. :try_end_4ea} :catch_c8f

    :try_start_4ea
    const-string v7, "device_policy"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f1
    .catch Ljava/lang/Throwable; {:try_start_4ea .. :try_end_4f1} :catch_104c

    move-object/from16 v94, v95

    :goto_4f3
    :try_start_4f3
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v103, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v136

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v103

    invoke-direct {v0, v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_506
    .catch Ljava/lang/Throwable; {:try_start_4f3 .. :try_end_506} :catch_c9b

    :try_start_506
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v103

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_514
    .catch Ljava/lang/Throwable; {:try_start_506 .. :try_end_514} :catch_1047

    move-object/from16 v102, v103

    :goto_516
    :try_start_516
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v123, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_524
    .catch Ljava/lang/Throwable; {:try_start_516 .. :try_end_524} :catch_ca7

    :try_start_524
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_532
    .catch Ljava/lang/Throwable; {:try_start_524 .. :try_end_532} :catch_1042

    move-object/from16 v122, v123

    :goto_534
    :try_start_534
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v153, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v153

    move-object/from16 v1, v187

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_544
    .catch Ljava/lang/Throwable; {:try_start_534 .. :try_end_544} :catch_cb3

    :try_start_544
    const-string v7, "statusbar"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54b
    .catch Ljava/lang/Throwable; {:try_start_544 .. :try_end_54b} :catch_103d

    move-object/from16 v152, v153

    :goto_54d
    :try_start_54d
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55e
    .catch Ljava/lang/Throwable; {:try_start_54d .. :try_end_55e} :catch_cbf

    :goto_55e
    :try_start_55e
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56f
    .catch Ljava/lang/Throwable; {:try_start_55e .. :try_end_56f} :catch_ccb

    :goto_56f
    :try_start_56f
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_581
    .catch Ljava/lang/Throwable; {:try_start_56f .. :try_end_581} :catch_cd7

    :goto_581
    :try_start_581
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v165, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_58f
    .catch Ljava/lang/Throwable; {:try_start_581 .. :try_end_58f} :catch_ce3

    :try_start_58f
    const-string v7, "textservices"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_596
    .catch Ljava/lang/Throwable; {:try_start_58f .. :try_end_596} :catch_1038

    move-object/from16 v164, v165

    :goto_598
    :try_start_598
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v130, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v130

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_5a8
    .catch Ljava/lang/Throwable; {:try_start_598 .. :try_end_5a8} :catch_cef

    :try_start_5a8
    const-string v7, "netstats"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5af
    .catch Ljava/lang/Throwable; {:try_start_5a8 .. :try_end_5af} :catch_1033

    move-object/from16 v29, v130

    :goto_5b1
    :try_start_5b1
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_5c5
    .catch Ljava/lang/Throwable; {:try_start_5b1 .. :try_end_5c5} :catch_cfb

    :try_start_5c5
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5cc
    .catch Ljava/lang/Throwable; {:try_start_5c5 .. :try_end_5cc} :catch_1030

    :goto_5cc
    :try_start_5cc
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v186, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v186

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_5da
    .catch Ljava/lang/Throwable; {:try_start_5cc .. :try_end_5da} :catch_d09

    :try_start_5da
    const-string v7, "wifip2p"

    move-object/from16 v0, v186

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e1
    .catch Ljava/lang/Throwable; {:try_start_5da .. :try_end_5e1} :catch_102b

    move-object/from16 v185, v186

    :goto_5e3
    :try_start_5e3
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v183, Lcom/android/server/WifiService;

    move-object/from16 v0, v183

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_5f1
    .catch Ljava/lang/Throwable; {:try_start_5e3 .. :try_end_5f1} :catch_d15

    :try_start_5f1
    const-string v7, "wifi"

    move-object/from16 v0, v183

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f8
    .catch Ljava/lang/Throwable; {:try_start_5f1 .. :try_end_5f8} :catch_1026

    move-object/from16 v182, v183

    :goto_5fa
    :try_start_5fa
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v181, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v181

    invoke-direct {v0, v5}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_608
    .catch Ljava/lang/Throwable; {:try_start_5fa .. :try_end_608} :catch_d21

    :try_start_608
    const-string v7, "wfd"

    move-object/from16 v0, v181

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60f
    .catch Ljava/lang/Throwable; {:try_start_608 .. :try_end_60f} :catch_1021

    move-object/from16 v180, v181

    :goto_611
    :try_start_611
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v82, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v82

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_625
    .catch Ljava/lang/Throwable; {:try_start_611 .. :try_end_625} :catch_d2d

    :try_start_625
    const-string v7, "connectivity"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v182 .. v182}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    invoke-virtual/range {v185 .. v185}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_640
    .catch Ljava/lang/Throwable; {:try_start_625 .. :try_end_640} :catch_101c

    move-object/from16 v81, v82

    :goto_642
    :try_start_642
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v147

    const-string v7, "servicediscovery"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_654
    .catch Ljava/lang/Throwable; {:try_start_642 .. :try_end_654} :catch_d39

    :goto_654
    :try_start_654
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v158, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_662
    .catch Ljava/lang/Throwable; {:try_start_654 .. :try_end_662} :catch_d45

    :try_start_662
    const-string v7, "throttle"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_669
    .catch Ljava/lang/Throwable; {:try_start_662 .. :try_end_669} :catch_1017

    move-object/from16 v157, v158

    :goto_66b
    :try_start_66b
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67c
    .catch Ljava/lang/Throwable; {:try_start_66b .. :try_end_67c} :catch_d51

    :goto_67c
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.multiwindow.toolkit"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_699

    :try_start_688
    const-string v7, "SystemServer"

    const-string v9, "ToolkitManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "toolkitmanager"

    new-instance v9, Lcom/android/server/toolkit/ToolkitManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/toolkit/ToolkitManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_699
    .catch Ljava/lang/Throwable; {:try_start_688 .. :try_end_699} :catch_d5d

    :cond_699
    :goto_699
    if-eqz v125, :cond_6ae

    const-string v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6ae

    invoke-virtual/range {v125 .. v125}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_6ae
    if-eqz v64, :cond_6b3

    :try_start_6b0
    invoke-virtual/range {v64 .. v64}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_6b3
    .catch Ljava/lang/Throwable; {:try_start_6b0 .. :try_end_6b3} :catch_d69

    :cond_6b3
    :goto_6b3
    if-eqz v87, :cond_6b8

    :try_start_6b5
    invoke-virtual/range {v87 .. v87}, Landroid/content/ContentService;->systemReady()V
    :try_end_6b8
    .catch Ljava/lang/Throwable; {:try_start_6b5 .. :try_end_6b8} :catch_d75

    :cond_6b8
    :goto_6b8
    :try_start_6b8
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v134, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v134

    move-object/from16 v1, v152

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_6c8
    .catch Ljava/lang/Throwable; {:try_start_6b8 .. :try_end_6c8} :catch_d81

    :try_start_6c8
    const-string v7, "notification"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_6d6
    .catch Ljava/lang/Throwable; {:try_start_6c8 .. :try_end_6d6} :catch_1012

    move-object/from16 v133, v134

    :goto_6d8
    :try_start_6d8
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e9
    .catch Ljava/lang/Throwable; {:try_start_6d8 .. :try_end_6e9} :catch_d8d

    :goto_6e9
    :try_start_6e9
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v117, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6f7
    .catch Ljava/lang/Throwable; {:try_start_6e9 .. :try_end_6f7} :catch_d99

    :try_start_6f7
    const-string v7, "location"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6fe
    .catch Ljava/lang/Throwable; {:try_start_6f7 .. :try_end_6fe} :catch_100d

    move-object/from16 v116, v117

    :goto_700
    :try_start_700
    const-string v7, "SystemServer"

    const-string v9, "LPP Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.samsung.lpp.LPPLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v121

    const-string v7, "getLPPManagerService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v11

    move-object/from16 v0, v121

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v108

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-object/from16 v0, v108

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v120, v0

    const-string v7, "lpp"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Loading LPPManagerService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73d
    .catch Ljava/lang/Throwable; {:try_start_700 .. :try_end_73d} :catch_da5

    :goto_73d
    :try_start_73d
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v89, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_74b
    .catch Ljava/lang/Throwable; {:try_start_73d .. :try_end_74b} :catch_dc4

    :try_start_74b
    const-string v7, "country_detector"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_752
    .catch Ljava/lang/Throwable; {:try_start_74b .. :try_end_752} :catch_1008

    move-object/from16 v88, v89

    :goto_754
    :try_start_754
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_765
    .catch Ljava/lang/Throwable; {:try_start_754 .. :try_end_765} :catch_dd0

    :goto_765
    :try_start_765
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v136

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ddc

    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_780
    .catch Ljava/lang/Throwable; {:try_start_765 .. :try_end_780} :catch_de5

    :goto_780
    :try_start_780
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_798
    .catch Ljava/lang/Throwable; {:try_start_780 .. :try_end_798} :catch_e02

    :goto_798
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_7be

    :try_start_7a5
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_7be

    new-instance v179, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7b5
    .catch Ljava/lang/Throwable; {:try_start_7a5 .. :try_end_7b5} :catch_e0e

    :try_start_7b5
    const-string v7, "wallpaper"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7bc
    .catch Ljava/lang/Throwable; {:try_start_7b5 .. :try_end_7bc} :catch_1003

    move-object/from16 v178, v179

    :cond_7be
    :goto_7be
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7dd

    :try_start_7cc
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7dd
    .catch Ljava/lang/Throwable; {:try_start_7cc .. :try_end_7dd} :catch_e1a

    :cond_7dd
    :goto_7dd
    :try_start_7dd
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v98, Lcom/android/server/DockObserver;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_7eb
    .catch Ljava/lang/Throwable; {:try_start_7dd .. :try_end_7eb} :catch_e26

    move-object/from16 v97, v98

    :goto_7ed
    :try_start_7ed
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_800
    .catch Ljava/lang/Throwable; {:try_start_7ed .. :try_end_800} :catch_e32

    :goto_800
    :try_start_800
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v174, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_80e
    .catch Ljava/lang/Throwable; {:try_start_800 .. :try_end_80e} :catch_e3e

    :try_start_80e
    const-string v7, "usb"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_815
    .catch Ljava/lang/Throwable; {:try_start_80e .. :try_end_815} :catch_ffe

    move-object/from16 v173, v174

    :goto_817
    :try_start_817
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v146, Lcom/android/server/SerialService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_825
    .catch Ljava/lang/Throwable; {:try_start_817 .. :try_end_825} :catch_e4a

    :try_start_825
    const-string v7, "serial"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82c
    .catch Ljava/lang/Throwable; {:try_start_825 .. :try_end_82c} :catch_ff9

    move-object/from16 v145, v146

    :goto_82e
    :try_start_82e
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v169, Lcom/android/server/TwilightService;

    move-object/from16 v0, v169

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_83c
    .catch Ljava/lang/Throwable; {:try_start_82e .. :try_end_83c} :catch_e56

    move-object/from16 v168, v169

    :goto_83e
    :try_start_83e
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v172, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v172

    move-object/from16 v1, v168

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_84e
    .catch Ljava/lang/Throwable; {:try_start_83e .. :try_end_84e} :catch_e62

    move-object/from16 v171, v172

    :goto_850
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_86d

    :try_start_85c
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86d
    .catch Ljava/lang/Throwable; {:try_start_85c .. :try_end_86d} :catch_e6e

    :cond_86d
    :goto_86d
    :try_start_86d
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_87e
    .catch Ljava/lang/Throwable; {:try_start_86d .. :try_end_87e} :catch_e7a

    :goto_87e
    :try_start_87e
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_88c
    .catch Ljava/lang/Throwable; {:try_start_87e .. :try_end_88c} :catch_e86

    :try_start_88c
    const-string v7, "appwidget"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_893
    .catch Ljava/lang/Throwable; {:try_start_88c .. :try_end_893} :catch_ff4

    move-object/from16 v67, v68

    :goto_895
    :try_start_895
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v142, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8a3
    .catch Ljava/lang/Throwable; {:try_start_895 .. :try_end_8a3} :catch_e92

    move-object/from16 v141, v142

    :goto_8a5
    :try_start_8a5
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b6
    .catch Ljava/lang/Throwable; {:try_start_8a5 .. :try_end_8b6} :catch_e9e

    :goto_8b6
    :try_start_8b6
    const-string v7, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    const-string v7, "AtCmdFwd"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8cb
    .catch Ljava/lang/Throwable; {:try_start_8b6 .. :try_end_8cb} :catch_eaa

    :goto_8cb
    :try_start_8cb
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8dc
    .catch Ljava/lang/Throwable; {:try_start_8cb .. :try_end_8dc} :catch_eb6

    :goto_8dc
    :try_start_8dc
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v132, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_8ea
    .catch Ljava/lang/Throwable; {:try_start_8dc .. :try_end_8ea} :catch_ec2

    move-object/from16 v131, v132

    :goto_8ec
    const-string v7, "ro.tvout.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v166

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v166

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "false"

    move-object/from16 v0, v166

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92e

    :try_start_916
    const-string v7, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v167, 0x0

    const-string v7, "com.android.server.TvoutService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v167

    if-nez v167, :cond_ece

    const-string v7, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92e
    .catch Ljava/lang/Throwable; {:try_start_916 .. :try_end_92e} :catch_efc

    :cond_92e
    :goto_92e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v135

    const-string v7, "com.sec.feature.irda_service"

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_951

    :try_start_93c
    const-string v7, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v114, Landroid/app/IrdaService;

    move-object/from16 v0, v114

    invoke-direct {v0, v5}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    const-string v7, "irda"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_951
    .catch Ljava/lang/Throwable; {:try_start_93c .. :try_end_951} :catch_f08

    :cond_951
    :goto_951
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_970

    :try_start_95b
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v71, Landroid/app/BarBeamService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    const-string v7, "barbeam"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_970
    .catch Ljava/lang/Throwable; {:try_start_95b .. :try_end_970} :catch_f14

    :cond_970
    :goto_970
    :try_start_970
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v79, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_97e
    .catch Ljava/lang/Throwable; {:try_start_970 .. :try_end_97e} :catch_f20

    :try_start_97e
    const-string v7, "commontime_management"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_985
    .catch Ljava/lang/Throwable; {:try_start_97e .. :try_end_985} :catch_fef

    move-object/from16 v78, v79

    :goto_987
    :try_start_987
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_998
    .catch Ljava/lang/Throwable; {:try_start_987 .. :try_end_998} :catch_f2c

    :goto_998
    :try_start_998
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9a9
    .catch Ljava/lang/Throwable; {:try_start_998 .. :try_end_9a9} :catch_f38

    :goto_9a9
    :try_start_9a9
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v75

    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v75

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v76

    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v76

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v106

    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v75

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v77

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v77

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v84

    const/4 v7, 0x0

    move-object/from16 v0, v106

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-object/from16 v0, v84

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f6
    .catch Ljava/lang/Exception; {:try_start_9a9 .. :try_end_9f6} :catch_f42

    :goto_9f6
    :try_start_9f6
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_a02
    .catch Ljava/lang/Throwable; {:try_start_9f6 .. :try_end_a02} :catch_f4e

    :goto_a02
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110043

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a28

    :try_start_a0f
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v100, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v100

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_a1f
    .catch Ljava/lang/Throwable; {:try_start_a0f .. :try_end_a1f} :catch_f5a

    :try_start_a1f
    const-string v7, "dreams"

    move-object/from16 v0, v100

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a26
    .catch Ljava/lang/Throwable; {:try_start_a1f .. :try_end_a26} :catch_fea

    move-object/from16 v99, v100

    :cond_a28
    :goto_a28
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a2f
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a40
    .catch Ljava/lang/Throwable; {:try_start_a2f .. :try_end_a40} :catch_f66

    :goto_a40
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    if-eqz v47, :cond_f72

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_a57
    :try_start_a57
    invoke-virtual/range {v175 .. v175}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_a5a
    .catch Ljava/lang/Throwable; {:try_start_a57 .. :try_end_a5a} :catch_f7b

    :goto_a5a
    :try_start_a5a
    invoke-virtual/range {v118 .. v118}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_a5d
    .catch Ljava/lang/Throwable; {:try_start_a5a .. :try_end_a5d} :catch_f87

    :goto_a5d
    if-eqz v94, :cond_a62

    :try_start_a5f
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_a62
    .catch Ljava/lang/Throwable; {:try_start_a5f .. :try_end_a62} :catch_f93

    :cond_a62
    :goto_a62
    if-eqz v102, :cond_a6e

    invoke-virtual/range {v102 .. v102}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6e
    if-eqz v133, :cond_a73

    :try_start_a70
    invoke-virtual/range {v133 .. v133}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_a73
    .catch Ljava/lang/Throwable; {:try_start_a70 .. :try_end_a73} :catch_f9f

    :cond_a73
    :goto_a73
    :try_start_a73
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_a76
    .catch Ljava/lang/Throwable; {:try_start_a73 .. :try_end_a76} :catch_fab

    :goto_a76
    if-eqz v47, :cond_a7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_a7f
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v80

    new-instance v124, Landroid/util/DisplayMetrics;

    invoke-direct/range {v124 .. v124}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v177

    check-cast v177, Landroid/view/WindowManager;

    invoke-interface/range {v177 .. v177}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v124

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v80

    move-object/from16 v1, v124

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_aa4
    move-object/from16 v0, v168

    move-object/from16 v1, v99

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_aab
    .catch Ljava/lang/Throwable; {:try_start_aa4 .. :try_end_aab} :catch_fb7

    :goto_aab
    :try_start_aab
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_aae
    .catch Ljava/lang/Throwable; {:try_start_aab .. :try_end_aae} :catch_fc3

    :goto_aae
    :try_start_aae
    invoke-interface/range {v136 .. v136}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_ab1
    .catch Ljava/lang/Throwable; {:try_start_aae .. :try_end_ab1} :catch_fcf

    :goto_ab1
    :try_start_ab1
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_ab8
    .catch Ljava/lang/Throwable; {:try_start_ab1 .. :try_end_ab8} :catch_fdb

    :goto_ab8
    move-object/from16 v34, v5

    move-object/from16 v35, v125

    move-object/from16 v36, v8

    move-object/from16 v37, v30

    move-object/from16 v38, v29

    move-object/from16 v39, v25

    move-object/from16 v40, v81

    move-object/from16 v41, v97

    move-object/from16 v42, v173

    move-object/from16 v54, v157

    move-object/from16 v43, v168

    move-object/from16 v44, v171

    move-object/from16 v46, v67

    move-object/from16 v48, v178

    move-object/from16 v49, v109

    move-object/from16 v45, v141

    move-object/from16 v51, v116

    move-object/from16 v52, v120

    move-object/from16 v53, v88

    move-object/from16 v55, v131

    move-object/from16 v56, v78

    move-object/from16 v57, v164

    move-object/from16 v50, v152

    move-object/from16 v58, v99

    move-object/from16 v59, v19

    move-object/from16 v61, v154

    move-object/from16 v62, v127

    move-object/from16 v63, v156

    move-object/from16 v60, v85

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v63}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_b0f

    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0f
    const-string v7, "SystemServer"

    const-string v9, "!@End SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b21
    :try_start_b21
    new-instance v155, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_b28
    .catch Ljava/lang/RuntimeException; {:try_start_b21 .. :try_end_b28} :catch_b86

    :try_start_b28
    const-string v7, "telephony.registry"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1156

    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v128, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_b47
    .catch Ljava/lang/RuntimeException; {:try_start_b28 .. :try_end_b47} :catch_1092

    :try_start_b47
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b4e
    .catch Ljava/lang/RuntimeException; {:try_start_b47 .. :try_end_b4e} :catch_10a1

    move-object/from16 v154, v155

    goto/16 :goto_1a6

    :cond_b52
    :try_start_b52
    const-string v7, "1"

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20b

    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_20b

    :catch_b67
    move-exception v101

    :goto_b68
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure starting Container Service"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v101 .. v101}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b84
    .catch Ljava/lang/RuntimeException; {:try_start_b52 .. :try_end_b84} :catch_b86

    goto/16 :goto_229

    :catch_b86
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    :goto_b91
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_421

    :catch_ba3
    move-exception v101

    :goto_ba4
    :try_start_ba4
    const-string v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_250

    :catch_baf
    move-exception v101

    const-string v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_260

    :cond_bbb
    const/4 v7, 0x0

    goto/16 :goto_26a

    :catch_bbe
    move-exception v101

    :goto_bbf
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b1

    :catch_bca
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd4
    .catch Ljava/lang/RuntimeException; {:try_start_ba4 .. :try_end_bd4} :catch_b86

    goto/16 :goto_2cc

    :cond_bd6
    const/4 v7, 0x0

    goto/16 :goto_2d9

    :catch_bd9
    move-exception v101

    :try_start_bda
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be3
    .catch Ljava/lang/RuntimeException; {:try_start_bda .. :try_end_be3} :catch_10ee

    const/16 v91, 0x0

    goto/16 :goto_2f1

    :cond_be7
    const/16 v22, 0x0

    goto/16 :goto_3c3

    :cond_beb
    const/16 v23, 0x0

    goto/16 :goto_3c7

    :cond_bef
    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_c05

    :try_start_bf4
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41b

    :catch_bfd
    move-exception v101

    move-object/from16 v175, v176

    move-object/from16 v150, v151

    move-object/from16 v112, v113

    goto :goto_b91

    :cond_c05
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v74, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c13
    .catch Ljava/lang/RuntimeException; {:try_start_bf4 .. :try_end_c13} :catch_bfd

    :try_start_c13
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c2b
    .catch Ljava/lang/RuntimeException; {:try_start_c13 .. :try_end_c2b} :catch_1134

    move-object/from16 v73, v74

    goto/16 :goto_41b

    :catch_c2f
    move-exception v101

    :goto_c30
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_459

    :catch_c3b
    move-exception v101

    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46a

    :catch_c47
    move-exception v101

    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46d

    :catch_c53
    move-exception v101

    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_470

    :catch_c5f
    move-exception v101

    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_488

    :catch_c6b
    move-exception v101

    :goto_c6c
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b2

    :catch_c77
    move-exception v101

    const-string v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c5

    :catch_c83
    move-exception v101

    :goto_c84
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4dc

    :catch_c8f
    move-exception v101

    :goto_c90
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f3

    :catch_c9b
    move-exception v101

    :goto_c9c
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_516

    :catch_ca7
    move-exception v101

    :goto_ca8
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_534

    :catch_cb3
    move-exception v101

    :goto_cb4
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54d

    :catch_cbf
    move-exception v101

    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55e

    :catch_ccb
    move-exception v101

    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56f

    :catch_cd7
    move-exception v101

    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_581

    :catch_ce3
    move-exception v101

    :goto_ce4
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_598

    :catch_cef
    move-exception v101

    :goto_cf0
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b1

    :catch_cfb
    move-exception v101

    move-object/from16 v25, v129

    :goto_cfe
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5cc

    :catch_d09
    move-exception v101

    :goto_d0a
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e3

    :catch_d15
    move-exception v101

    :goto_d16
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5fa

    :catch_d21
    move-exception v101

    :goto_d22
    const-string v7, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_611

    :catch_d2d
    move-exception v101

    :goto_d2e
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_642

    :catch_d39
    move-exception v101

    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_654

    :catch_d45
    move-exception v101

    :goto_d46
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66b

    :catch_d51
    move-exception v101

    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67c

    :catch_d5d
    move-exception v101

    const-string v7, "Failure starting ToolkitManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_699

    :catch_d69
    move-exception v101

    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b3

    :catch_d75
    move-exception v101

    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b8

    :catch_d81
    move-exception v101

    :goto_d82
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d8

    :catch_d8d
    move-exception v101

    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e9

    :catch_d99
    move-exception v101

    :goto_d9a
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_700

    :catch_da5
    move-exception v101

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting LPP Manager : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73d

    :catch_dc4
    move-exception v101

    :goto_dc5
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_754

    :catch_dd0
    move-exception v101

    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_765

    :cond_ddc
    :try_start_ddc
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de3
    .catch Ljava/lang/Throwable; {:try_start_ddc .. :try_end_de3} :catch_de5

    goto/16 :goto_780

    :catch_de5
    move-exception v101

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting Spell Service failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v101

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_780

    :catch_e02
    move-exception v101

    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_798

    :catch_e0e
    move-exception v101

    :goto_e0f
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7be

    :catch_e1a
    move-exception v101

    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7dd

    :catch_e26
    move-exception v101

    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ed

    :catch_e32
    move-exception v101

    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_800

    :catch_e3e
    move-exception v101

    :goto_e3f
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_817

    :catch_e4a
    move-exception v101

    :goto_e4b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_82e

    :catch_e56
    move-exception v101

    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_83e

    :catch_e62
    move-exception v101

    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_850

    :catch_e6e
    move-exception v101

    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_86d

    :catch_e7a
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_87e

    :catch_e86
    move-exception v101

    :goto_e87
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_895

    :catch_e92
    move-exception v101

    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8a5

    :catch_e9e
    move-exception v101

    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8b6

    :catch_eaa
    move-exception v101

    const-string v7, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8cb

    :catch_eb6
    move-exception v101

    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8dc

    :catch_ec2
    move-exception v101

    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8ec

    :cond_ece
    :try_start_ece
    const-string v7, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v69, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v69, v7

    move-object/from16 v0, v167

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v83

    const-string v9, "tvoutservice"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    move-object/from16 v0, v83

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_efa
    .catch Ljava/lang/Throwable; {:try_start_ece .. :try_end_efa} :catch_efc

    goto/16 :goto_92e

    :catch_efc
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_92e

    :catch_f08
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_951

    :catch_f14
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_970

    :catch_f20
    move-exception v101

    :goto_f21
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_987

    :catch_f2c
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_998

    :catch_f38
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a9

    :catch_f42
    move-exception v101

    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9f6

    :catch_f4e
    move-exception v101

    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a02

    :catch_f5a
    move-exception v101

    :goto_f5b
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a28

    :catch_f66
    move-exception v101

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a40

    :cond_f72
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_a57

    :catch_f7b
    move-exception v101

    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5a

    :catch_f87
    move-exception v101

    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5d

    :catch_f93
    move-exception v101

    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a62

    :catch_f9f
    move-exception v101

    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a73

    :catch_fab
    move-exception v101

    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a76

    :catch_fb7
    move-exception v101

    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aab

    :catch_fc3
    move-exception v101

    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aae

    :catch_fcf
    move-exception v101

    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ab1

    :catch_fdb
    move-exception v101

    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ab8

    :catch_fe7
    move-exception v7

    goto/16 :goto_27f

    :catch_fea
    move-exception v101

    move-object/from16 v99, v100

    goto/16 :goto_f5b

    :catch_fef
    move-exception v101

    move-object/from16 v78, v79

    goto/16 :goto_f21

    :catch_ff4
    move-exception v101

    move-object/from16 v67, v68

    goto/16 :goto_e87

    :catch_ff9
    move-exception v101

    move-object/from16 v145, v146

    goto/16 :goto_e4b

    :catch_ffe
    move-exception v101

    move-object/from16 v173, v174

    goto/16 :goto_e3f

    :catch_1003
    move-exception v101

    move-object/from16 v178, v179

    goto/16 :goto_e0f

    :catch_1008
    move-exception v101

    move-object/from16 v88, v89

    goto/16 :goto_dc5

    :catch_100d
    move-exception v101

    move-object/from16 v116, v117

    goto/16 :goto_d9a

    :catch_1012
    move-exception v101

    move-object/from16 v133, v134

    goto/16 :goto_d82

    :catch_1017
    move-exception v101

    move-object/from16 v157, v158

    goto/16 :goto_d46

    :catch_101c
    move-exception v101

    move-object/from16 v81, v82

    goto/16 :goto_d2e

    :catch_1021
    move-exception v101

    move-object/from16 v180, v181

    goto/16 :goto_d22

    :catch_1026
    move-exception v101

    move-object/from16 v182, v183

    goto/16 :goto_d16

    :catch_102b
    move-exception v101

    move-object/from16 v185, v186

    goto/16 :goto_d0a

    :catch_1030
    move-exception v101

    goto/16 :goto_cfe

    :catch_1033
    move-exception v101

    move-object/from16 v29, v130

    goto/16 :goto_cf0

    :catch_1038
    move-exception v101

    move-object/from16 v164, v165

    goto/16 :goto_ce4

    :catch_103d
    move-exception v101

    move-object/from16 v152, v153

    goto/16 :goto_cb4

    :catch_1042
    move-exception v101

    move-object/from16 v122, v123

    goto/16 :goto_ca8

    :catch_1047
    move-exception v101

    move-object/from16 v102, v103

    goto/16 :goto_c9c

    :catch_104c
    move-exception v101

    move-object/from16 v94, v95

    goto/16 :goto_c90

    :catch_1051
    move-exception v101

    move-object/from16 v118, v119

    goto/16 :goto_c84

    :catch_1056
    move-exception v101

    move-object/from16 v125, v126

    goto/16 :goto_c6c

    :catch_105b
    move-exception v7

    goto/16 :goto_483

    :catch_105e
    move-exception v101

    move-object/from16 v109, v110

    goto/16 :goto_c30

    :catch_1063
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v10, v96

    move-object/from16 v4, v137

    move-object/from16 v6, v115

    goto/16 :goto_b91

    :catch_1072
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v10, v96

    move-object/from16 v4, v137

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_1083
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v10, v96

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_1092
    move-exception v101

    move-object/from16 v154, v155

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_10a1
    move-exception v101

    move-object/from16 v127, v128

    move-object/from16 v154, v155

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_10b2
    move-exception v101

    move-object/from16 v127, v128

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_10c1
    move-exception v101

    move-object/from16 v85, v86

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_10d0
    move-exception v101

    move-object/from16 v162, v163

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_10df
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v64, v65

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_10ee
    move-exception v101

    move-object/from16 v91, v92

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v6, v115

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_10fd
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v8, v72

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_1108
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_1111
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v175, v176

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_111c
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v15, v66

    move-object/from16 v175, v176

    move-object/from16 v150, v151

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_1129
    move-exception v101

    move-object/from16 v19, v111

    move-object/from16 v175, v176

    move-object/from16 v150, v151

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_1134
    move-exception v101

    move-object/from16 v73, v74

    move-object/from16 v175, v176

    move-object/from16 v150, v151

    move-object/from16 v112, v113

    goto/16 :goto_b91

    :catch_113f
    move-exception v101

    move-object/from16 v64, v65

    goto/16 :goto_bbf

    :catch_1144
    move-exception v101

    move-object/from16 v162, v163

    goto/16 :goto_ba4

    :catch_1149
    move-exception v101

    move-object/from16 v85, v86

    goto/16 :goto_b68

    :cond_114e
    move-object/from16 v25, v129

    goto/16 :goto_a28

    :cond_1152
    move-object/from16 v127, v128

    goto/16 :goto_1c5

    :cond_1156
    move-object/from16 v128, v127

    move-object/from16 v154, v155

    goto/16 :goto_1a6
.end method
