.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$1;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    }
.end annotation


# static fields
.field private static final APE_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ape_opp"

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final CPU_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

.field private static final CPU_DEFAULT_CORE:I = 0x0

.field private static CPU_FREQ_TABLE_PATH:Ljava/lang/String; = null

.field private static CPU_FREQ_TABLE_PATH_ADONIS:Ljava/lang/String; = null

.field private static final CPU_MAX_CORE:I = 0x4

.field private static final DDR_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ddr_opp"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final IS_AP_TYPE_DB8420:Z = false

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object; = null

.field private static final LCD_FRAME_RATE_DEFAULT:I = 0x1

.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"

.field private static final MMC_BURST_BOOST_VALUE:I = 0x80

.field private static final MMC_BURST_DEFAULT:I = 0x0

.field private static final MMC_BURST_PATH:Ljava/lang/String; = "/sys/block/mmcblk0/bkops_en"

.field private static final OPP_DEFAULT:I = 0x0

.field private static final SYSBUS_LOCK:Ljava/lang/Object; = null

.field private static final SYSBUS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/busfreq/curr_freq"

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static countOfSysBusLock:I

.field private static isCpuFreqTablePathExist:Z

.field private static isCpuFreqTablePathForAdonisExist:Z

.field private static mApeOppPath:Z

.field private static mCpuCorePath:Z

.field private static mDdrOppPath:Z

.field private static final mDebugDVFSLock:Z

.field private static mGpuPath:Z

.field private static mLcdFrameRatePath:Z

.field private static mMCBurstPath:Z

.field private static final mSpew:Z

