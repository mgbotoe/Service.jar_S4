.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$13;,
        Lcom/android/server/WifiService$NotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$EncryptTool;,
        Lcom/android/server/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/WifiService$AsyncServiceHandler;,
        Lcom/android/server/WifiService$HS20_ConType;,
        Lcom/android/server/WifiService$BoosterMode;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field private static final BOOSTER_HOTSPOT3G_FLAG:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DBG_BOOSTER:Z = false

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DEFAULT_MPCS_IDLE_MS:J = 0x36ee80L

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x1080706

.field private static final ICON_NETWORKS_CONNECTED:I = 0x1080760

.field private static final ICON_NETWORKS_DISABLED:I = 0x1080761

.field private static final ICON_NETWORKS_ENABLED:I = 0x1080763

.field private static final ICON_NETWORKS_HS20_H_CONNECTED:I = 0x10802e1

.field private static final ICON_NETWORKS_HS20_R_CONNECTED:I = 0x10802e2

.field private static final ICON_NETWORKS_NOT_CONNECTED:I = 0x1080765

.field private static final ICON_NETWORKS_NO_NETWORK:I = 0x1080764

.field private static final IDLE_REQUEST:I = 0x0

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final WIFI_AGGREGATION_SSID:Ljava/lang/String; = "VerizonWiFi"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static filePathGeneralinfo:Ljava/io/File;

.field private static isWifiDelayOnGoing:Z

.field private static mBoosterFLAG:I

.field private static mCurrentMode:Lcom/android/server/WifiService$BoosterMode;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

.field private final PATH_WIFIPROFILE:Ljava/lang/String;

.field private final PATH_WIFIPROFILE_NAME:Ljava/lang/String;

.field private allowWifi:Z

.field private allowWifiAp:Z

.field private bEnableWifiSettingsDialog:Z

.field private isBootCompleted:Z

.field private isFirstBootMccMnc:Z

.field private isSimCheked:Z

.field private mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mChameleonEnabled:Z

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDataActivity:I

.field private mDeviceIdle:Z

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mDomRoamMaxUser:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCallbackMode:Z

.field private mEnableTrafficStatsPoll:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mGsmMaxUser:I

.field private mHs20Noti:Landroid/app/Notification;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIntRoamMaxUser:I

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field private mIsShowingNotification:Z

.field private mIsShowingVzwNotification:Z

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mLowSignal:Z

.field private mLowSignalNWs:I

.field private mMaxUser:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedBooster:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

.field private mNotificationHS20Enabled:Z

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumOpenNetworks:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumVzwNetworks:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestWifiOn:Z

.field private mRxBytes:J

.field private mRxPkts:J

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenOff:Z

.field private mSendDhcpRelease:Z

.field private mSsid:Ljava/lang/String;

.field private mTetheredData:I

