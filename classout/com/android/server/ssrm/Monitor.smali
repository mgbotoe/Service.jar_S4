.class public final Lcom/android/server/ssrm/Monitor;
.super Ljava/lang/Thread;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$BoostedURLHandler;,
        Lcom/android/server/ssrm/Monitor$SysfsTable;,
        Lcom/android/server/ssrm/Monitor$TMUObserver;,
        Lcom/android/server/ssrm/Monitor$TmuState;,
        Lcom/android/server/ssrm/Monitor$SIPStatusInfo;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;,
        Lcom/android/server/ssrm/Monitor$SIOPLevel;,
        Lcom/android/server/ssrm/Monitor$AclObserver;,
        Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;,
        Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;,
        Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;
    }
.end annotation


# static fields
.field public static final ACTION_CP_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CP_SIOP_LEVEL"

.field public static final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.MAX_BRIGHTNESS_CHANGED"

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static final APP_STATUS_ADD_TRIGGER:I = 0x3

.field private static final APP_STATUS_REMOVE_TRIGGER:I = 0x4

.field private static final APP_STATUS_TRIGGER:I = 0x2

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final BRIGHTNESS_LIMIT_VALUE:I = 0xe6

.field private static final BRIGHTNESS_NORMAL_VALUE:I = -0x1

.field private static final CREATE_SIOP_LEVEL:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_CP_SIOP_LEVEL:Ljava/lang/String; = "cp_siop_level"

.field public static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field private static final FOREGROUND_TRIGGER:I = 0x1

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final LCD_FPS_HIGH:I = 0x0

.field public static final LCD_FPS_IDLE:I = 0x2

.field public static final LCD_FPS_LOW:I = 0x1

.field public static final LCD_FPS_NONE:I = 0x3

.field private static final NA:I = -0x1

.field private static final PROCESS_STATE_BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static final READ_POLICY_XML:I = 0x5

.field private static final REMOVE_BOOST_REQUEST:I = 0x0

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SIOPFileName:Ljava/lang/String; = "siop_jf_att"

.field private static final SIOP_TYPE_AP:I = 0x6f

.field private static final SIOP_TYPE_CP:I = 0x70

.field private static final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field public static final SystemIntentReceiver:Landroid/content/BroadcastReceiver; = null

.field private static TAG:Ljava/lang/String; = null

.field private static THERMISTOR_TIMER_DURATION:J = 0x0L

.field private static final THERMISTOR_TIMER_DURATION_DEFAULT_VALUE:J = 0x2710L

.field private static final THERMISTOR_TIMER_DURATION_MIN_VALUE:J = 0x3e8L

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "TMUSTATE"

.field private static final UPDATE_TO_LATEST_SIOP_LEVEL:I = 0x7

.field static isBootCompleted:Z

.field private static mAclEnabled:Z

.field private static mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

.field private static mActivityManager:Landroid/app/IActivityManager;

.field static mAirplanemode:Z

.field private static mAutoBrightnessEnabled:Z

.field private static mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

.field static mBatteryCharging:Z

.field static mBatteryFull:Z

.field static mBatteyRemaining:I

.field static mBluetoothConnected:Z

.field static mBluetoothEnabled:Z

.field private static mBootMaxFreqHelper:Landroid/os/DVFSHelper;

.field private static mBootMinFreqHelper:Landroid/os/DVFSHelper;

.field private static mBrightnessAdjustedForBrowser:Z

.field static mBrowserIntentLowFps:Z

.field static mBrowserLowFps:Z

.field private static mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

.field private static mContext:Landroid/content/Context;

.field private static volatile mCurrentCPTemp:I

.field private static mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mCurrentThermistorTemp:I

.field private static mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

.field private static mDisableCPUControl:Z

.field static mDynamicFpsPackage:Z

.field private static mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

.field private static mFilter:Landroid/content/IntentFilter;

.field static mForceSIOPUpdate:Z

.field static mFpsFullScreenMode:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mInit:Z

.field private static mIntCurrentSIOPLevelAP:I

.field private static mIntCurrentSIOPLevelCP:I

.field private static mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field private static mIntentSIOPLevelChanged:Landroid/content/Intent;