.field private static mSupportedCPUCore:[I

.field private static mSupportedGPUFrequency:[I

.field private static mSupportedSysBusFrequency:[I

.field private static mSysBusPath:Z


# instance fields
.field private final MY_PID:I

.field private final MY_UID:I

.field private final QCOM:I

.field private final SLSI:I

.field private filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

.field mContext:Landroid/content/Context;

.field private mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private final mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

.field private final mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorRequest:Lcom/android/server/ssrm/Monitor;

.field private volatile mPersistentDVFSLocksInfo:I

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mSupportedFrequency:[I

.field private mSupportedLCDFrequency:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    sput-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    sput-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    sput-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDdrOppPath:Z

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mApeOppPath:Z

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMCBurstPath:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    sput v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->countOfSysBusLock:I

    const-string v2, "/sys/power/cpufreq_table"

    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->CPU_FREQ_TABLE_PATH:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->CPU_FREQ_TABLE_PATH_ADONIS:Ljava/lang/String;

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isCpuFreqTablePathExist:Z

    sput-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isCpuFreqTablePathForAdonisExist:Z

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->CPU_FREQ_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->CPU_FREQ_TABLE_PATH_ADONIS:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_69

    move v2, v3

    :goto_58
    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isCpuFreqTablePathExist:Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_6b

    :goto_66
    sput-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isCpuFreqTablePathForAdonisExist:Z

    return-void

    :cond_69
    move v2, v4

    goto :goto_58

    :cond_6b
    move v3, v4

    goto :goto_66
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->SLSI:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->QCOM:I

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitorRequest:Lcom/android/server/ssrm/Monitor;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MY_UID:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MY_PID:I

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSYSFile()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysfsNode()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->verifyDefaultCondition()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedCPUCore()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedFrequency()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedLCDFreq()V

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, v1, p3}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitorRequest:Lcom/android/server/ssrm/Monitor;

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitorRequest:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/Monitor;->init()V

    return-void
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const-string v0, "???"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_5

    :pswitch_9
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method public static checkCPUCoreRange(I)Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private checkSysfsNode()V
    .registers 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    sget-boolean v2, Lcom/android/server/ssrm/SLSISysFALImpl;->mDdrOppPath:Z

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDdrOppPath:Z

    sget-boolean v2, Lcom/android/server/ssrm/SLSISysFALImpl;->mApeOppPath:Z

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mApeOppPath:Z

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    invoke-interface {v2, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/block/mmcblk0/bkops_en"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_42

    :goto_3f
    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMCBurstPath:Z

    return-void

    :cond_42
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private initSYSFile()V
    .registers 2

    new-instance v0, Lcom/android/server/ssrm/SLSISysFALImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/SLSISysFALImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    return-void
.end method

.method private initSupportedCPUCore()V
    .registers 3

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    goto :goto_4
.end method

.method private initSupportedFrequency()V
    .registers 9

    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "initSupportedFrequency::"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    if-nez v5, :cond_24

    :try_start_c
    sget-boolean v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isCpuFreqTablePathExist:Z

    if-eqz v5, :cond_25

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->CPU_FREQ_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_85
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_73

    move-object v0, v1

    :cond_1d
    :goto_1d
    if-nez v0, :cond_37

    if-eqz v0, :cond_24

    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_91

    :cond_24
    :goto_24
    return-void

    :cond_25
    :try_start_25
    sget-boolean v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isCpuFreqTablePathForAdonisExist:Z

    if-eqz v5, :cond_1d

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->CPU_FREQ_TABLE_PATH_ADONIS:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    goto :goto_1d

    :cond_37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    const/4 v3, 0x0

    :goto_47
    array-length v5, v4

    if-ge v3, v5, :cond_93

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v3

    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSupportedFrequency:: mSupportedFrequency = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_25 .. :try_end_70} :catchall_85
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_70} :catch_73

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :catch_73
    move-exception v2

    :try_start_74
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_85

    if-eqz v0, :cond_24

    :try_start_7c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_24

    :catch_80
    move-exception v2

    :goto_81
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    :catchall_85
    move-exception v5

    if-eqz v0, :cond_8b

    :try_start_88
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    :cond_8b
    :goto_8b
    throw v5

    :catch_8c
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8b

    :catch_91
    move-exception v2

    goto :goto_81

    :cond_93
    if-eqz v0, :cond_24

    :try_start_95
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_24

    :catch_99
    move-exception v2

    goto :goto_81
.end method

.method private initSupportedGPUFrequency()V
    .registers 3

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    goto :goto_4
.end method

.method private initSupportedLCDFreq()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x2

    const/16 v2, 0x33

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x3

    const/16 v2, 0x3c

    aput v2, v0, v1

    goto :goto_4
.end method

.method private initSupportedSysBusFrequency()V
    .registers 3

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    goto :goto_4
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private modifyCPUCoreToValue(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v1, 0x0

    :try_start_f
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_45

    :try_start_16
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_3f

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&&& modifyCPUCoreToValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_4c

    :cond_3f
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_d

    :catchall_45
    move-exception v3

    :goto_46
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4b
    throw v3

    :catchall_4c
    move-exception v3

    move-object v1, v2

    goto :goto_46
.end method

.method private modifyFrameRateToValue(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2a

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v2, 0x0

    const/16 v4, 0x28

    if-eq p1, v4, :cond_37

    const/16 v4, 0x33

    if-eq p1, v4, :cond_37

    const/16 v4, 0x32

    if-ne p1, v4, :cond_6f

    :cond_37
    const/4 p1, 0x1

    :cond_38
    :goto_38
    :try_start_38
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_b1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_3f} :catch_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_95

    :try_start_3f
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_68

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_3f .. :try_end_68} :catchall_b8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_68} :catch_be
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_68} :catch_bb

    :cond_68
    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_6d
    move-object v2, v3

    goto :goto_d

    :cond_6f
    const/16 v4, 0x3c

    if-ne p1, v4, :cond_38

    const/4 p1, 0x0

    goto :goto_38

    :catch_75
    move-exception v0

    :goto_76
    :try_start_76
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: UnsupportedEncodingException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_b1

    if-eqz v2, :cond_d

    :goto_90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_d

    :catch_95
    move-exception v0

    :goto_96
    :try_start_96
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_b1

    if-eqz v2, :cond_d

    goto :goto_90

    :catchall_b1
    move-exception v4

    :goto_b2
    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_b7
    throw v4

    :catchall_b8
    move-exception v4

    move-object v2, v3

    goto :goto_b2

    :catch_bb
    move-exception v0

    move-object v2, v3

    goto :goto_96

    :catch_be
    move-exception v0

    move-object v2, v3

    goto :goto_76
.end method

