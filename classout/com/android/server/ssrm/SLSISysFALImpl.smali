.class public Lcom/android/server/ssrm/SLSISysFALImpl;
.super Ljava/lang/Object;
.source "SLSISysFALImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;
    }
.end annotation


# static fields
.field private static final ADONIS_GPU_TABLE:[I = null

.field private static final APE_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ape_opp"

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static BUS_DEFAULT_FREQUENCY:I = 0x0

.field private static BUS_MAX_PATH:Ljava/lang/String; = null

.field private static BUS_MIN_PATH:Ljava/lang/String; = null

.field private static BUS_TABLE_PATH:Ljava/lang/String; = null

.field private static CPUS_ONLINE_MAX_LIMIT_1:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_2:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_3:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_4:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_MAX:I = 0x0

.field private static CPU_CORE_MAX_PATH:Ljava/lang/String; = null

.field private static CPU_CORE_MIN_PATH:Ljava/lang/String; = null

.field private static final CPU_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

.field private static final CPU_DEFAULT_CORE:I = 0x0

.field private static final DDR_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ddr_opp"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static GPU_DEFAULT_FREQUENCY:I = 0x0

.field private static GPU_MAX_PATH:Ljava/lang/String; = null

.field private static GPU_MIN_PATH:Ljava/lang/String; = null

.field private static final IS_AP_TYPE_DB8420:Z = true

.field private static final LCD_FRAME_RATE_DEFAULT:I = 0x1

.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"

.field private static final MSM8064_CORE_NUM_TABLE:[I = null

.field private static final OPP_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SysFALImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mDdrOppPath:Z

.field private static mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field private static mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field private static mPlatformInfo:Ljava/lang/String;

.field public static mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

.field public static mSysBusPath:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x7fb

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MAX_PATH:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mDdrOppPath:Z

    sput-boolean v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mApeOppPath:Z

    sput-boolean v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mSysBusPath:Z

    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformInfo:Ljava/lang/String;

    const-string v0, "msm8960"

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    :goto_3a
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_91

    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_min_lock"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MAX_PATH:Ljava/lang/String;

    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_DEFAULT_FREQUENCY:I

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    :goto_58
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    const/16 v0, 0x7fe

    sput v0, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    const/16 v0, 0x7fd

    sput v0, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    const/16 v0, 0x7fc

    sput v0, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    sput v4, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_4:I

    sput v4, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_MAX:I

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a6

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->MSM8064_CORE_NUM_TABLE:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_b2

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->ADONIS_GPU_TABLE:[I

    return-void

    :cond_7d
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    goto :goto_3a

    :cond_8c
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->NONE:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    goto :goto_3a

    :cond_91
    const-string v0, "/sys/power/gpu_lock"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MAX_PATH:Ljava/lang/String;

    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_DEFAULT_FREQUENCY:I

    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    goto :goto_58

    :array_a6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b2
    .array-data 0x4
        0x14t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquirePerfCoreMaxLock(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p0, v2, :cond_7

    const/4 v0, 0x4

    if-le p0, v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_1b

    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    :cond_1b
    packed-switch p0, :pswitch_data_6e

    goto :goto_7

    :pswitch_1f
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    :pswitch_39
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    :pswitch_53
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_53
        :pswitch_39
    .end packed-switch
.end method

.method private static acquirePerfCoreMinLock(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p0, v2, :cond_7

    const/4 v0, 0x4

    if-le p0, v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_1b

    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    :cond_1b
    packed-switch p0, :pswitch_data_6e

    goto :goto_7

    :pswitch_1f
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x702

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    :pswitch_39
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x704

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    :pswitch_53
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x703

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    nop

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_53
        :pswitch_39
    .end packed-switch
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private parseSystemBusTable()[I
    .registers 12

    const-string v7, "SysFALImpl"

    const-string v8, "parseSystemBusTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_9
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_5d

    move-object v0, v1

    :cond_1e
    if-nez v0, :cond_27

    if-eqz v0, :cond_25

    :try_start_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_c9

    :cond_25
    :goto_25
    move-object v6, v5

    :goto_26
    return-object v6

    :cond_27
    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    new-array v5, v7, [I

    const/4 v3, 0x0

    :goto_35
    array-length v7, v4

    if-ge v3, v7, :cond_e8

    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v3

    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_27 .. :try_end_5a} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5a} :catch_5d

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :catch_5d
    move-exception v2

    :try_start_5e
    sget-boolean v7, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v7, :cond_7e

    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_86

    :cond_7e
    const/4 v5, 0x0

    if-eqz v0, :cond_84

    :try_start_81
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_ab

    :cond_84
    :goto_84
    move-object v6, v5

    goto :goto_26

    :catchall_86
    move-exception v7

    if-eqz v0, :cond_8c

    :try_start_89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    :cond_8c
    :goto_8c
    throw v7

    :catch_8d
    move-exception v2

    const-string v8, "SysFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :catch_ab
    move-exception v2

    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_c5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :catch_c9
    move-exception v2

    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_e8
    if-eqz v0, :cond_84

    :try_start_ea
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_84

    :catch_ee
    move-exception v2

    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c5
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_36

    :cond_5
    :pswitch_5
    move v2, v3

    :cond_6
    :goto_6
    return v2

    :pswitch_7
    sget-object v4, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v4, v5, :cond_5

    goto :goto_6

    :pswitch_e
    const-string v2, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    :pswitch_15
    sget-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    :pswitch_1c
    sget-object v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v1

    sget-object v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    if-eqz v1, :cond_2c

    if-nez v0, :cond_6

    :cond_2c
    move v2, v3

    goto :goto_6

    :pswitch_2e
    const-string v2, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_15
        :pswitch_5
        :pswitch_1c
        :pswitch_5
        :pswitch_2e
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .registers 4

    packed-switch p1, :pswitch_data_22

    :cond_3
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->ADONIS_GPU_TABLE:[I

    goto :goto_4

    :pswitch_e
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->MSM8064_CORE_NUM_TABLE:[I

    goto :goto_4

    :pswitch_17
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/ssrm/SLSISysFALImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_4

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_12a

    :pswitch_6
    const/4 v4, 0x0

    move v5, v4

    :goto_8
    return v5

    :pswitch_9
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v6, v7, :cond_24

    invoke-static {p2}, Lcom/android/server/ssrm/SLSISysFALImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_8

    :pswitch_13
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v6, v7, :cond_24

    invoke-static {p2}, Lcom/android/server/ssrm/SLSISysFALImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_8

    :pswitch_1d
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_24
    :goto_24
    sget-boolean v5, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v5, :cond_4e

    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    if-eqz v1, :cond_69

    const/4 v2, 0x0

    :try_start_51
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_e3
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_9e

    :try_start_56
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_123
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_63} :catch_126

    const/4 v4, 0x1

    if-eqz v3, :cond_69

    :try_start_66
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_108

    :cond_69
    :goto_69
    move v5, v4

    goto :goto_8

    :pswitch_6b
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :pswitch_73
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :pswitch_7b
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :pswitch_83
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x28

    if-eq p2, v5, :cond_96

    const/16 v5, 0x33

    if-eq p2, v5, :cond_96

    const/16 v5, 0x32

    if-ne p2, v5, :cond_98

    :cond_96
    const/4 p2, 0x1

    goto :goto_24

    :cond_98
    const/16 v5, 0x3c

    if-ne p2, v5, :cond_24

    const/4 p2, 0x0

    goto :goto_24

    :catch_9e
    move-exception v0

    :goto_9f
    :try_start_9f
    sget-boolean v5, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v5, :cond_bf

    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_9f .. :try_end_bf} :catchall_e3

    :cond_bf
    if-eqz v2, :cond_69

    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_69

    :catch_c5
    move-exception v0

    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_df
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :catchall_e3
    move-exception v5

    :goto_e4
    if-eqz v2, :cond_e9

    :try_start_e6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    :cond_e9
    :goto_e9
    throw v5

    :catch_ea
    move-exception v0

    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    :catch_108
    move-exception v0

    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_df

    :catchall_123
    move-exception v5

    move-object v2, v3

    goto :goto_e4

    :catch_126
    move-exception v0

    move-object v2, v3

    goto/16 :goto_9f

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_6
        :pswitch_6b
        :pswitch_6
        :pswitch_73
        :pswitch_7b
        :pswitch_83
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    packed-switch p1, :pswitch_data_132

    :pswitch_8
    const/4 v5, 0x0

    move v6, v5

    :goto_a
    return v6

    :pswitch_b
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v7, v8, :cond_37

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_37

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    sput-object v9, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_a

    :pswitch_1d
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v7, v8, :cond_37

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_37

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    sput-object v9, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_a

    :pswitch_2f
    new-instance v1, Ljava/io/File;

    const-string v6, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_37
    :goto_37
    sget-boolean v6, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v6, :cond_61

    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", revertValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    if-eqz v1, :cond_7c

    const/4 v2, 0x0

    :try_start_64
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_ea
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_a5

    :try_start_69
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_12a
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_76} :catch_12d

    const/4 v5, 0x1

    if-eqz v3, :cond_7c

    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_10f

    :cond_7c
    :goto_7c
    move v6, v5

    goto :goto_a

    :pswitch_7e
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_DEFAULT_FREQUENCY:I

    goto :goto_37

    :pswitch_88
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    goto :goto_37

    :pswitch_92
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    goto :goto_37

    :pswitch_9c
    new-instance v1, Ljava/io/File;

    const-string v6, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_37

    :catch_a5
    move-exception v0

    :goto_a6
    :try_start_a6
    sget-boolean v6, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v6, :cond_c6

    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_a6 .. :try_end_c6} :catchall_ea

    :cond_c6
    if-eqz v2, :cond_7c

    :try_start_c8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_7c

    :catch_cc
    move-exception v0

    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_e6
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :catchall_ea
    move-exception v6

    :goto_eb
    if-eqz v2, :cond_f0

    :try_start_ed
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1

    :cond_f0
    :goto_f0
    throw v6

    :catch_f1
    move-exception v0

    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    :catch_10f
    move-exception v0

    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_e6

    :catchall_12a
    move-exception v6

    move-object v2, v3

    goto :goto_eb

    :catch_12d
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a6

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_8
        :pswitch_7e
        :pswitch_8
        :pswitch_88
        :pswitch_92
        :pswitch_9c
        :pswitch_b
        :pswitch_1d
    .end packed-switch
.end method
