.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$SvcLEDReceiver;,
        Lcom/android/server/LightsService$WakeLockReleaseTask;,
        Lcom/android/server/LightsService$WakeLockAquireTask;,
        Lcom/android/server/LightsService$ForcedSvcLEDTask;,
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field public static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field public static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LIGHT_FLASH_HARDWARE:I = 0x2

.field public static final LIGHT_FLASH_NONE:I = 0x0

.field public static final LIGHT_FLASH_TIMED:I = 0x1

.field public static final LIGHT_ID_ATTENTION:I = 0x5

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BATTERY:I = 0x3

.field public static final LIGHT_ID_BLUETOOTH:I = 0x6

.field public static final LIGHT_ID_BUTTONS:I = 0x2

.field public static final LIGHT_ID_CONNECTIVITY:I = 0x8

.field public static final LIGHT_ID_COUNT:I = 0xa

.field public static final LIGHT_ID_KEYBOARD:I = 0x1

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field public static final LIGHT_ID_VOLUME:I = 0x9

.field public static final LIGHT_ID_WIFI:I = 0x7

.field static final LIGHT_SEC_FLASH:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final SVCLED_ATTENTION_MASK:I = 0x0

.field private static final SVCLED_BATTERY_MASK:I = 0x39

.field private static final SVCLED_CHARGING:I = 0x8

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x20

.field private static final SVCLED_LOW_BATTERY:I = 0x10

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x3

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x6

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x5

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x4

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LightsService"

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I

.field private static final model:Ljava/lang/String;


# instance fields
.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mForcedSvcLEDTask:Lcom/android/server/LightsService$ForcedSvcLEDTask;

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mIsLEDChanged:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field private mLedLowPowerPath:Ljava/lang/String;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSvcLEDHandler:Landroid/os/Handler;

.field private mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