.method private modifyGPUToValue(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    goto :goto_8
.end method

.method private static native nativeAcquireDVFSLock(II)I
.end method

.method private static native nativeReleaseDVFSLock(I)I
.end method

.method private static onListScrollBoostEvent(Z)V
    .registers 7

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListScrollBoostEvent:: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_18
    const-class v3, Lcom/android/server/ssrm/TurboModeOnOff;

    invoke-static {v3}, Lcom/android/server/ssrm/TurboModeOnOff;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/TurboModeOnOff;

    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/TurboModeOnOff;->onListScrollBoost(Z)V
    :try_end_23
    .catch Ljava/lang/InstantiationException; {:try_start_18 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_23} :catch_29

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_23

    :catch_29
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_23
.end method

.method private releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v3, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseAllLauncherCPUCoreLocks : tempLockList.size() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_26
    :try_start_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3e
    monitor-exit v4

    return-void

    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    throw v3
.end method

.method private releaseAllLauncherDVFSLocks(Ljava/lang/String;)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getAllDVFSLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseAllLauncherDVFSLocks : tempLockList.size() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_26
    :try_start_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3c
    monitor-exit v4

    return-void

    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method private revertCPUCoreToDefault()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_36

    const/4 v4, 0x0

    :try_start_17
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2f

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "&&& revertCPUCoreToDefault : 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_5c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_2f} :catch_5f

    :cond_2f
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_34
    move-object v2, v3

    goto :goto_d

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsupportedEncodingException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_55

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_d

    :catchall_55
    move-exception v4

    :goto_56
    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_5b
    throw v4

    :catchall_5c
    move-exception v4

    move-object v2, v3

    goto :goto_56

    :catch_5f
    move-exception v0

    move-object v2, v3

    goto :goto_37
.end method

.method private revertGPUToDefault()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    goto :goto_8
.end method

.method private revertLCDFrameRateToDefault()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_36

    const/4 v4, 0x1

    :try_start_17
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2f

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "revertLCDFrameRateToDefault:: value = 1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_2f} :catch_ad

    :cond_2f
    if-eqz v3, :cond_34

    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_90

    :cond_34
    :goto_34
    move-object v2, v3

    goto :goto_d

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: UnsupportedEncodingException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_6f

    if-eqz v2, :cond_d

    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_d

    :catch_55
    move-exception v0

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catchall_6f
    move-exception v4

    :goto_70
    if-eqz v2, :cond_75

    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    :cond_75
    :goto_75
    throw v4

    :catch_76
    move-exception v0

    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :catch_90
    move-exception v0

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catchall_aa
    move-exception v4

    move-object v2, v3

    goto :goto_70

    :catch_ad
    move-exception v0

    move-object v2, v3

    goto :goto_37
.end method

.method private verifyDefaultCondition()V
    .registers 6

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mApeOppPath:Z

    if-eqz v2, :cond_13

    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_1e

    :cond_13
    :goto_13
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-eqz v2, :cond_1d

    :try_start_17
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_38

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v1

    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyDefaultCondition : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catch_38
    move-exception v1

    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyDefaultCondition : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method


# virtual methods
.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    if-eqz p4, :cond_16

    const-string v0, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    :cond_16
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_22
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_35

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    :try_start_2a
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    monitor-exit v9
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_32

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v9
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .registers 16

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, p3, p6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_e1

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_68

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "Before Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    :cond_68
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->addLock(Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c1

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "After Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Creating new Lock type & adding to List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    :goto_c1
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_13c

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_d2

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_da

    :cond_d2
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeAcquireDVFSLock(II)I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    :cond_da
    :goto_da
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    return-void

    :cond_e1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c1

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    invoke-static {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    :cond_13c
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_da

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_14d

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_da

    :cond_14d
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeAcquireDVFSLock(II)I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_da
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_c
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_a3

    :try_start_f
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_87

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    :goto_82
    monitor-exit v9
    :try_end_83
    .catchall {:try_start_f .. :try_end_83} :catchall_a0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_87
    :try_start_87
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :catchall_a0
    move-exception v0

    monitor-exit v9
    :try_end_a2
    .catchall {:try_start_87 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public checkCPUBoostRange(I)Z
    .registers 6

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2a

    const/4 v1, 0x1

    :goto_29
    return v1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_49

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public checkFrameRateRange(I)Z
    .registers 5

    const/16 v0, 0x28

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_10

    const/16 v0, 0x33

    if-eq p1, v0, :cond_10

    const/16 v0, 0x32

    if-ne p1, v0, :cond_2e

    :cond_10
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFrameRateRange : In RANGE!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_4a

    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFrameRateRange : Not In RANGE!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public checkGPUFrequencyRange(I)Z
    .registers 5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_14

    const/4 v1, 0x1

    goto :goto_5

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public checkSysBusFrequencyRange(I)Z
    .registers 6

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v1, :cond_31

    const/4 v0, 0x0

    :goto_21
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_31

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2e

    const/4 v1, 0x1

    :goto_2d
    return v1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_31
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4d

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public declared-synchronized getDVFSLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedCPUCoreNum()[I
    .registers 2

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .registers 2

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedLCDFrequency()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .registers 2

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public mpdUpdate(I)V
    .registers 13

    const/4 v9, 0x1

    if-ne p1, v9, :cond_34

    const-string v8, "enable_mpd"

    :goto_5
    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_7
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_62
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_c} :catch_37
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_4e

    :try_start_c
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_7f
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_25} :catch_85
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_25} :catch_82

    if-eqz v7, :cond_2a

    :try_start_27
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_2a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v6, :cond_32

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_76

    :cond_32
    :goto_32
    move-object v5, v6

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string v8, "disable_mpd"

    goto :goto_5

    :catch_37
    move-exception v3

    :goto_38
    :try_start_38
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_62

    if-eqz v7, :cond_40

    :try_start_3d
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_40
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_33

    :catch_49
    move-exception v4

    :goto_4a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    :catch_4e
    move-exception v2

    :goto_4f
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_62

    if-eqz v7, :cond_57

    :try_start_54
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_7b

    :cond_57
    :try_start_57
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_7d

    if-eqz v5, :cond_33

    :try_start_5c
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_33

    :catch_60
    move-exception v4

    goto :goto_4a

    :catchall_62
    move-exception v9

    :goto_63
    if-eqz v7, :cond_68

    :try_start_65
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_68
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_70

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_70} :catch_71

    :cond_70
    :goto_70
    throw v9

    :catch_71
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70

    :catch_76
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    :catch_7b
    move-exception v4

    goto :goto_4a

    :catch_7d
    move-exception v4

    goto :goto_4a

    :catchall_7f
    move-exception v9

    move-object v5, v6

    goto :goto_63

    :catch_82
    move-exception v2

    move-object v5, v6

    goto :goto_4f

    :catch_85
    move-exception v3

    move-object v5, v6

    goto :goto_38
.end method

.method public releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_2
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core before removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_12
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_28

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core after removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_28
    if-nez v1, :cond_40

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_35

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, request not found, returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_35} :catch_a3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_110

    :cond_35
    if-eqz v1, :cond_3f

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3e

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_3e
    :goto_3e
    const/4 v1, 0x0

    :cond_3f
    return-void

    :cond_40
    const/4 v4, 0x4

    if-ne p1, v4, :cond_ca

    :try_start_43
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_83

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_52

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_8d

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_78

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_83
    .catchall {:try_start_43 .. :try_end_83} :catchall_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_83} :catch_a3
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_83} :catch_110

    :cond_83
    :goto_83
    if-eqz v1, :cond_3f

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3e

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_3e

    :cond_8d
    :try_start_8d
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_98

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a2} :catch_110

    goto :goto_83

    :catch_a3
    move-exception v0

    :try_start_a4
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: FileNotFoundException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_a4 .. :try_end_bf} :catchall_14e

    if-eqz v1, :cond_3f

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3e

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_3e

    :cond_ca
    :try_start_ca
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_83

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_83

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_dd

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_137

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_103

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_10e
    .catchall {:try_start_ca .. :try_end_10e} :catchall_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_ca .. :try_end_10e} :catch_a3
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_10e} :catch_110

    goto/16 :goto_83

    :catch_110
    move-exception v0

    :try_start_111
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: IOException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12c
    .catchall {:try_start_111 .. :try_end_12c} :catchall_14e

    if-eqz v1, :cond_3f

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3e

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_3e

    :cond_137
    :try_start_137
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_142

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_142
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_14c
    .catchall {:try_start_137 .. :try_end_14c} :catchall_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_137 .. :try_end_14c} :catch_a3
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_14c} :catch_110

    goto/16 :goto_83

    :catchall_14e
    move-exception v4

    if-eqz v1, :cond_159

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_158

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_158
    const/4 v1, 0x0

    :cond_159
    throw v4
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7

    const-string v2, "jf"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz p2, :cond_1e

    const-string v2, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherDVFSLocks(Ljava/lang/String;)V

    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V

    :cond_1e
    if-eqz p2, :cond_2c

    const-string v2, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_30
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v3
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    :try_start_33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_13

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "Before Removing ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    :cond_13
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_29

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "After Removing ----------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    :cond_29
    if-nez v2, :cond_2c

    :goto_2b
    return-void

    :cond_2c
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_c9

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_b0

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v1

    if-eqz v1, :cond_b8

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_a9

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v7, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeAcquireDVFSLock(II)I

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    :cond_b0
    :goto_b0
    iget-object v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_2b

    :cond_b8
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_c3

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    invoke-static {v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeReleaseDVFSLock(I)I

    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_b0

    :cond_c9
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_b0

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_b0

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v0

    if-eqz v0, :cond_100

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_f8

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v6, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeAcquireDVFSLock(II)I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_b0

    :cond_100
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_10b

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10b
    invoke-static {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeReleaseDVFSLock(I)I

    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_b0
.end method

.method public releaseGPU(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_14

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_14
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v6, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2b

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_2b
    if-nez v1, :cond_45

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_38

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_38} :catch_af
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_d6

    :cond_38
    if-eqz v1, :cond_43

    :try_start_3a
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_42

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_42
    const/4 v1, 0x0

    :cond_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_97

    :goto_44
    return-void

    :cond_45
    :try_start_45
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8a

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_54

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_9a

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7a

    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_8a
    .catchall {:try_start_45 .. :try_end_8a} :catchall_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_8a} :catch_af
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_8a} :catch_d6

    :cond_8a
    :goto_8a
    if-eqz v1, :cond_95

    :try_start_8c
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_94

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_94
    :goto_94
    const/4 v1, 0x0

    :cond_95
    monitor-exit v5

    goto :goto_44

    :catchall_97
    move-exception v4

    monitor-exit v5
    :try_end_99
    .catchall {:try_start_8c .. :try_end_99} :catchall_97

    throw v4

    :cond_9a
    :try_start_9a
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a5

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_ae
    .catchall {:try_start_9a .. :try_end_ae} :catchall_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_9a .. :try_end_ae} :catch_af
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_ae} :catch_d6

    goto :goto_8a

    :catch_af
    move-exception v0

    :try_start_b0
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: FileNotFoundException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_b0 .. :try_end_cb} :catchall_fd

    if-eqz v1, :cond_95

    :try_start_cd
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_94

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_97

    goto :goto_94

    :catch_d6
    move-exception v0

    :try_start_d7
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f2
    .catchall {:try_start_d7 .. :try_end_f2} :catchall_fd

    if-eqz v1, :cond_95

    :try_start_f4
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_94

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_94

    :catchall_fd
    move-exception v4

    if-eqz v1, :cond_109

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_108

    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_108
    const/4 v1, 0x0

    :cond_109
    throw v4
    :try_end_10a
    .catchall {:try_start_f4 .. :try_end_10a} :catchall_97