.field private mThresholdKbytes:[J

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxPkts:J

.field private mVzwNotificationEnabled:Z

.field private mVzwNotificationRepeatTime:J

.field private mVzwNotificationShown:Z

.field private mVzwWifiNotification:Landroid/app/Notification;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEnabled:Z

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

.field private mWifiStatusNoti:Landroid/app/Notification;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

.field private mccmnc:Ljava/lang/String;

.field private simState:Ljava/lang/String;

.field private simState_int:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/WifiService;->DBG:Z

    sput v1, Lcom/android/server/WifiService;->mBoosterFLAG:I

    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->FullMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    sput-boolean v1, Lcom/android/server/WifiService;->isWifiDelayOnGoing:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WifiService;->filePathGeneralinfo:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 16

    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    new-instance v9, Lcom/android/server/WifiService$LockList;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Wifi_SendSignalDuringPowerOff"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mSendDhcpRelease:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    const/16 v9, 0x9

    new-array v9, v9, [J

    fill-array-data v9, :array_2f0

    iput-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/WifiService;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/WifiService;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->isBootCompleted:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->isSimCheked:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->isFirstBootMccMnc:Z

    const-string v9, "/data/misc/wifi"

    iput-object v9, p0, Lcom/android/server/WifiService;->PATH_WIFIPROFILE:Ljava/lang/String;

    const-string v9, "default_ap.conf"

    iput-object v9, p0, Lcom/android/server/WifiService;->PATH_WIFIPROFILE_NAME:Ljava/lang/String;

    const-string v9, "generalinfo_nw.conf"

    iput-object v9, p0, Lcom/android/server/WifiService;->PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

    new-instance v9, Landroid/net/NetworkInfo;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "WIFI"

    const-string v13, ""

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->bEnableWifiSettingsDialog:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mRequestWifiOn:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiService;->allowWifi:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mChameleonEnabled:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/WifiService;->mTetheredData:I

    const-string v9, ""

    iput-object v9, p0, Lcom/android/server/WifiService;->mSsid:Ljava/lang/String;

    const/16 v9, 0xa

    iput v9, p0, Lcom/android/server/WifiService;->mMaxUser:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/WifiService;->mGsmMaxUser:I

    const/16 v9, 0xa

    iput v9, p0, Lcom/android/server/WifiService;->mDomRoamMaxUser:I

    const/16 v9, 0xa

    iput v9, p0, Lcom/android/server/WifiService;->mIntRoamMaxUser:I

    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9}, Landroid/os/WorkSource;-><init>()V

    iput-object v9, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiService;->mLowSignal:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/WifiService;->mLowSignalNWs:I

    new-instance v9, Lcom/android/server/WifiService$11;

    invoke-direct {v9, p0}, Lcom/android/server/WifiService$11;-><init>(Lcom/android/server/WifiService;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Lcom/android/server/WifiService$12;

    invoke-direct {v9, p0}, Lcom/android/server/WifiService$12;-><init>(Lcom/android/server/WifiService;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v9, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v9, "wifi.interface"

    const-string v10, "wlan0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    new-instance v9, Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    iput-object v9, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.server.WifiManager.action.DEVICE_IDLE"

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$1;

    invoke-direct {v10, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    iput-object v9, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string v9, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$2;

    invoke-direct {v10, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v9, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_170
    const-string v9, "com.movial.ipphone.IPUtils"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "IMS_LOWSIGNAL_STATUS"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "com.movial.ipphone.IPUtils"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "IMS_LOWSIGNAL"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$3;

    invoke-direct {v10, p0, v1}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;)V

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1a7} :catch_2e3

    :goto_1a7
    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$4;

    invoke-direct {v10, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v9, Lcom/android/server/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1d1

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$5;

    invoke-direct {v10, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1d1
    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$6;

    invoke-direct {v10, p0}, Lcom/android/server/WifiService$6;-><init>(Lcom/android/server/WifiService;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$7;

    invoke-direct {v10, p0}, Lcom/android/server/WifiService$7;-><init>(Lcom/android/server/WifiService;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "WifiService"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/server/WifiService$AsyncServiceHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    new-instance v9, Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/server/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_networks_available_repeat_delay"

    const/16 v11, 0x384

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    new-instance v9, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, p0, v10}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    iget-object v9, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    invoke-virtual {v9}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->register()V

    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/server/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v9, Landroid/os/DVFSHelper;

    iget-object v10, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const/16 v11, 0xc

    invoke-direct {v9, v10, v11}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    iget-object v9, p0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v9}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_296

    sget-boolean v9, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v9, :cond_279

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "supportedCPUFreqTable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_279
    iget-object v9, p0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v10, "CPU"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    :cond_296
    new-instance v9, Landroid/os/DVFSHelper;

    const/16 v10, 0xe

    invoke-direct {v9, p1, v10}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/server/WifiService;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    iget-object v9, p0, Lcom/android/server/WifiService;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v9}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    if-eqz v6, :cond_2d1

    sget-boolean v9, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v9, :cond_2c6

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "supportedCPUCoreTable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c6
    iget-object v9, p0, Lcom/android/server/WifiService;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v10, "CORE_NUM"

    const/4 v11, 0x0

    aget v11, v6, v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_2d1
    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/WifiService$10;

    invoke-direct {v10, p0}, Lcom/android/server/WifiService$10;-><init>(Lcom/android/server/WifiService;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.net.wifi.SET_HOME_AP"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_2e3
    move-exception v3

    const-string v9, "WifiService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a7

    nop

    :array_2f0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/WifiService;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->handleAirplaneModeToggled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->resetNotification()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mNotificationHS20Enabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->noteScanEnd()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->checkAndSetNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->updateResources()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mIsShowingNotification:Z

    return p1
.end method

.method static synthetic access$2200()I
    .registers 1

    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    return v0
.end method

.method static synthetic access$2272(I)I
    .registers 2

    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    return v0
.end method

.method static synthetic access$2276(I)I
    .registers 2

    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->determineBoosterMode()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mLowSignal:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mLowSignal:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/WifiService;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->mLowSignalNWs:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/WifiService;ZIZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->simState_int:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/WifiService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/WifiService;->simState_int:I

    return p1
.end method

.method static synthetic access$3200()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/WifiService;->filePathGeneralinfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->isFirstBootMccMnc:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->isSimCheked:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->simState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/WifiService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiService;->simState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/WifiService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/WifiService;)I
    .registers 3

    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/WifiService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/WifiService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$5702(Lcom/android/server/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .registers 8

    sget-boolean v3, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$5200(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    iget v3, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_56

    :goto_2d
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_33} :catch_3f

    const/4 v3, 0x1

    :goto_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :pswitch_38
    :try_start_38
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_2d

    :catch_3f
    move-exception v0

    const/4 v3, 0x0

    goto :goto_34

    :pswitch_42
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_48} :catch_3f

    goto :goto_2d

    :catchall_49
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :pswitch_4e
    :try_start_4e
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_3f

    goto :goto_2d

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_38
        :pswitch_4e
        :pswitch_42
    .end packed-switch
.end method

.method private checkAndSetNotification()V
    .registers 8

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-nez v4, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_14

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_5b

    :cond_14
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5b

    iput v6, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_24
    if-ltz v0, :cond_43

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_40

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[ESS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget v4, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    :cond_40
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_43
    iget v4, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    if-lez v4, :cond_5b

    iget v4, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_5

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_5

    :cond_5b
    invoke-direct {p0, v6, v6, v6, v6}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_5
.end method

.method private determineBoosterMode()V
    .registers 4

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoosterFLAG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/WifiService;->mBoosterFLAG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->BTCoexMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    :goto_25
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current booster mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_54

    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->Hotspot3GMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    goto :goto_25

    :cond_54
    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->FullMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    goto :goto_25
.end method

.method private enforceAccessPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceAccessSecuredPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.ACCESS_WIFI_SECURED_INFO"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .registers 6

    const v4, 0x2501f

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/android/server/WifiService;->determineBoosterMode()V

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method private getPersistedWifiState()I
    .registers 6

    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_6
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v2

    :goto_c
    return v2

    :catch_d
    move-exception v1

    const-string v3, "WifiService"

    const-string v4, "SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c
.end method

.method private handleAirplaneModeToggled(Z)V
    .registers 4

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->persistWifiState(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_a
.end method

.method private handleSecurityPolicy()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     allowWifiAp ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v1, :cond_5f

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5f

    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "info_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5f
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v1, :cond_81

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_81

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "info_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_81
    return-void
.end method

.method private handleWifiToggled(Z)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_1a

    move v0, v1

    :goto_11
    if-eqz p1, :cond_20

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiState(I)V

    :goto_19
    return-void

    :cond_1a
    move v0, v2

    goto :goto_11

    :cond_1c
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_19

    :cond_20
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_19
.end method

.method private isAirplaneModeOn()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method private isAirplaneSensitive()Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isAirplaneToggleable()Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isSecuredAp(I)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_c

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_24
    :goto_24
    return v3

    :cond_25
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-nez v5, :cond_24

    move v3, v4

    goto :goto_24

    :cond_3f
    move v3, v4

    goto :goto_24
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private noteScanEnd()V
    .registers 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/WifiService;->mScanWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/WifiService;->mScanWorkSource:Landroid/os/WorkSource;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_10

    if-eqz v1, :cond_f

    :try_start_a
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_13

    :cond_f
    :goto_f
    return-void

    :catchall_10
    move-exception v2

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v2

    :catch_13
    move-exception v0

    const-string v2, "WifiService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private noteScanStart()V
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_8

    monitor-exit p0

    :goto_7
    return-void

    :cond_8
    new-instance v4, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_22

    :try_start_11
    iput-object v4, p0, Lcom/android/server/WifiService;->mScanWorkSource:Landroid/os/WorkSource;

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_31

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_18
    iget-object v5, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_25

    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v4

    goto :goto_7

    :catchall_22
    move-exception v5

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v5

    :catch_25
    move-exception v0

    :try_start_26
    const-string v5, "WifiService"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2c

    goto :goto_1d

    :catchall_2c
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catchall_31
    move-exception v5

    move-object v3, v4

    goto :goto_23
.end method

.method private notifyOnDataActivity()V
    .registers 30

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/WifiService;->mTxPkts:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/WifiService;->mRxPkts:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mTxPkts:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mRxPkts:J

    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gtz v25, :cond_35

    const-wide/16 v25, 0x0

    cmp-long v25, v8, v25

    if-lez v25, :cond_1fd

    :cond_35
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mTxPkts:J

    move-wide/from16 v25, v0

    sub-long v16, v25, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mRxPkts:J

    move-wide/from16 v25, v0

    sub-long v14, v25, v8

    const-wide/16 v25, 0x0

    cmp-long v25, v16, v25

    if-lez v25, :cond_4d

    or-int/lit8 v4, v4, 0x2

    :cond_4d
    const-wide/16 v25, 0x0

    cmp-long v25, v14, v25

    if-lez v25, :cond_55

    or-int/lit8 v4, v4, 0x1

    :cond_55
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/WifiService;->mTxBytes:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/WifiService;->mRxBytes:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mTxBytes:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mRxBytes:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WifiService$BoosterMode;->ordinal()I

    move-result v26

    mul-int/lit8 v26, v26, 0x3

    add-int/lit8 v26, v26, 0x0

    aget-wide v25, v25, v26

    const-wide/16 v27, 0x400

    mul-long v19, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WifiService$BoosterMode;->ordinal()I

    move-result v26

    mul-int/lit8 v26, v26, 0x3

    add-int/lit8 v26, v26, 0x1

    aget-wide v25, v25, v26

    const-wide/16 v27, 0x400

    mul-long v21, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WifiService$BoosterMode;->ordinal()I

    move-result v26

    mul-int/lit8 v26, v26, 0x3

    add-int/lit8 v26, v26, 0x2

    aget-wide v25, v25, v26

    const-wide/16 v27, 0x400

    mul-long v23, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mTxBytes:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v10

    cmp-long v25, v25, v19

    if-gtz v25, :cond_e1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mRxBytes:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v6

    cmp-long v25, v25, v19

    if-lez v25, :cond_16f

    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const-string v26, "CPU"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x0

    aget v28, v18, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x7d0

    invoke-virtual/range {v25 .. v26}, Landroid/os/DVFSHelper;->acquire(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    if-eqz v25, :cond_121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x7d0

    invoke-virtual/range {v25 .. v26}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_121
    :goto_121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mDataActivity:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v4, v0, :cond_1fd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mScreenOff:Z

    move/from16 v25, v0

    if-nez v25, :cond_1fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1fd

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/WifiService;->mDataActivity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_153
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1fd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mDataActivity:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_153

    :cond_16f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mTxBytes:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v10

    cmp-long v25, v25, v21

    if-gtz v25, :cond_187

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mRxBytes:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v6

    cmp-long v25, v25, v21

    if-lez v25, :cond_1b6

    :cond_187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const-string v26, "CPU"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x3

    aget v28, v18, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x7d0

    invoke-virtual/range {v25 .. v26}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_121

    :cond_1b6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mTxBytes:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v10

    cmp-long v25, v25, v23

    if-gtz v25, :cond_1ce

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mRxBytes:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v6

    cmp-long v25, v25, v23

    if-lez v25, :cond_121

    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const-string v26, "CPU"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x7

    aget v28, v18, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x7d0

    invoke-virtual/range {v25 .. v26}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_121

    :cond_1fd
    return-void
.end method

.method private persistWifiState(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistWifiState(Z)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_2d

    move v0, v2

    :goto_17
    if-eqz p1, :cond_35

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_21
    const-string v2, "wifi_on"

    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_2d
    move v0, v3

    goto :goto_17

    :cond_2f
    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_21

    :cond_35
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_21
.end method

.method private registerForBroadcasts()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .registers 9

    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$5400(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v4, :cond_22

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-eqz v3, :cond_3a

    const/4 v0, 0x1

    :goto_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v0, :cond_33

    :try_start_2b
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    iget v4, v3, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_58

    :cond_33
    :goto_33
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_4c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_43

    :goto_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_25

    :pswitch_3c
    :try_start_3c
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_33

    :catch_43
    move-exception v4

    goto :goto_36

    :pswitch_45
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_4c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4b} :catch_43

    goto :goto_33

    :catchall_4c
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :pswitch_51
    :try_start_51
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_57} :catch_43

    goto :goto_33

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_51
        :pswitch_45
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    :cond_d
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_22
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_38

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_38
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2b
.end method

.method private declared-synchronized reportStartWorkSource()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_2d

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$4200(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$4200(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2d
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetNotification()V
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    iput v2, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    return-void
.end method

.method private resetVzwNotification()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->showVzwWifiNotification(Z)V

    return-void
.end method

.method private setDeviceIdleAndUpdateWifi(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method private setDynamicThresholdValues()V
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/misc/wifi/.threshold"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_180

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_39

    const/4 v4, 0x0

    :goto_1a
    const/16 v7, 0x9

    if-ge v4, v7, :cond_39

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_36

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v7, v4
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_470
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_474

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_39
    sget-boolean v7, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v7, :cond_179

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode_0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode_1] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode_2] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x3

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x4

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x5

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex_0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x6

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex_1] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x7

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex_2] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/16 v10, 0x8

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_179
    if-eqz v1, :cond_17e

    :try_start_17b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_466

    :cond_17e
    :goto_17e
    move-object v0, v1

    :cond_17f
    :goto_17f
    return-void

    :catch_180
    move-exception v5

    :goto_181
    :try_start_181
    sget-boolean v7, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v7, :cond_19d

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19d
    const-string v2, "19200,7680,3840,19200,7680,1280,19200,7680,1280"

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    :goto_1a6
    const/16 v7, 0x9

    if-ge v4, v7, :cond_315

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1c2

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v7, v4
    :try_end_1c2
    .catchall {:try_start_181 .. :try_end_1c2} :catchall_1c5

    :cond_1c2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a6

    :catchall_1c5
    move-exception v7

    :goto_1c6
    sget-boolean v8, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v8, :cond_306

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x6

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v11, 0x7

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_306
    if-eqz v0, :cond_30b

    :try_start_308
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_30b} :catch_30c

    :cond_30b
    :goto_30b
    throw v7

    :catch_30c
    move-exception v3

    const-string v8, "WifiService"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30b

    :cond_315
    sget-boolean v7, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v7, :cond_455

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode_0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode_1] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode_2] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x3

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x4

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x5

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex_0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x6

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex_1] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v10, 0x7

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex_2] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/16 v10, 0x8

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_455
    if-eqz v0, :cond_17f

    :try_start_457
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_45a
    .catch Ljava/io/IOException; {:try_start_457 .. :try_end_45a} :catch_45c

    goto/16 :goto_17f

    :catch_45c
    move-exception v3

    const-string v7, "WifiService"

    const-string v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17f

    :catch_466
    move-exception v3

    const-string v7, "WifiService"

    const-string v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17e

    :catchall_470
    move-exception v7

    move-object v0, v1

    goto/16 :goto_1c6

    :catch_474
    move-exception v5

    move-object v0, v1

    goto/16 :goto_181
.end method

.method private setNotificationVisible(ZIZI)V
    .registers 16

    const/4 v10, 0x0

    const v9, 0x1080706

    const/4 v8, 0x0

    if-nez p1, :cond_e

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v4, :cond_e

    if-nez p3, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iput p2, p0, Lcom/android/server/WifiService;->mLowSignalNWs:I

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz p1, :cond_ab

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mLowSignal:Z

    if-nez v4, :cond_ab

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-nez v4, :cond_6c

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput v9, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "nid"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_6c
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130014

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130015

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v9, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_a5
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mIsShowingNotification:Z

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    goto/16 :goto_d

    :cond_ab
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v9, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_a5
.end method

.method private setThresholdValues()V
    .registers 15

    const-wide/16 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/misc/wifi/.threshold"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_193
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_bf

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6
    :try_end_4e
    .catchall {:try_start_12 .. :try_end_4e} :catchall_217
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4e} :catch_21b

    :cond_4e
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_b8

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[FullMode] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[Hotspot3G] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[BTcoex] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    if-eqz v1, :cond_bd

    :try_start_ba
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_20d

    :cond_bd
    :goto_bd
    move-object v0, v1

    :cond_be
    :goto_be
    return-void

    :catch_bf
    move-exception v3

    :goto_c0
    :try_start_c0
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_dc

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    cmp-long v5, v5, v12

    if-gez v5, :cond_f0

    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x0

    const-string v7, "3840"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    :cond_f0
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    cmp-long v5, v5, v12

    if-gez v5, :cond_104

    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x1

    const-string v7, "1280"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    :cond_104
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x2

    aget-wide v5, v5, v6

    cmp-long v5, v5, v12

    if-gez v5, :cond_118

    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x2

    const-string v7, "1280"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6
    :try_end_118
    .catchall {:try_start_c0 .. :try_end_118} :catchall_193

    :cond_118
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_182

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[FullMode] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[Hotspot3G] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[BTcoex] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_182
    if-eqz v0, :cond_be

    :try_start_184
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_189

    goto/16 :goto_be

    :catch_189
    move-exception v2

    const-string v5, "WifiService"

    const-string v6, "Failed to close .threshold file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be

    :catchall_193
    move-exception v5

    :goto_194
    sget-boolean v6, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v6, :cond_1fe

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[Hotspot3G] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v8, v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v8, v8, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fe
    if-eqz v0, :cond_203

    :try_start_200
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_204

    :cond_203
    :goto_203
    throw v5

    :catch_204
    move-exception v2

    const-string v6, "WifiService"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_203

    :catch_20d
    move-exception v2

    const-string v5, "WifiService"

    const-string v6, "Failed to close .threshold file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bd

    :catchall_217
    move-exception v5

    move-object v0, v1

    goto/16 :goto_194

    :catch_21b
    move-exception v3

    move-object v0, v1

    goto/16 :goto_c0