.field private static mLastBrightnessBySIOP:I

.field private static volatile mLastCPTemp:I

.field private static mLastCameraDualRecording:Z

.field private static mLastCameraRecording:Z

.field private static mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mLastThermistorTemp:I

.field private static mLatestMaxBrightness:I

.field private static mLimitCameraFlash:Z

.field private static mLimitCameraFlash_:Z

.field private static mLimitCameraRecording:Z

.field private static mLimitCameraRecording_:Z

.field private static mMonitor:Lcom/android/server/ssrm/Monitor;

.field static mMultiWindowRunning:Z

.field private static mPMS:Lcom/android/server/power/PowerManagerService;

.field static mPermanentAppPID:I

.field private static mPkgAddedFilter:Landroid/content/IntentFilter;

.field static mPowerConnected:Z

.field public static mPowerSavingMode:Z

.field static mPrevBrowserLowFps:Z

.field static mPrevFpsFullScreen:Z

.field static mPrevFpsPackage:Z

.field private static mSIOPControlForCameraShooting:Z

.field private static volatile mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

.field private static mSSRMStatusFilter:Landroid/content/IntentFilter;

.field static mScreenOn:Z

.field private static mSupportedCpuCoreNum:[I

.field private static mSupportedCpuFreq:[I

.field private static mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

.field private static mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

.field static mUsbConnected:Z

.field static mWifiConnected:Z

.field private static mXmlRetryCount:I

.field static thermistorDataSetListAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field static thermistorDataSetListCP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field static wifiEnabled:Z

.field private static xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;


# instance fields
.field private final THERMISTOR_TIMER_START:J

.field private final VAL_FOR_LATEST_TEMPERATURE:I

.field mBatteryStatus:I

.field private mPM:Landroid/os/PowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private thermistorObeserver:Ljava/util/Timer;

.field private thermistorObeserverTask:Ljava/util/TimerTask;

.field private xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    const-string v0, "Monitor"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    sput v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    sput v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sput v2, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    sput v2, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mDisableCPUControl:Z

    sput v4, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    sput v4, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    sput v2, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mInit:Z

    sput v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    sput v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraRecording:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    new-instance v0, Lcom/android/server/ssrm/Monitor$3;

    invoke-direct {v0}, Lcom/android/server/ssrm/Monitor$3;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "1"

    const-string v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v1, "Monitor"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_START:J

    new-instance v1, Ljava/util/Timer;

    const-string v2, "Thermistor timer"

    invoke-direct {v1, v2, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/Monitor;->VAL_FOR_LATEST_TEMPERATURE:I

    iput-object v7, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    new-instance v1, Lcom/android/server/ssrm/Monitor$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$2;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;

    new-instance v1, Lcom/android/server/ssrm/Monitor$4;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$4;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    sput-object p1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/server/ssrm/Monitor;->mPMS:Lcom/android/server/power/PowerManagerService;

    sput-object p3, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->createDynamicLCDFPS()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    new-instance v1, Lcom/android/server/ssrm/Monitor$SysfsTable;

    const-string v2, "/sys/devices/platform/sec-thermistor/temperature"

    const-string v3, "/sys/class/sensors/temphumidity_sensor/cp_temperature"

    const-string v4, "/sys/class/power_supply/battery/siop_level"

    const-string v5, "/sys/class/lcd/panel/siop_enable"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/ssrm/Monitor$SysfsTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    invoke-static {}, Lcom/android/server/ssrm/Monitor$SysfsTable;->checkCpSysfsAccesible()V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->initFeatureAndParameter()V

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    if-eqz v1, :cond_55

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->initialize()V

    :cond_55
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_60

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "In Monitor:: Constructor"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/Controller;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerIntentFilters()V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_7b

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    :cond_7b
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->start()V

    invoke-static {}, Lcom/android/server/ssrm/PolicyReader;->getInstance()Lcom/android/server/ssrm/PolicyReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getInstance()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    :try_start_8a
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_91} :catch_cb

    :cond_91
    :goto_91
    new-instance v1, Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Lcom/android/server/ssrm/Monitor$AclObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$AclObserver;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2, v7}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/ssrm/Monitor$1;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    return-void

    :catch_cb
    move-exception v0

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_91

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_91
.end method

.method static synthetic access$000()Lcom/android/server/ssrm/PolicyCreator;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    sget v0, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ssrm/Monitor;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$108()I
    .registers 2

    sget v0, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    return v0
.end method

.method static synthetic access$1100()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    return p0
.end method

.method static synthetic access$1700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    return p0
.end method

.method static synthetic access$1800(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V

    return-void
.end method

.method static synthetic access$1900()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/os/DVFSHelper;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .registers 1

    sput-object p0, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$3200()Landroid/os/DVFSHelper;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .registers 1

    sput-object p0, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$3300()[I
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    return-object v0
.end method

.method static synthetic access$3302([I)[I
    .registers 1

    sput-object p0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    return-object p0
.end method

.method static synthetic access$3400(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V

    return-void
.end method

.method static synthetic access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    return-object v0
.end method

.method static synthetic access$3600(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    return-void
.end method

.method static synthetic access$3700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    return v0
.end method

.method static synthetic access$3702(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    return p0
.end method

.method static synthetic access$3800()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    return v0
.end method

.method static synthetic access$3802(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    return p0
.end method

.method static synthetic access$3900()Lcom/android/server/ssrm/Monitor$BoostedURLHandler;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/Monitor;)Ljava/util/TimerTask;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$4000(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V

    return-void
.end method

.method static synthetic access$4102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mDisableCPUControl:Z

    return p0
.end method

.method static synthetic access$4200()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->onSIPIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4400(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->isFPSValid(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/ssrm/Monitor$SIPStatusInfo;)Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .registers 1

    sput-object p0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    return-object p0
.end method

.method static synthetic access$4700()Lcom/android/server/ssrm/Monitor$SysfsTable;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/Monitor;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$600()[Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ssrm/Monitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->createSIOPLevels()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ssrm/Monitor;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ssrm/Monitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->setCurrentLevelfromTemp()V

    return-void
.end method

.method private final aclOn(Z)V
    .registers 4

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v1, v0}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static declared-synchronized boostRequestfromAMS(Ljava/lang/String;)V
    .registers 7

    const-class v3, Lcom/android/server/ssrm/Monitor;

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "In Monitor:: boostRequestfromAMS"

    invoke-static {v2, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    monitor-exit v3

    return-void

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    .registers 10

    const/4 v2, 0x1

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name in Check Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCommonExceptionList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_11a

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11a

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v6, "attr.getCommonExceptionList()!= null : "

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_137

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception Name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "USB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9a

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUsbConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_34

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    if-eqz v5, :cond_97

    and-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_97
    and-int/lit8 v2, v2, 0x0

    goto :goto_34

    :cond_9a
    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_da

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_34

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    if-eqz v5, :cond_d6

    and-int/lit8 v2, v2, 0x1

    goto/16 :goto_34

    :cond_d6
    and-int/lit8 v2, v2, 0x0

    goto/16 :goto_34

    :cond_da
    const-string v5, "AIRPLANE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAirplanemode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_34

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    if-eqz v5, :cond_116

    and-int/lit8 v2, v2, 0x1

    goto/16 :goto_34

    :cond_116
    and-int/lit8 v2, v2, 0x0

    goto/16 :goto_34

    :cond_11a
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception List is Empty for package Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_137
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with doBoost : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private createDynamicLCDFPS()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
    .registers 3

    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "m0"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "t03g"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "t0lte"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_28
    new-instance v0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;-><init>(Lcom/android/server/ssrm/Monitor;)V

    :goto_2d
    return-object v0

    :cond_2e
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;-><init>(Lcom/android/server/ssrm/Monitor;)V

    goto :goto_2d

    :cond_3e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private createSIOPLevels()V
    .registers 18

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v1, "siop_jf_att"

    const-string v2, "j6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x0

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-1"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xc8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x1

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xa0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x2

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x78

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    :goto_5a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader;->getThermistorDataListAP()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_b9

    :cond_6c
    return-void

    :cond_6d
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x0

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-1"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xf9

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x1

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xc8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x2

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x96

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    goto :goto_5a

    :cond_b9
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thermistorDataSetListAP  size is = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v13, 0x0

    :goto_e2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_131

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v4, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmFreq()I

    move-result v5

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmCore()I

    move-result v6

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getChargeCurrent()I

    move-result v7

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getLcdBrightness()I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getFlashState()Z

    move-result v10

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getAclState()Z

    move-result v11

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->isRecordingStop()Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_e2

    :cond_131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader;->getThermistorDataListCP()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6c

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thermistorDataSetListCP  size is = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v13, 0x0

    :goto_16c
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v4, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmFreq()I

    move-result v5

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmCore()I

    move-result v6

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getChargeCurrent()I

    move-result v7

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getLcdBrightness()I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getFlashState()Z

    move-result v10

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getAclState()Z

    move-result v11

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->isRecordingStop()Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_16c
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 9

    const/4 v2, 0x0

    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_39} :catch_4b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_54

    :try_start_39
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_49} :catch_8e

    move-object v2, v3

    goto :goto_2e

    :catch_4b
    move-exception v0

    :try_start_4c
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v5, "fileWriteInt : file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_2e

    :catch_54
    move-exception v0

    :goto_55
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v4, :cond_81

    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is failed. IOException occured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :try_start_81
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_2e

    :catch_85
    move-exception v1

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v4, :cond_2e

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catch_8e
    move-exception v0

    move-object v2, v3

    goto :goto_55
.end method

.method private generateMergedSIOPLevel()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .registers 23

    const/16 v19, 0x0

    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v20, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v20

    if-gt v3, v0, :cond_d2

    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v17

    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v15

    :goto_22
    move/from16 v0, v17

    if-le v0, v15, :cond_ee

    add-int/lit8 v3, v15, 0x1

    sput v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    :goto_2a
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    sget v20, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    move/from16 v0, v20

    if-gt v3, v0, :cond_f2

    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v18

    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v16

    :goto_4a
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_10e

    add-int/lit8 v3, v16, 0x1

    sput v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    :goto_54
    move/from16 v0, v17

    if-ne v0, v15, :cond_112

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_112

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v20, "No change in Both AP and CP SIOP Level, will Return!!!"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setCurrentLevelfromTemp:: current AP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", last AP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", AP SIOP level = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setCurrentLevelfromTemp:: current CP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", last CP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", CP SIOP level = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    :goto_d1
    return-object v19

    :cond_d2
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v17

    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    add-int/lit8 v3, v3, -0x1

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v15

    goto/16 :goto_22

    :cond_ee
    sput v15, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    goto/16 :goto_2a

    :cond_f2
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v18

    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    add-int/lit8 v3, v3, -0x1

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v16

    goto/16 :goto_4a

    :cond_10e
    sput v16, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    goto/16 :goto_54

    :cond_112
    :try_start_112
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v20, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v3, v3, v20

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v20, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    aget-object v3, v3, v20

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_267

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    :goto_13e
    const/4 v6, -0x1

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_277

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_277

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_26f

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    :cond_16d
    :goto_16d
    const/4 v7, -0x1

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_2bf

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_2bf

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_2b7

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    :cond_19c
    :goto_19c
    const/4 v8, -0x1

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_307

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_307

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_2ff

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    :cond_1cb
    :goto_1cb
    const/4 v10, -0x1

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_34f

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_34f

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_347

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    :cond_1fa
    :goto_1fa
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_20a

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_38f

    :cond_20a
    const/4 v11, 0x1

    :goto_20b
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_21b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_392

    :cond_21b
    const/4 v12, 0x1

    :goto_21c
    const/4 v9, -0x1

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_39d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_39d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_395

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    :cond_24b
    :goto_24b
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_25b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_3dd

    :cond_25b
    const/4 v13, 0x1

    :goto_25c
    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    :goto_263
    move-object/from16 v19, v2

    goto/16 :goto_d1

    :cond_267
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    goto/16 :goto_13e

    :cond_26f
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_16d

    :cond_277
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_297

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_297

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_16d

    :cond_297
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_16d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_16d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_16d

    :cond_2b7
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_19c

    :cond_2bf
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_2df

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_2df

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_19c

    :cond_2df
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_19c

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_19c

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_19c

    :cond_2ff
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_1cb

    :cond_307
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_327

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_327

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_1cb

    :cond_327
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_1cb

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_1cb

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_1cb

    :cond_347
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_1fa

    :cond_34f
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_36f

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_36f

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_1fa

    :cond_36f
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_1fa

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_1fa

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_1fa

    :cond_38f
    const/4 v11, 0x0

    goto/16 :goto_20b

    :cond_392
    const/4 v12, 0x0

    goto/16 :goto_21c

    :cond_395
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_24b

    :cond_39d
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_3bd

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_3bd

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_24b

    :cond_3bd
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_24b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_24b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    :try_end_3da
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_3da} :catch_3e0

    move-result v9

    goto/16 :goto_24b

    :cond_3dd
    const/4 v13, 0x0

    goto/16 :goto_25c

    :catch_3e0
    move-exception v14

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception in setCurrentLevelfromTemp ::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto/16 :goto_263
.end method

.method public static getMonitorInstance()Lcom/android/server/ssrm/Monitor;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static getMonitorInstance(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;
    .registers 4

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/ssrm/Monitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ssrm/Monitor;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    :cond_b
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static getThermistorTimerDuration()J
    .registers 2

    sget-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    return-wide v0
.end method

.method private static initFeatureAndParameter()V
    .registers 3

    const/4 v2, 0x1

    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_15
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DRAMA_SHOT:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DUAL_RECORD:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    const/16 v0, 0xf9

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    const-string v0, "siop_jf_att"

    if-eqz v0, :cond_33

    const-string v0, "siop_jf_att"

    const-string v1, "j6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0xc8

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    :cond_33
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_BROWSER_BOOSTER:Z

    :cond_3f
    return-void
.end method

.method private static isFPSValid(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static final limitBrightness(I)V
    .registers 4

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPMS:Lcom/android/server/power/PowerManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/PowerManagerService;->setMasterBrightnessLimit(II)V

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/Monitor;->notifyLimitBrightness(IZ)V

    :cond_26
    return-void
.end method

.method private final limitCPUCore(I)V
    .registers 8

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3a

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_CORE_NUM_MAX"

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    if-eqz v0, :cond_54

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCore:: mSupportedCpuCoreNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    if-eqz v0, :cond_53

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_53

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_4e

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5c

    :cond_4e
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_53
    :goto_53
    return-void

    :cond_54
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUCore:: mSupportedCpuCoreNum = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_5c
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_53
.end method

.method private static limitCPUFreq(I)V
    .registers 9

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mDisableCPUControl:Z

    if-eqz v0, :cond_1d

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    if-nez v0, :cond_38

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    :cond_38
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4c

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUFreq:: SIOP CPU freq max lock is released."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1c

    :cond_4c
    const/4 v6, 0x0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    array-length v7, v0

    :goto_50
    if-lez v7, :cond_60

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    add-int/lit8 v1, v7, -0x1

    aget v0, v0, v1

    if-lt v0, p0, :cond_75

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    add-int/lit8 v1, v7, -0x1

    aget v6, v0, v1

    :cond_60
    if-eqz v6, :cond_1c

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1c

    :cond_75
    add-int/lit8 v7, v7, -0x1

    goto :goto_50
.end method

.method private static limitChargingCurrent(I)V
    .registers 4

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitChargingCurrent : currentLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1d

    const/16 p0, 0x64

    :cond_1d
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    :cond_2a
    return-void
.end method

.method private final limitFlashLed(Z)V
    .registers 5

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitFlashLed:: bLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    goto :goto_4
.end method

.method private final limitRecording(Z)V
    .registers 5

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitRecording:: recordingStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    goto :goto_4
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private static final notifyLimitBrightness(IZ)V
    .registers 5

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    if-ne v0, p0, :cond_6

    if-eqz p1, :cond_3a

    :cond_6
    sput p0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v1, "max_brightness"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_3a
    return-void
.end method

.method private static onCameraDualRecording(Z)V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_15
    if-eqz p0, :cond_47

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v1

    if-gt v0, v1, :cond_28

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    :cond_28
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v0, v0, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    :cond_33
    :goto_33
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    if-eqz p0, :cond_4d

    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    const/16 v1, 0x15e

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    sget v0, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    goto :goto_33

    :cond_4d
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_46
.end method

.method private static onCameraRecording(Z)V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_15
    if-eqz p0, :cond_34

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v1

    if-gt v0, v1, :cond_28

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    :cond_28
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v0, v0, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    sget v0, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    goto :goto_33
.end method

.method private static onPowerSavingModeChanged(Z)V
    .registers 6

    const-string v0, "/sys/class/power_supply/battery/test_charge_current"

    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v2, 0x1

    :goto_16
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    if-eqz v3, :cond_3c

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "POWERSAVING_CHANGED:: test_charge_current = 530"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const/16 v4, 0x212

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    :cond_30
    :goto_30
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    if-eqz v3, :cond_39

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    invoke-virtual {v3}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_39
    return-void

    :cond_3a
    const/4 v2, 0x0

    goto :goto_16

    :cond_3c
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "POWERSAVING_CHANGED:: test_charge_current = 460"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const/16 v4, 0x1cc

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_30
.end method

.method private static onSIPIntentReceived(Landroid/content/Intent;)V
    .registers 4

    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    monitor-enter v0

    :try_start_8
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    const-string v1, "PID"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPPidReport:I

    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onSIPIntentReceived:: SIP visility was updated more than two times in 100ms."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    monitor-exit v0

    goto :goto_6

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v1

    :cond_2a
    const/4 v1, 0x1

    :try_start_2b
    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$5;

    invoke-direct {v2}, Lcom/android/server/ssrm/Monitor$5;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_27

    goto :goto_25
.end method

.method private declared-synchronized readThermistorFile()Z
    .registers 12

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_3
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v8, v8, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_c0

    if-eqz v8, :cond_34

    const/4 v0, 0x0

    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v9, v9, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_c3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_96

    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2f

    sget v8, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    sput v8, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    sget v8, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v9, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_119
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2c} :catch_11c

    if-eq v8, v9, :cond_2f

    const/4 v5, 0x1

    :cond_2f
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_10d

    :cond_34
    :goto_34
    :try_start_34
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v8, v8, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    if-eqz v8, :cond_69

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_c0

    if-eqz v8, :cond_69

    const/4 v2, 0x0

    :try_start_3f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v9, v9, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_f4
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4d} :catch_ca

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_64

    sget v8, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    sput v8, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    sget v8, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    sget v9, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_113
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_61} :catch_116

    if-eq v8, v9, :cond_64

    const/4 v6, 0x1

    :cond_64
    if-eqz v3, :cond_69

    :try_start_66
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_107

    :cond_69
    :goto_69
    :try_start_69
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIOP:: Current AP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", CP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_69 .. :try_end_8f} :catchall_c0

    if-nez v5, :cond_93

    if-eqz v6, :cond_fb

    :cond_93
    const/4 v8, 0x1

    :goto_94
    monitor-exit p0

    return v8

    :catch_96
    move-exception v4

    :goto_97
    :try_start_97
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading current temperature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_97 .. :try_end_b3} :catchall_c3

    if-eqz v0, :cond_34

    :try_start_b5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_34

    :catch_ba
    move-exception v4

    :try_start_bb
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_c0

    goto/16 :goto_34

    :catchall_c0
    move-exception v8

    monitor-exit p0

    throw v8

    :catchall_c3
    move-exception v8

    :goto_c4
    if-eqz v0, :cond_c9

    :try_start_c6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_fd

    :cond_c9
    :goto_c9
    :try_start_c9
    throw v8
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c0

    :catch_ca
    move-exception v4

    :goto_cb
    :try_start_cb
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading current temperature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_cb .. :try_end_e7} :catchall_f4

    if-eqz v2, :cond_69

    :try_start_e9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ee

    goto/16 :goto_69

    :catch_ee
    move-exception v4

    :try_start_ef
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_c0

    goto/16 :goto_69

    :catchall_f4
    move-exception v8

    :goto_f5
    if-eqz v2, :cond_fa

    :try_start_f7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_102

    :cond_fa
    :goto_fa
    :try_start_fa
    throw v8

    :cond_fb
    const/4 v8, 0x0

    goto :goto_94

    :catch_fd
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c9

    :catch_102
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fa

    :catch_107
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_69

    :catch_10d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_111
    .catchall {:try_start_fa .. :try_end_111} :catchall_c0

    goto/16 :goto_34

    :catchall_113
    move-exception v8

    move-object v2, v3

    goto :goto_f5

    :catch_116
    move-exception v4

    move-object v2, v3

    goto :goto_cb

    :catchall_119
    move-exception v8

    move-object v0, v1

    goto :goto_c4

    :catch_11c
    move-exception v4

    move-object v0, v1

    goto/16 :goto_97
.end method

.method public static declared-synchronized removeboostRequestfromAMS(Ljava/lang/String;)V
    .registers 4

    const-class v2, Lcom/android/server/ssrm/Monitor;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static sendSIOPChangedStickyIntent()V
    .registers 5

    const-string v1, "flash_led_disable"

    const-string v0, "camera_recording_disable"

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    if-ne v2, v3, :cond_11

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    if-ne v2, v3, :cond_11

    :goto_10
    return-void

    :cond_11
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSIOPChangedStickyIntent:: EXTRA_FLASH_LED_DISABLE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", EXTRA_CAMERA_RECORDING_DISABLE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v3, "flash_led_disable"

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v3, "camera_recording_disable"

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_10
.end method

.method private static sendSIOPUpdateMessage(Z)V
    .registers 3

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    :cond_5
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private declared-synchronized setCurrentLevelfromTemp()V
    .registers 18

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    invoke-virtual {v2}, Lcom/android/server/ssrm/PolicyReader;->getThermistorDataListAP()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_229

    move-result v2

    if-gtz v2, :cond_15

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-nez v2, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->createSIOPLevels()V

    :cond_1c
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_22c

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_22c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->generateMergedSIOPLevel()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    :goto_2a
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    sput v2, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    if-eqz v2, :cond_116

    const-string v2, "ja"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "jf"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    :cond_4e
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "Camera Dual Recording running!!!"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v2, "ja"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2ef

    const/16 v15, 0x1b8

    const/16 v16, 0x1e0

    :cond_66
    :goto_66
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempOne :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , tempTwo :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    if-ge v2, v15, :cond_30f

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    :cond_95
    :goto_95
    const/4 v8, -0x1

    const/4 v11, 0x0

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_116

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_116

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_347

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_347

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    if-ge v2, v3, :cond_33f

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    :cond_c5
    :goto_c5
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v2

    if-nez v2, :cond_d5

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v2

    if-eqz v2, :cond_363

    :cond_d5
    const/4 v11, 0x1

    :goto_d6
    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v10

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "Modified mCurrentSIOPObject\'s brightness and ACL as per camera\'s SIOP level"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_116
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merged SIOPLevel Object :: Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ArmFreq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ArmCoreNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ChargeCurrent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LCDBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Flash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ACL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Temp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recordingStop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    if-eqz v2, :cond_1fc

    sget v2, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1fc

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    if-eqz v2, :cond_1fc

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    if-nez v2, :cond_1fc

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    sget v3, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    if-gt v2, v3, :cond_1ee

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1fc

    :cond_1ee
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "setCurrentLevelfromTemp:: displayBrightness = 250cd"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v3, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2502(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    :cond_1fc
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    if-eqz v2, :cond_209

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    :cond_209
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_220

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->changeState(Lcom/android/server/ssrm/Monitor$SIOPLevel;Lcom/android/server/ssrm/Monitor$SIOPLevel;)V

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    :cond_220
    const-string v2, "sys.siop.curlevel"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_227
    .catchall {:try_start_15 .. :try_end_227} :catchall_229

    goto/16 :goto_13

    :catchall_229
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_22c
    :try_start_22c
    sget v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    if-gt v2, v3, :cond_2d3

    sget v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v14

    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v13

    :goto_246
    if-le v14, v13, :cond_2eb

    add-int/lit8 v2, v13, 0x1

    sput v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    :goto_24c
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    if-eqz v2, :cond_264

    sget v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_264

    sget v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_264

    const/4 v2, 0x3

    sput v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "SIOPControlForCameraShooting:: mIntCurrentSIOPLevelAP = 3"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_264
    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v3

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v4

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v5, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v5

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v6, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v6

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v7, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v7

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v9, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v9

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v9, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v9

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v10, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v10

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v10

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v12, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v12

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v11

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v12, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v12

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    goto/16 :goto_2a

    :cond_2d3
    sget v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v14

    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v13

    goto/16 :goto_246

    :cond_2eb
    sput v13, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    goto/16 :goto_24c

    :cond_2ef
    const-string v2, "jf"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v2, "siop_jf_att"

    const-string v3, "j6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_309

    const/16 v15, 0x1b8

    const/16 v16, 0x1e0

    goto/16 :goto_66

    :cond_309
    const/16 v15, 0x1fe

    const/16 v16, 0x226

    goto/16 :goto_66

    :cond_30f
    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    if-lt v2, v15, :cond_329

    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v16

    if-ge v2, v0, :cond_329

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "mCurrentSIOPObjectCamera :: index 1"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_95

    :cond_329
    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v16

    if-lt v2, v0, :cond_95

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "mCurrentSIOPObjectCamera :: index 2"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_95

    :cond_33f
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_c5

    :cond_347
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_358

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_c5

    :cond_358
    const/4 v2, -0x1

    if-ne v8, v2, :cond_c5

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    :try_end_360
    .catchall {:try_start_22c .. :try_end_360} :catchall_229

    move-result v8

    goto/16 :goto_c5

    :cond_363
    const/4 v11, 0x0

    goto/16 :goto_d6
.end method

.method public static setThermistorTimerDuration(J)V
    .registers 6

    const-wide/16 v2, 0x3e8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    :goto_c
    return-void

    :cond_d
    cmp-long v0, p0, v2

    if-lez v0, :cond_14

    sput-wide p0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    goto :goto_c

    :cond_14
    sput-wide v2, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    goto :goto_c
.end method


# virtual methods
.method changeState(Lcom/android/server/ssrm/Monitor$SIOPLevel;Lcom/android/server/ssrm/Monitor$SIOPLevel;)V
    .registers 6

    if-nez p1, :cond_25

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : currLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lastLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void

    :cond_25
    if-eqz p2, :cond_7b

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : Name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState :  freq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitCPUCore(I)V

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    if-eqz v0, :cond_94

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    :cond_94
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitFlashLed(Z)V

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitRecording(Z)V

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->aclOn(Z)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->sendSIOPChangedStickyIntent()V

    goto/16 :goto_24
.end method

.method getSIOPLevelByTemp(II)I
    .registers 5

    packed-switch p2, :pswitch_data_56

    const/4 v0, -0x1

    :cond_4
    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getSurfaceTemp()I

    move-result v1

    if-ge p1, v1, :cond_21

    if-eqz v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_4

    :pswitch_2d
    const/4 v0, 0x0

    :goto_2e
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getSurfaceTemp()I

    move-result v1

    if-ge p1, v1, :cond_49

    if-eqz v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4c
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_4

    nop

    :pswitch_data_56
    .packed-switch 0x6f
        :pswitch_5
        :pswitch_2d
    .end packed-switch
.end method

.method public init()V
    .registers 4

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mInit:Z

    if-eqz v1, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/Monitor;->mInit:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "init:: let\'s read SSRM policy XML"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public initHandler()V
    .registers 2

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/android/server/ssrm/Monitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$1;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    goto :goto_4
.end method

.method public registerIntentFilters()V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CP_SIOP_LEVEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public run()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "In Monitor:: Thread"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    :cond_11
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public systemReady()V
    .registers 4

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "Startng TMU Observer"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/ssrm/Monitor$TMUObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$TMUObserver;-><init>(Lcom/android/server/ssrm/Monitor$1;)V

    const-string v1, "TMUSTATE"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/Monitor$TMUObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method