.end method

.method public releasePersistentDVFSLock(ILjava/lang/String;)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_78

    :try_start_7
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_55

    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callingId : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    :goto_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_75

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_55
    :try_start_55
    const-string v3, "CustomFrequencyManagerService"

    const-string v5, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock under-locked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_75
    move-exception v3

    monitor-exit v4
    :try_end_77
    .catchall {:try_start_55 .. :try_end_77} :catchall_75

    :try_start_77
    throw v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_7d
    :try_start_7d
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_75

    goto :goto_50
.end method

.method public releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_14

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_14
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2a

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_2a
    if-nez v1, :cond_44

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_37

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_152
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_37} :catch_ac
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_37} :catch_114

    :cond_37
    if-eqz v1, :cond_42

    :try_start_39
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_41

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_41
    const/4 v1, 0x0

    :cond_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_94

    :goto_43
    return-void

    :cond_44
    const/16 v4, 0xa

    if-ne p1, v4, :cond_d3

    :try_start_48
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_87

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_57

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_97

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7d

    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_87
    .catchall {:try_start_48 .. :try_end_87} :catchall_152
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_87} :catch_ac
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_87} :catch_114

    :cond_87
    :goto_87
    if-eqz v1, :cond_92

    :try_start_89
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_91

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_91
    :goto_91
    const/4 v1, 0x0

    :cond_92
    monitor-exit v5

    goto :goto_43

    :catchall_94
    move-exception v4

    monitor-exit v5
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_94

    throw v4

    :cond_97
    :try_start_97
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a2

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Min to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_ab
    .catchall {:try_start_97 .. :try_end_ab} :catchall_152
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_ab} :catch_ac
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ab} :catch_114

    goto :goto_87

    :catch_ac
    move-exception v0

    :try_start_ad
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c8
    .catchall {:try_start_ad .. :try_end_c8} :catchall_152

    if-eqz v1, :cond_92

    :try_start_ca
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_91

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_94

    goto :goto_91

    :cond_d3
    :try_start_d3
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_87

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e2

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_13c

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_108

    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_108
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_112
    .catchall {:try_start_d3 .. :try_end_112} :catchall_152
    .catch Ljava/io/FileNotFoundException; {:try_start_d3 .. :try_end_112} :catch_ac
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_112} :catch_114

    goto/16 :goto_87

    :catch_114
    move-exception v0

    :try_start_115
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_130
    .catchall {:try_start_115 .. :try_end_130} :catchall_152

    if-eqz v1, :cond_92

    :try_start_132
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_91

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_13a
    .catchall {:try_start_132 .. :try_end_13a} :catchall_94

    goto/16 :goto_91

    :cond_13c
    :try_start_13c
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_147

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Max to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_150
    .catchall {:try_start_13c .. :try_end_150} :catchall_152
    .catch Ljava/io/FileNotFoundException; {:try_start_13c .. :try_end_150} :catch_ac
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_150} :catch_114

    goto/16 :goto_87

    :catchall_152
    move-exception v4

    if-eqz v1, :cond_15e

    :try_start_155
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_15d

    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_15d
    const/4 v1, 0x0

    :cond_15e
    throw v4
    :try_end_15f
    .catchall {:try_start_155 .. :try_end_15f} :catchall_94