.end method

.method private shouldWifiBeEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_16
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    goto :goto_13
.end method

.method private showVzwWifiNotification(Z)V
    .registers 13

    const/16 v10, 0x146e

    const/4 v9, 0x0

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showVzwWifiNotification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz p1, :cond_d0

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVzwNotificationRepeatTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_53

    const-string v5, "WifiService"

    const-string v6, "not showing notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-void

    :cond_53
    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    if-nez v5, :cond_93

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    const v6, 0x1080706

    iput v6, v5, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.WIFI_SETTINGS_STATUS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_93
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10405ed

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "VerizonWiFi"

    aput-object v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10405ee

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    iget-object v5, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    invoke-virtual {v2, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_cb
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mIsShowingVzwNotification:Z

    iput-boolean p1, p0, Lcom/android/server/WifiService;->mVzwNotificationShown:Z

    goto :goto_52

    :cond_d0
    invoke-virtual {v2, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_cb
.end method

.method private testAndClearWifiSavedState()Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_9
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_17

    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_17} :catch_1c

    :cond_17
    :goto_17
    if-ne v1, v2, :cond_1a

    :goto_19
    return v2

    :cond_1a
    move v2, v3

    goto :goto_19

    :catch_1c
    move-exception v4

    goto :goto_17
.end method

.method private updateResources()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-eqz v4, :cond_47

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIsShowingNotification:Z

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130014

    iget v6, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130015

    iget v6, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const v4, 0x1080706

    iget-object v5, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_47
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    if-eqz v4, :cond_4b

    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_57
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_57} :catch_58

    :goto_57
    return-void

    :catch_58
    move-exception v1

    const-string v4, "WifiService"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private updateWifiState()V
    .registers 13

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$4300(Lcom/android/server/WifiService$LockList;)Z

    move-result v2

    const/4 v3, 0x1

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    if-eqz v8, :cond_69

    const/4 v5, 0x0

    :goto_16
    if-eqz v2, :cond_1e

    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$4400(Lcom/android/server/WifiService$LockList;)I

    move-result v3

    :cond_1e
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v8, :cond_25

    if-ne v3, v11, :cond_25

    const/4 v3, 0x1

    :cond_25
    iget-object v8, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v4

    const/16 v8, 0xc

    if-eq v4, v8, :cond_39

    const/16 v8, 0xd

    if-ne v4, v8, :cond_46

    :cond_39
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v8

    if-nez v8, :cond_46

    const-string v8, "wifi_ap_saved_state"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_46
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v8

    if-eqz v8, :cond_c3

    sget-object v8, Lcom/android/server/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_95

    sget-boolean v8, Lcom/android/server/WifiService;->isWifiDelayOnGoing:Z

    if-eqz v8, :cond_95

    sget-boolean v6, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v6, :cond_68

    const-string v6, "WifiService"

    const-string v7, "updateWifiState - isWifiDelayOnGoing is true"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    return-void

    :cond_69
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v8, :cond_6f

    if-eqz v2, :cond_71

    :cond_6f
    move v5, v7

    :goto_70
    goto :goto_16

    :cond_71
    move v5, v6

    goto :goto_70

    :cond_73
    :try_start_73
    const-string v8, "wifi_ap_saved_state"

    invoke-static {v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_73 .. :try_end_78} :catch_8e

    move-result v8

    if-ne v8, v7, :cond_4b

    const-wide/16 v8, 0x258

    :try_start_7d
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_80} :catch_90
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7d .. :try_end_80} :catch_8e

    :goto_80
    :try_start_80
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    const-string v8, "wifi_ap_saved_state"

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4b

    :catch_8e
    move-exception v8

    goto :goto_4b

    :catch_90
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_94
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_80 .. :try_end_94} :catch_8e

    goto :goto_80

    :cond_95
    if-eqz v5, :cond_bb

    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne v3, v11, :cond_b7

    move v8, v7

    :goto_a4
    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiStateMachine;->setScanOnlyMode(Z)V

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v8, v7, v9}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x3

    if-ne v3, v9, :cond_b9

    :goto_b3
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    goto :goto_68

    :cond_b7
    move v8, v6

    goto :goto_a4

    :cond_b9
    move v7, v6

    goto :goto_b3

    :cond_bb
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v7, v6, v8}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    goto :goto_68

    :cond_c3
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto :goto_68
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    :try_start_6
    iget v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_35

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_28
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_41

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2

    :catchall_38
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_41
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_31
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .registers 11

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_48

    const/4 v1, 0x2

    if-eq p2, v1, :cond_48

    const/4 v1, 0x3

    if-eq p2, v1, :cond_48

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v1, :cond_46

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    const/4 v1, 0x0

    :goto_47
    return v1

    :cond_48
    if-eqz p4, :cond_51

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_51

    const/4 p4, 0x0

    :cond_51
    if-eqz p4, :cond_5e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    :cond_5e
    if-nez p4, :cond_69

    new-instance p4, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    :cond_69
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    iget-object v2, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v2

    :try_start_76
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_47

    :catchall_7c
    move-exception v1

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_f
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    return-void
.end method