.field private mWakeLockReleaseTask:Lcom/android/server/LightsService$WakeLockReleaseTask;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedColor:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedMode:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    const-string v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    new-instance v2, Lcom/android/server/LightsService$ForcedSvcLEDTask;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LightsService$ForcedSvcLEDTask;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mForcedSvcLEDTask:Lcom/android/server/LightsService$ForcedSvcLEDTask;

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    new-instance v2, Lcom/android/server/LightsService$WakeLockAquireTask;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LightsService$WakeLockAquireTask;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

    new-instance v2, Lcom/android/server/LightsService$WakeLockReleaseTask;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LightsService$WakeLockReleaseTask;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeLockReleaseTask:Lcom/android/server/LightsService$WakeLockReleaseTask;

    new-array v2, v6, [Lcom/android/server/LightsService$Light;

    iput-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v2, Lcom/android/server/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    new-instance v2, Lcom/android/server/LightsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    iput-boolean v4, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    new-instance v2, Lcom/android/server/LightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$4;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    const-string v2, "/sys/class/sec/led/led_lowpower"

    iput-object v2, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mNativePointer:I

    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "hardware"

    iget-object v3, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    new-instance v2, Lcom/android/server/LightsService$2;

    const-string v3, "mSvcLEDThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    :goto_71
    :try_start_71
    iget-boolean v2, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_8d

    if-nez v2, :cond_7d

    :try_start_75
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_8d
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_71

    :catch_7b
    move-exception v2

    goto :goto_71

    :cond_7d
    :try_start_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_8d

    const/4 v1, 0x0

    :goto_7f
    if-ge v1, v6, :cond_90

    iget-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v3, Lcom/android/server/LightsService$Light;

    invoke-direct {v3, p0, v1, v5}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :catchall_8d
    move-exception v2

    :try_start_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v2

    :cond_90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/LightsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method static synthetic access$1100()I
    .registers 1

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/LightsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$1400(IIIIIII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/LightsService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/LightsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LightsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$WakeLockReleaseTask;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeLockReleaseTask:Lcom/android/server/LightsService$WakeLockReleaseTask;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/LightsService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->wl:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$WakeLockAquireTask;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;IIIIIZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDTask;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mForcedSvcLEDTask:Lcom/android/server/LightsService$ForcedSvcLEDTask;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/LightsService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method private clearSvcLedStateLocked(I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_8

    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_8
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .registers 10

    const/4 v2, 0x0

    const-string v4, "LightsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_4d

    :try_start_2d
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_5a

    move-object v2, v3

    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    :try_start_3e
    iget-object v4, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    :cond_49
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4c} :catch_4d

    goto :goto_3c

    :catch_4d
    move-exception v0

    :goto_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_3c

    :catch_55
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :catch_5a
    move-exception v0

    move-object v2, v3

    goto :goto_4e
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method

.method private setSvcLedLightLocked(I)V
    .registers 13

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x14

    if-ge p1, v1, :cond_74

    move v6, v0

    :goto_7
    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    if-eq v6, v1, :cond_1a

    iput v6, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    iget-object v1, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/LightsService;->fileWriteInt(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    :cond_1a
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    :goto_1e
    const/4 v0, 0x6

    if-ge v9, v0, :cond_28

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_76

    :cond_28
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED] setSvcLedLightLocked : mSvcLedState : 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/LightsService;->mSvcLedState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  priority : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  mSvcLedMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/LightsService;->mSvcLedMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-nez v0, :cond_79

    iget v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    const/4 v2, 0x0

    :goto_64
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v10

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$3000(Lcom/android/server/LightsService$Light;IIIII)V

    iput v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    return-void

    :cond_74
    move v6, v5

    goto :goto_7

    :cond_76
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_79
    packed-switch v9, :pswitch_data_98

    const/4 v10, 0x5

    const/4 v2, 0x0

    goto :goto_64

    :pswitch_7f
    const/4 v10, 0x3

    const/16 v2, 0xb

    goto :goto_64

    :pswitch_83
    const/4 v10, 0x4

    const/16 v2, 0xc

    goto :goto_64

    :pswitch_87
    const/4 v10, 0x4

    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    goto :goto_64

    :pswitch_8b
    const/4 v10, 0x3

    const/16 v2, 0xa

    goto :goto_64

    :pswitch_8f
    const/4 v10, 0x3

    const/16 v2, 0xd

    goto :goto_64

    :pswitch_93
    const/4 v10, 0x3

    const/16 v2, 0xe

    goto :goto_64

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_83
        :pswitch_87
        :pswitch_8b
        :pswitch_8f
        :pswitch_93
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .registers 10

    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_6d

    const-string v0, "Off"

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", set = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_72

    const-string v0, "On"

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_af

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eqz p6, :cond_5c

    const/16 v0, 0xa

    if-ne p3, v0, :cond_75

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    :cond_5c
    :goto_5c
    sget v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_65

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    :cond_65
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LightsService;->mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2a

    :cond_72
    const-string v0, "Off"

    goto :goto_38

    :cond_75
    const/16 v0, 0xe

    if-ne p3, v0, :cond_80

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_5c

    :cond_80
    const/16 v0, 0xd

    if-ne p3, v0, :cond_8b

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_5c

    :cond_8b
    const/16 v0, 0xb

    if-ne p3, v0, :cond_96

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_5c

    :cond_96
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :cond_af
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d5

    if-eqz p6, :cond_ce

    const/16 v0, 0xc

    if-ne p3, v0, :cond_bf

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_5c

    :cond_bf
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto :goto_5c

    :cond_ce
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_5c

    :cond_d5
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .registers 3

    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method systemReady()V
    .registers 6

    const/4 v4, 0x0

    const-string v2, "LightsService"

    const-string v3, "[SvcLED] systemReady"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v2, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    :cond_3e
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "LightsService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LightsService;->wl:Landroid/os/PowerManager$WakeLock;

    return-void
.end method