.end method

.method public requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4c

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Core # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    :try_start_4f
    invoke-static {p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkCPUCoreRange(I)Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_10b

    move-result v1

    if-eqz v1, :cond_14e

    :try_start_55
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_77

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    if-gez v9, :cond_da

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_93

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_93
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a8

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_a8
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_b3

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_10e

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_c2

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_d8

    :cond_c2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_cd

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_d8
    .catchall {:try_start_55 .. :try_end_d8} :catchall_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_d8} :catch_ee
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_d8} :catch_131

    :cond_d8
    :goto_d8
    :try_start_d8
    monitor-exit v10
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_10b

    return-void

    :cond_da
    :try_start_da
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_b3

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_da .. :try_end_ed} :catchall_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_da .. :try_end_ed} :catch_ee
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_ed} :catch_131

    goto :goto_b3

    :catch_ee
    move-exception v8

    :try_start_ef
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_d8

    :catchall_10b
    move-exception v1

    monitor-exit v10
    :try_end_10d
    .catchall {:try_start_ef .. :try_end_10d} :catchall_10b

    throw v1

    :cond_10e
    :try_start_10e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_11a

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_d8

    :cond_11a
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_125

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x9

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_130
    .catchall {:try_start_10e .. :try_end_130} :catchall_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_10e .. :try_end_130} :catch_ee
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_130} :catch_131

    goto :goto_d8

    :catch_131
    move-exception v8

    :try_start_132
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d8

    :cond_14e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CPUCore value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_156
    .catchall {:try_start_132 .. :try_end_156} :catchall_10b