.method public callSECApi(Landroid/os/Message;)I
    .registers 9

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-nez p1, :cond_7

    move v4, v5

    :cond_6
    :goto_6
    :pswitch_6
    return v4

    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_318

    :pswitch_c
    move v4, v5

    goto :goto_6

    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto :goto_6

    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto :goto_6

    :pswitch_22
    :try_start_22
    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getAccessPointNumConnectedSta()I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v4

    goto :goto_6

    :catch_29
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v5

    goto :goto_6

    :pswitch_2f
    :try_start_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "mac"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->setAccessPointDisassocSta(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3e} :catch_40

    move-result v4

    goto :goto_6

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :pswitch_45
    :try_start_45
    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->readWhiteList()I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4c

    move-result v4

    goto :goto_6

    :catch_4c
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :pswitch_51
    :try_start_51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "maxClient"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_60} :catch_62

    move-result v4

    goto :goto_6

    :catch_62
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :pswitch_67
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto :goto_6

    :pswitch_70
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto :goto_6

    :pswitch_79
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto :goto_6

    :pswitch_83
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_8e
    move v4, v5

    goto/16 :goto_6

    :pswitch_91
    move v4, v5

    goto/16 :goto_6

    :pswitch_94
    move v4, v5

    goto/16 :goto_6

    :pswitch_97
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_a2
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_ad
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    goto/16 :goto_6

    :pswitch_b3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "bEnable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_6

    :pswitch_c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "bEnable"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->CWsetWifiScreenEnable(Z)Z

    move-result v5

    if-eqz v5, :cond_d6

    :goto_d3
    move v4, v3

    goto/16 :goto_6

    :cond_d6
    move v3, v4

    goto :goto_d3

    :pswitch_d8
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->CWgetWifiScreenEnable()Z

    move-result v5

    if-eqz v5, :cond_e3

    :goto_e0
    move v4, v3

    goto/16 :goto_6

    :cond_e3
    move v3, v4

    goto :goto_e0

    :pswitch_e5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    goto/16 :goto_6

    :pswitch_eb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEC_COMMAND_ID_CW_PERSIST_WIFI_ENABLED  enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "enabled"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "enabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    goto/16 :goto_6

    :pswitch_118
    const-string v5, "WifiService"

    const-string v6, "SEC_COMMAND_ID_CW_HANDLE_DORMANCY  called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    goto/16 :goto_6

    :pswitch_124
    const-string v3, "WifiService"

    const-string v4, "SEC_COMMAND_ID_CW_GET_STATE called"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget v4, v3, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    goto/16 :goto_6

    :pswitch_131
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "netId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->unlockMobNetwork(I)V

    goto/16 :goto_6

    :pswitch_145
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v5, "enable"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_174

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_166

    invoke-virtual {p0, v3}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    :cond_166
    const-string v3, "WifiService"

    const-string v5, "WiFi Enabled with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16d
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_6

    :cond_174
    const-string v3, "WifiService"

    const-string v5, "Start scan, start assoc"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d

    :pswitch_17c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "mode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->setRvfMode(I)V

    goto/16 :goto_6

    :pswitch_18d
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v4

    goto/16 :goto_6

    :pswitch_195
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_19d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "channel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->startPartialScan([I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_1af
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_1b7
    :try_start_1b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "enable"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->rmcEnable(Z)I
    :try_end_1c6
    .catch Landroid/os/RemoteException; {:try_start_1b7 .. :try_end_1c6} :catch_1c9

    move-result v4

    goto/16 :goto_6

    :catch_1c9
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    :pswitch_1cf
    :try_start_1cf
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "mac"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->rmcSetMac(Ljava/lang/String;)I
    :try_end_1de
    .catch Landroid/os/RemoteException; {:try_start_1cf .. :try_end_1de} :catch_1e1

    move-result v4

    goto/16 :goto_6

    :catch_1e1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    :pswitch_1e7
    :try_start_1e7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "rate"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->rmcSetRate(I)I
    :try_end_1f6
    .catch Landroid/os/RemoteException; {:try_start_1e7 .. :try_end_1f6} :catch_1f9

    move-result v4

    goto/16 :goto_6

    :catch_1f9
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    :pswitch_1ff
    :try_start_1ff
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "interval"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->rmcSetInterval(I)I
    :try_end_20e
    .catch Landroid/os/RemoteException; {:try_start_1ff .. :try_end_20e} :catch_211

    move-result v4

    goto/16 :goto_6

    :catch_211
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    :pswitch_217
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECApi - id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_242

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :cond_242
    const-string v3, "WifiService"

    const-string v4, "mWifiStateMachineChannel is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_6

    :pswitch_24c
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECApi - id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_277

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :cond_277
    const-string v3, "WifiService"

    const-string v4, "mWifiStateMachineChannel is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_6

    :pswitch_281
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECApi - id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_2ac

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    :cond_2ac
    const-string v3, "WifiService"

    const-string v4, "mWifiStateMachineChannel is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_6

    :pswitch_2b6
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v4

    goto/16 :goto_6

    :pswitch_2be
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "mode"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->setDhcpRenewAfterRoamingMode(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_2d0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    const-string v3, "persist.service.wifi_band"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_2db
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_2e5

    const/4 v3, 0x2

    if-le v1, v3, :cond_2e8

    :cond_2e5
    move v4, v5

    goto/16 :goto_6

    :cond_2e8
    const-string v3, "persist.service.wifi_band"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_302
    const-string v3, "WifiService"

    const-string v4, "SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_RIL called"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_6

    :pswitch_30c
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_6

    nop

    :pswitch_data_318
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_c
        :pswitch_22
        :pswitch_2f
        :pswitch_45
        :pswitch_ad
        :pswitch_b3
        :pswitch_c1
        :pswitch_d8
        :pswitch_e5
        :pswitch_eb
        :pswitch_118
        :pswitch_124
        :pswitch_51
        :pswitch_18
        :pswitch_67
        :pswitch_79
        :pswitch_145
        :pswitch_83
        :pswitch_8e
        :pswitch_91
        :pswitch_94
        :pswitch_c
        :pswitch_a2
        :pswitch_70
        :pswitch_150
        :pswitch_17c
        :pswitch_18d
        :pswitch_131
        :pswitch_2d0
        :pswitch_2db
        :pswitch_195
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_19d
        :pswitch_1af
        :pswitch_c
        :pswitch_c
        :pswitch_302
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1b7
        :pswitch_1cf
        :pswitch_1e7
        :pswitch_1ff
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_30c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_c
        :pswitch_217
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_217
        :pswitch_217
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_217
        :pswitch_217
        :pswitch_217
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_217
        :pswitch_217
        :pswitch_24c
        :pswitch_24c
        :pswitch_281
        :pswitch_281
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_2b6
        :pswitch_2be
    .end packed-switch
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_a0

    :cond_6
    :goto_6
    return-object v1

    :sswitch_7
    const-string v1, ""

    goto :goto_6

    :sswitch_a
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECStringApi - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_34
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_3c
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_ID_GET_SCAN_RESULTS_EX"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_50
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_58
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessSecuredPermission()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_8c

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_86
    invoke-static {v2, v3}, Lcom/android/server/WifiService$EncryptTool;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_95

    move-result-object v1

    goto/16 :goto_6

    :cond_8c
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_95
    move-exception v0

    const-string v4, "WifiService"

    const-string v5, "Encryption failure"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    nop

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_3c
        0x27 -> :sswitch_58
        0x6c -> :sswitch_a
        0xa0 -> :sswitch_a
    .end sparse-switch
.end method

.method public captivePortalCheckComplete()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->captivePortalCheckComplete()V

    return-void
.end method

.method public checkAndStartWifi()V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/WifiService;->isBootCompleted:Z

    if-nez v5, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v5, Lcom/android/server/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_1a

    const-string v5, "WifiService"

    const-string v6, "checkAndStartWifi isSimCheked Before"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v5, p0, Lcom/android/server/WifiService;->isSimCheked:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_29

    const-string v5, "WifiService"

    const-string v6, "checkAndStartWifi isSimCheked After"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iput-boolean v4, p0, Lcom/android/server/WifiService;->isFirstBootMccMnc:Z

    :cond_2b
    iget-object v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v5

    if-nez v5, :cond_49

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v5

    if-eqz v5, :cond_10b

    :cond_49
    move v2, v4

    :goto_4a
    const-string v6, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiService starting up with Wi-Fi "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_10e

    const-string v5, "enabled"

    :goto_5b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_fc

    const/4 v1, 0x0

    :goto_6f
    const/4 v5, 0x3

    if-ge v1, v5, :cond_ef

    const/4 v5, 0x1

    :try_start_73
    sput-boolean v5, Lcom/android/server/WifiService;->isWifiDelayOnGoing:Z

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    iput v5, p0, Lcom/android/server/WifiService;->simState_int:I

    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_a2

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndStartWifi getSimState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiService;->simState_int:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mccmnc:Ljava/lang/String;

    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_c8

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndStartWifi mccmnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mccmnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    iget v5, p0, Lcom/android/server/WifiService;->simState_int:I

    if-eq v5, v4, :cond_d1

    iget v5, p0, Lcom/android/server/WifiService;->simState_int:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_112

    :cond_d1
    sget-boolean v4, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v4, :cond_ef

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndStartWifi getSimState() absent or IO Error= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/WifiService;->simState_int:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_ef} :catch_13c

    :cond_ef
    :goto_ef
    sput-boolean v3, Lcom/android/server/WifiService;->isWifiDelayOnGoing:Z

    sget-boolean v3, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v3, :cond_fc

    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi isWifiDelayOnGoing final: isWifiDelayOnGoing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fc
    if-eqz v2, :cond_101

    invoke-virtual {p0, v2}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    :cond_101
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto/16 :goto_6

    :cond_10b
    move v2, v3

    goto/16 :goto_4a

    :cond_10e
    const-string v5, "disabled"

    goto/16 :goto_5b

    :cond_112
    :try_start_112
    iget v5, p0, Lcom/android/server/WifiService;->simState_int:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_141

    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/WifiService;->mccmnc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_130

    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_12c

    const-string v5, "WifiService"

    const-string v6, "checkAndStartWifi getSimState() SIM_STATE_READY state . But no mccmnc case"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    :goto_12c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6f

    :cond_130
    sget-boolean v4, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v4, :cond_ef

    const-string v4, "WifiService"

    const-string v5, "checkAndStartWifi getSimState() SIM_STATE_READY state . But yes mccmnc case"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_13b} :catch_13c

    goto :goto_ef

    :catch_13c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ef

    :cond_141
    :try_start_141
    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/WifiService;->mccmnc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_12c

    const-string v5, "WifiService"

    const-string v6, "checkAndStartWifi getSimState() Ing state . But no mccmnc case"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    :cond_157
    sget-boolean v4, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v4, :cond_ef

    const-string v4, "WifiService"

    const-string v5, "checkAndStartWifi getSimState() Ing state . But yes mccmnc case"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_162} :catch_13c

    goto :goto_ef
