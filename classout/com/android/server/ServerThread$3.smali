.class Lcom/android/server/ServerThread$3;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$headless:Z

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$lppF:Landroid/os/IBinder;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$throttleF:Lcom/android/server/ThrottleService;

.field final synthetic val$twilightF:Lcom/android/server/TwilightService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/TelephonyRegistry;)V
    .registers 34

    iput-object p1, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    iput-boolean p2, p0, Lcom/android/server/ServerThread$3;->val$headless:Z

    iput-object p3, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p5, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p6, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p7, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p8, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p9, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p10, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p11, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p12, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    iput-object p13, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p14, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/ServerThread$3;->val$safeMode:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$lppF:Landroid/os/IBinder;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$throttleF:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v4, "SystemServer"

    const-string v5, "Making services ready"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/ServerThread$3;->val$headless:Z

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    :cond_10
    :try_start_10
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v4}, Lcom/android/server/MountService;->systemReady()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_13d

    :cond_19
    :goto_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v4}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_147

    :cond_22
    :goto_22
    :try_start_22
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v4}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2b} :catch_151

    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_34} :catch_15b

    :cond_34
    :goto_34
    :try_start_34
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3d} :catch_165

    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_46} :catch_16f

    :cond_46
    :goto_46
    :try_start_46
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v4}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4f} :catch_179

    :cond_4f
    :goto_4f
    :try_start_4f
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v4, :cond_58

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v4}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_58} :catch_183

    :cond_58
    :goto_58
    :try_start_58
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v3

    if-eqz v3, :cond_18d

    invoke-virtual {v3}, Lcom/android/server/ssrm/Monitor;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_61} :catch_196

    :goto_61
    :try_start_61
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    invoke-virtual {v4}, Lcom/android/server/TwilightService;->systemReady()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_6a} :catch_1a0

    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_73} :catch_1aa

    :cond_73
    :goto_73
    :try_start_73
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v4}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_7c} :catch_1b4

    :cond_7c
    :goto_7c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/Watchdog;->start()V

    :try_start_83
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v4, :cond_8e

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v5, p0, Lcom/android/server/ServerThread$3;->val$safeMode:Z

    invoke-virtual {v4, v5}, Lcom/android/server/AppWidgetService;->systemReady(Z)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8e} :catch_1be

    :cond_8e
    :goto_8e
    :try_start_8e
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v4, :cond_97

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v4}, Lcom/android/server/WallpaperManagerService;->systemReady()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_97} :catch_1c8

    :cond_97
    :goto_97
    :try_start_97
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v4, :cond_a2

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/InputMethodManagerService;->systemReady(Lcom/android/server/StatusBarManagerService;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a2} :catch_1d2

    :cond_a2
    :goto_a2
    :try_start_a2
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v4, :cond_ab

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService;->systemReady()V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_ab} :catch_1dc

    :cond_ab
    :goto_ab
    :try_start_ab
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$lppF:Landroid/os/IBinder;

    if-eqz v4, :cond_d9

    const-string v4, "com.samsung.lpp.LPPLoader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "systemReady"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/ServerThread$3;->val$lppF:Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_d9} :catch_1e6

    :cond_d9
    :goto_d9
    :try_start_d9
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v4, :cond_e2

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v4}, Lcom/android/server/CountryDetectorService;->systemReady()V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_e2} :catch_205

    :cond_e2
    :goto_e2
    :try_start_e2
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$throttleF:Lcom/android/server/ThrottleService;

    if-eqz v4, :cond_eb

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-virtual {v4}, Lcom/android/server/ThrottleService;->systemReady()V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_eb} :catch_20f

    :cond_eb
    :goto_eb
    :try_start_eb
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v4, :cond_f4

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v4}, Lcom/android/server/NetworkTimeUpdateService;->systemReady()V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_f4} :catch_219

    :cond_f4
    :goto_f4
    :try_start_f4
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v4, :cond_fd

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v4}, Lcom/android/server/CommonTimeManagementService;->systemReady()V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_fd} :catch_223

    :cond_fd
    :goto_fd
    :try_start_fd
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v4, :cond_106

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v4}, Lcom/android/server/TextServicesManagerService;->systemReady()V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_106} :catch_22d

    :cond_106
    :goto_106
    :try_start_106
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v4, :cond_10f

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4}, Lcom/android/server/dreams/DreamManagerService;->systemReady()V
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_10f} :catch_237

    :cond_10f
    :goto_10f
    :try_start_10f
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v4, :cond_118

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->systemReady()V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_118} :catch_241

    :cond_118
    :goto_118
    :try_start_118
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    if-eqz v4, :cond_121

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->systemReady()V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_121} :catch_24b

    :cond_121
    :goto_121
    :try_start_121
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v4, :cond_12a

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry;->systemReady()V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_121 .. :try_end_12a} :catch_255

    :cond_12a
    :goto_12a
    :try_start_12a
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    if-eqz v4, :cond_133

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    invoke-virtual {v4}, Lcom/android/server/MSimTelephonyRegistry;->systemReady()V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_133} :catch_25f

    :cond_133
    :goto_133
    :try_start_133
    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

    if-eqz v4, :cond_13c

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry;->systemReady()V
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_13c} :catch_269

    :cond_13c
    :goto_13c
    return-void

    :catch_13d
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Mount Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :catch_147
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Battery Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    :catch_151
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Network Managment Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    :catch_15b
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Network Stats Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    :catch_165
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Network Policy Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :catch_16f
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Connectivity Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    :catch_179
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Dock Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    :catch_183
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making USB Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    :cond_18d
    :try_start_18d
    const-string v4, "SystemServer"

    const-string v5, "monitor object null"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_194
    .catch Ljava/lang/Throwable; {:try_start_18d .. :try_end_194} :catch_196

    goto/16 :goto_61

    :catch_196
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making monitor tmu observer"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    :catch_1a0
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "makin Twilight Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    :catch_1aa
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making UI Mode Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_73

    :catch_1b4
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Recognition Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7c

    :catch_1be
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making App Widget Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e

    :catch_1c8
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Wallpaper Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_97

    :catch_1d2
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Input Method Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a2

    :catch_1dc
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Location Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ab

    :catch_1e6
    move-exception v0

    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "making LPP Service ready :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    :catch_205
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Country Detector Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e2

    :catch_20f
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Throttle Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_eb

    :catch_219
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Network Time Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f4

    :catch_223
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Common time management service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_fd

    :catch_22d
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Text Services Manager Service ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_106

    :catch_237
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making DreamManagerService ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10f

    :catch_241
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making InputManagerService ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_118

    :catch_24b
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making Containerservice ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_121

    :catch_255
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making TelephonyRegistry ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12a

    :catch_25f
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making TelephonyRegistry ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_133

    :catch_269
    move-exception v0

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v5, "making TelephonyRegistry2 ready"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13c
.end method