.end method

.method public requestCPUUpdate(II)V
    .registers 15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "core "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CustomFrequencyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestCPUUpdate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_37
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_8f
    .catch Ljava/net/UnknownHostException; {:try_start_37 .. :try_end_3c} :catch_64
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_7b

    :try_start_3c
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_ac
    .catch Ljava/net/UnknownHostException; {:try_start_3c .. :try_end_55} :catch_b2
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_55} :catch_af

    if-eqz v7, :cond_5a

    :try_start_57
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_5a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v6, :cond_62

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_62} :catch_a3

    :cond_62
    :goto_62
    move-object v5, v6

    :cond_63
    :goto_63
    return-void

    :catch_64
    move-exception v3

    :goto_65
    :try_start_65
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_8f

    if-eqz v7, :cond_6d

    :try_start_6a
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_6d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_63

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_75} :catch_76

    goto :goto_63

    :catch_76
    move-exception v4

    :goto_77
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :catch_7b
    move-exception v2

    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_8f

    if-eqz v7, :cond_84

    :try_start_81
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_a8

    :cond_84
    :try_start_84
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_aa

    if-eqz v5, :cond_63

    :try_start_89
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_63

    :catch_8d
    move-exception v4

    goto :goto_77

    :catchall_8f
    move-exception v9

    :goto_90
    if-eqz v7, :cond_95

    :try_start_92
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_95
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_9d

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9d} :catch_9e

    :cond_9d
    :goto_9d
    throw v9

    :catch_9e
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    :catch_a3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    :catch_a8
    move-exception v4

    goto :goto_77

    :catch_aa
    move-exception v4

    goto :goto_77

    :catchall_ac
    move-exception v9

    move-object v5, v6

    goto :goto_90

    :catch_af
    move-exception v2

    move-object v5, v6

    goto :goto_7c

    :catch_b2
    move-exception v3

    move-object v5, v6

    goto :goto_65