.end method

.method public clearBlacklist()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    return-void
.end method

.method public disableNetwork(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public disconnect()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    sget-boolean v0, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v0, :cond_37

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    return-void

    :cond_37
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_34

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stay-awake conditions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "stay_on_while_plugged_in"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "Internal state:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "Latest scan results:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_da

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_da

    const-string v6, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    const-string v7, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v6, v8, v10

    const/4 v6, 0x1

    iget v9, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v9, 0x4

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_d7

    const-string v6, ""

    :goto_d1
    aput-object v6, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_9e

    :cond_d7
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_d1

    :cond_da
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks acquired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks released: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "Locks held:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v6, p2}, Lcom/android/server/WifiService$LockList;->access$4500(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multicasters held("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v5, -0x1

    :goto_17d
    if-ltz v0, :cond_1ae

    iget-object v6, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WifiService$Multicaster;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/WifiService$Multicaster;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17d

    :cond_1ae
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "WifiWatchdogStateMachine dump"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/PrintWriter;)V

    const-string v6, "WifiStateMachine dump"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method public enableNetwork(IZ)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method enforceWakeSourcePermission(II)V
    .registers 6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getFullRoamScanPeriod()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getPartialScanResults([I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncGetPartialScanResultsList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoamBand()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamTrigger()I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq v3, v0, :cond_1a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    :goto_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_1a
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    move-result-object v4

    goto :goto_16

    :catchall_21
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiService;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAccessPointStaList()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    :goto_6
    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiEnabledState()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    monitor-exit v1

    goto :goto_f

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isDualBandSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public pingSupplicant()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public reassociate()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    return-void
.end method

.method public reconnect()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    return-void
.end method

.method public releaseMulticastLock()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    :try_start_a
    iget v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_18
    if-ltz v0, :cond_30

    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_2d

    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_30
    monitor-exit v5

    return-void

    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public removeNetwork(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public saveConfiguration()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_10
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isDualBandSupported()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set frequency band to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    goto :goto_9
.end method

.method public setFullRoamScanPeriod(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamBand(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_f
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 9

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    :cond_3
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    if-eqz p2, :cond_15

    iget-object v3, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v3, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v3

    if-nez v3, :cond_22

    const/4 p1, 0x0

    :cond_22
    if-eqz p2, :cond_4b

    iget-object v3, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v3, :cond_4b

    const-string v3, "WifiService"

    const-string v4, "Wi-Fi AP is not allowed (Policy)"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "info_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_14

    :cond_4b
    if-eqz p2, :cond_4d

    :cond_4d
    if-eqz p2, :cond_66

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->sendShowWifiApEnableWarningDialogBroadcast()Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v3, "WifiService"

    const-string v4, "Disabling Wifi to enable WifiAp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    const-wide/16 v3, 0x258

    :try_start_63
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_a8

    :cond_66
    :goto_66
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    iput-boolean v5, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    if-eqz p2, :cond_14

    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "netType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ad

    sget v3, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/lit8 v3, v3, -0x2

    sput v3, Lcom/android/server/WifiService;->mBoosterFLAG:I

    :goto_a3
    invoke-direct {p0}, Lcom/android/server/WifiService;->setDynamicThresholdValues()V

    goto/16 :goto_14

    :catch_a8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_66

    :cond_ad
    sget v3, Lcom/android/server/WifiService;->mBoosterFLAG:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/WifiService;->mBoosterFLAG:I

    goto :goto_a3
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v9, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v8, "WifiService"

    const-string v9, "Wi-Fi state change is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_7f

    :cond_17
    :goto_17
    monitor-exit p0

    return v7

    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    sget-boolean v9, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v9, :cond_82

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setWifiEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    if-eqz p1, :cond_b7

    iget-object v9, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/WifiService;->allowWifi:Z

    iget-boolean p1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    iget-boolean v9, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v9, :cond_b7

    const-string v8, "WifiService"

    const-string v9, "Wi-Fi is not allowed (Policy)"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "info_type"

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7e
    .catchall {:try_start_19 .. :try_end_7e} :catchall_7f

    goto :goto_17

    :catchall_7f
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_82
    :try_start_82
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setWifiEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_b7
    if-eqz p1, :cond_b9

    :cond_b9
    if-nez p1, :cond_ce

    iget-boolean v9, p0, Lcom/android/server/WifiService;->mSendDhcpRelease:Z

    if-eqz v9, :cond_ce

    const-string v9, "WifiService"

    const-string v10, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x200a1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    :cond_ce
    sget-object v9, Lcom/android/server/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_117

    iget-boolean v9, p0, Lcom/android/server/WifiService;->isSimCheked:Z
    :try_end_d8
    .catchall {:try_start_82 .. :try_end_d8} :catchall_7f

    if-nez v9, :cond_117

    const/4 v1, 0x0

    :goto_db
    const/4 v9, 0x3

    if-ge v1, v9, :cond_117

    :try_start_de
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v9, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v9, :cond_112

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setWifiEnabled getSimState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mccmnc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_de .. :try_end_112} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_112} :catch_188

    :cond_112
    if-eq v5, v8, :cond_117

    const/4 v9, 0x6

    if-ne v5, v9, :cond_155

    :cond_117
    :goto_117
    :try_start_117
    sget-boolean v9, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v9, :cond_122

    const-string v9, "WifiService"

    const-string v10, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_122
    if-eqz p1, :cond_127

    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    :cond_127
    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine;->sendShowEnableWarningDialogBroadcast()Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    if-eqz p1, :cond_13c

    invoke-direct {p0}, Lcom/android/server/WifiService;->setDynamicThresholdValues()V

    :cond_13c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13f
    .catchall {:try_start_117 .. :try_end_13f} :catchall_7f

    move-result-wide v2

    :try_start_140
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->handleWifiToggled(Z)V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_18d

    :try_start_143
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_192

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-nez v7, :cond_152

    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    :try_end_152
    .catchall {:try_start_143 .. :try_end_152} :catchall_7f

    :cond_152
    :goto_152
    move v7, v8

    goto/16 :goto_17

    :cond_155
    const/4 v9, 0x5

    if-ne v5, v9, :cond_174

    :try_start_158
    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    sget-boolean v9, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v9, :cond_16b

    const-string v9, "WifiService"

    const-string v10, "setWifiEnabled getSimState() SIM_STATE_READY state . But no mccmnc case"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16b
    :goto_16b
    const-wide/16 v9, 0x5dc

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_db

    :cond_174
    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    sget-boolean v9, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v9, :cond_16b

    const-string v9, "WifiService"

    const-string v10, "setWifiEnabled getSimState() Ing state . But no mccmnc case"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catchall {:try_start_158 .. :try_end_187} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_187} :catch_188

    goto :goto_16b

    :catch_188
    move-exception v0

    :try_start_189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_117

    :catchall_18d
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_192
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-eqz v7, :cond_152

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/WifiService;->mRequestWifiOn:Z
    :try_end_1a3
    .catchall {:try_start_189 .. :try_end_1a3} :catchall_7f

    goto :goto_152
.end method

.method public showHS20WifiNotification(Lcom/android/server/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V
    .registers 13

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showHS20WifiNotification   is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sget-object v5, Lcom/android/server/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/WifiService$HS20_ConType;

    if-eq p1, v5, :cond_ef

    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-nez v5, :cond_57

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.SEC_LAUNCH_OPERTOR_URL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_57
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sget-object v5, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_bd

    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x10802e1

    iput v6, v5, Landroid/app/Notification;->icon:I

    :goto_6e
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v5, :cond_c5

    const v5, 0x10405eb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_87
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v5, :cond_dc

    const v5, 0x10405e9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9e
    if-eqz v4, :cond_ad

    if-eqz v1, :cond_ad

    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_ad
    :try_start_ad
    sget-object v5, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_e4

    const v5, 0x10802e1

    iget-object v6, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_ad .. :try_end_b9} :catch_ed

    :goto_b9
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiService;->mNotificationHS20Enabled:Z

    :goto_bc
    return-void

    :cond_bd
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x10802e2

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_6e

    :cond_c5
    const v5, 0x10405ec

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_87

    :cond_dc
    const v5, 0x10405ea

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    :cond_e4
    const v5, 0x10802e2

    :try_start_e7
    iget-object v6, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ec
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_ec} :catch_ed

    goto :goto_b9

    :catch_ed
    move-exception v5

    goto :goto_b9

    :cond_ef
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-eqz v5, :cond_104

    if-eqz v2, :cond_104

    const v5, 0x10802e1

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    const v5, 0x10802e2

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    :cond_104
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WifiService;->mNotificationHS20Enabled:Z

    goto :goto_bc
.end method

.method public showOngoingWifiNotification(I)V
    .registers 15

    const v12, 0x10405e4

    const/4 v11, 0x2

    const/4 v10, 0x0

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showOngoingWifiNotification id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    if-nez v6, :cond_5a

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    const/4 v7, -0x2

    iput v7, v6, Landroid/app/Notification;->priority:I

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iput v11, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_5a
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_f0

    :goto_65
    :pswitch_65
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iput p1, v6, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_78

    if-eqz v0, :cond_78

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v4, v0, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_78
    const v6, 0x2df96b

    :try_start_7b
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    invoke-virtual {v1, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_80
    .catch Ljava/lang/IllegalStateException; {:try_start_7b .. :try_end_80} :catch_ee

    :goto_80
    return-void

    :pswitch_81
    const v6, 0x10405df

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :pswitch_8d
    const v6, 0x10405e1

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x10405e2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :pswitch_9c
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    const v6, 0x10405e6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiService;->isSecuredAp(I)Z

    move-result v6

    if-eqz v6, :cond_b8

    const v6, 0x10405e5

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_b8
    const v6, 0x10405e3

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :pswitch_cf
    const v6, 0x10405dd

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x10405de

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :pswitch_de
    const v6, 0x10405e7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x10405e8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_65

    :catch_ee
    move-exception v6

    goto :goto_80

    :pswitch_data_f0
    .packed-switch 0x1080760
        :pswitch_9c
        :pswitch_cf
        :pswitch_65
        :pswitch_de
        :pswitch_81
        :pswitch_8d
    .end packed-switch
.end method

.method public shutdown()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public startScan(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    sget-boolean v0, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v0, :cond_3b

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    invoke-direct {p0}, Lcom/android/server/WifiService;->noteScanStart()V

    return-void
.end method

.method public startWifi()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    return-void
.end method

.method public stopWifi()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_11

    const/4 p2, 0x0

    :cond_11
    if-eqz p2, :cond_16

    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1a
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_30

    :try_start_1d
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/WifiService$LockList;->access$5300(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    if-gez v2, :cond_35

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_2d
    move-exception v6

    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v6
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    move-exception v6

    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_35
    :try_start_35
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$4200(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    if-eqz p2, :cond_52

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_4b
    iput-object v6, v5, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    monitor-exit v7

    goto :goto_31

    :cond_52
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_2d

    goto :goto_4b

    :catchall_58
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