.end method

.method public requestGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_eb

    move-result v1

    if-eqz v1, :cond_124

    :try_start_4b
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6e

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    if-gez v9, :cond_ba

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_8a
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_9f

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_9f
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_aa

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_ee

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_b8
    .catchall {:try_start_4b .. :try_end_b8} :catchall_eb
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_b8} :catch_ce
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_b8} :catch_107

    :cond_b8
    :goto_b8
    :try_start_b8
    monitor-exit v10
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_eb

    return-void

    :cond_ba
    :try_start_ba
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_aa

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_ba .. :try_end_cd} :catchall_eb
    .catch Ljava/io/FileNotFoundException; {:try_start_ba .. :try_end_cd} :catch_ce
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_cd} :catch_107

    goto :goto_aa

    :catch_ce
    move-exception v8

    :try_start_cf
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: FileNotFoundException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_b8

    :catchall_eb
    move-exception v1

    monitor-exit v10
    :try_end_ed
    .catchall {:try_start_cf .. :try_end_ed} :catchall_eb

    throw v1

    :cond_ee
    :try_start_ee
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-lt v1, v2, :cond_b8

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_106
    .catchall {:try_start_ee .. :try_end_106} :catchall_eb
    .catch Ljava/io/FileNotFoundException; {:try_start_ee .. :try_end_106} :catch_ce
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_106} :catch_107

    goto :goto_b8

    :catch_107
    move-exception v8

    :try_start_108
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b8

    :cond_124
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: GPU Frequency value is not in the permitted range. frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_108 .. :try_end_13c} :catchall_eb

    goto/16 :goto_b8
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v2, :cond_42

    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate, frequency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkFrameRateRange(I)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5b

    move-result v2

    if-eqz v2, :cond_53

    :try_start_4b
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v4, 0x7

    invoke-interface {v2, v4, p1}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_51} :catch_60
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_5e

    :goto_51
    :try_start_51
    monitor-exit v3

    return-void

    :cond_53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Frame rate value is not in the permitted range."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_5b
    move-exception v2

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_5b

    throw v2

    :catch_5e
    move-exception v2

    goto :goto_51

    :catch_60
    move-exception v2

    goto :goto_51
.end method

.method public requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12

    sget-boolean v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMCBurstPath:Z

    if-nez v5, :cond_c

    const-string v5, "CustomFrequencyManagerService"

    const-string v6, " Sysfs for MMC Burst Does Not Exists"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    sget-boolean v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_4e

    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestMMCBurstRate, burstRate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const/4 v1, 0x0

    :try_start_4f
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/block/mmcblk0/bkops_en"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_77

    const/16 v5, 0x80

    :try_start_58
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_70

    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "### requestMMCBurstRate : 128"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_70} :catch_b1

    :cond_70
    if-eqz v2, :cond_75

    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_a9

    :cond_75
    :goto_75
    move-object v1, v2

    goto :goto_b

    :catch_77
    move-exception v0

    :goto_78
    :try_start_78
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### requestMMCBurstRate : Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_9d

    if-eqz v1, :cond_b

    :try_start_92
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_97

    goto/16 :goto_b

    :catch_97
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :catchall_9d
    move-exception v5

    :goto_9e
    if-eqz v1, :cond_a3

    :try_start_a0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    :cond_a3
    :goto_a3
    throw v5

    :catch_a4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    :catchall_ae
    move-exception v5

    move-object v1, v2

    goto :goto_9e

    :catch_b1
    move-exception v0

    move-object v1, v2

    goto :goto_78
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .registers 11

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_1c

    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update the Nw paramter in the MPDecision command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-nez p1, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3f

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3f
    move-object v5, p1

    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    const/4 v4, 0x0

    :try_start_46
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "MPDECISION_SOCKET"

    invoke-direct {v3, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5f} :catch_6f

    if-eqz v4, :cond_64

    :try_start_61
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_a9

    :cond_64
    if-eqz v2, :cond_1e

    :try_start_66
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_1e

    :catch_6a
    move-exception v1

    :goto_6b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    :catch_6f
    move-exception v0

    :try_start_70
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_70 .. :try_end_8b} :catchall_98

    if-eqz v4, :cond_90

    :try_start_8d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_90
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_96

    goto :goto_1e

    :catch_96
    move-exception v1

    goto :goto_6b

    :catchall_98
    move-exception v6

    if-eqz v4, :cond_9e

    :try_start_9b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_9e
    if-eqz v2, :cond_a3

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a3} :catch_a4

    :cond_a3
    :goto_a3
    throw v6

    :catch_a4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    :catch_a9
    move-exception v1

    goto :goto_6b
.end method

.method public requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4c

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Frequency # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    :try_start_4f
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_10b

    move-result v1

    if-eqz v1, :cond_14d

    :try_start_55
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_77

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    if-gez v9, :cond_da

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_93

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_93
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a8

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_a8
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_b3

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    const/16 v1, 0xa

    if-ne p1, v1, :cond_10e

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_c3

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_d8

    :cond_c3
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_ce

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Min value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_d8
    .catchall {:try_start_55 .. :try_end_d8} :catchall_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_d8} :catch_ee
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_d8} :catch_130

    :cond_d8
    :goto_d8
    :try_start_d8
    monitor-exit v10
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_10b

    return-void

    :cond_da
    :try_start_da
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_b3

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_da .. :try_end_ed} :catchall_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_da .. :try_end_ed} :catch_ee
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_ed} :catch_130

    goto :goto_b3

    :catch_ee
    move-exception v8

    :try_start_ef
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_d8

    :catchall_10b
    move-exception v1

    monitor-exit v10
    :try_end_10d
    .catchall {:try_start_ef .. :try_end_10d} :catchall_10b

    throw v1

    :cond_10e
    :try_start_10e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_11a

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_d8

    :cond_11a
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_125

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Max value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x6

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_12f
    .catchall {:try_start_10e .. :try_end_12f} :catchall_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_10e .. :try_end_12f} :catch_ee
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_12f} :catch_130

    goto :goto_d8

    :catch_130
    move-exception v8

    :try_start_131
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d8

    :cond_14d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "requestSysBus value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_155
    .catchall {:try_start_131 .. :try_end_155} :catchall_10b
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;)V
    .registers 7

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_2b

    :goto_9
    :try_start_9
    monitor-exit v2

    return-void

    :catch_b
    move-exception v0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLCDFrameRate:: FileNotFoundException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9

    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw v1

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLCDFrameRate:: IOException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_28

    goto :goto_9
.end method

.method public restoreMMCBurstRate(Landroid/os/IBinder;)V
    .registers 8

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMCBurstPath:Z

    if-nez v3, :cond_c

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, " Sysfs for MMC Burst Does Not Exists"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_17

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "restoreMMCBurstRate"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/block/mmcblk0/bkops_en"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_3f

    const/4 v3, 0x0

    :try_start_20
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_38

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "### restoreMMCBurstRate : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_38} :catch_77

    :cond_38
    if-eqz v2, :cond_3d

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_6f

    :cond_3d
    :goto_3d
    move-object v1, v2

    goto :goto_b

    :catch_3f
    move-exception v0

    :goto_40
    :try_start_40
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### restoreMMCBurstRate : Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_63

    if-eqz v1, :cond_b

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_b

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catchall_63
    move-exception v3

    :goto_64
    if-eqz v1, :cond_69

    :try_start_66
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    :cond_69
    :goto_69
    throw v3

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    :catchall_74
    move-exception v3

    move-object v1, v2

    goto :goto_64

    :catch_77
    move-exception v0

    move-object v1, v2

    goto :goto_40
.end method
