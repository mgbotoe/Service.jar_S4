.class public Lcom/android/server/ssrm/TurboModeOnOff;
.super Lcom/android/server/ssrm/FgAppListener;
.source "TurboModeOnOff.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsForeground:Z

.field private mLastTurboMode:Z

.field private mListScrollBoost:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "TurboModeOnOff"

    sput-object v0, Lcom/android/server/ssrm/TurboModeOnOff;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mLastTurboMode:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mIsForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mListScrollBoost:Z

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TurboModeOnOff;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TurboModeOnOff;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.samsung.everglades.video"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TurboModeOnOff;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method private calculateCurrentMode()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mIsForeground:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mListScrollBoost:Z

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private updateTurboMode()V
    .registers 5

    const-string v1, "jf"

    const-string v2, "jf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/server/ssrm/TurboModeOnOff;->calculateCurrentMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mLastTurboMode:Z

    if-eq v1, v0, :cond_a

    iput-boolean v0, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mLastTurboMode:Z

    if-eqz v0, :cond_20

    sget-object v1, Lcom/android/server/ssrm/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    :cond_20
    sget-object v1, Lcom/android/server/ssrm/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a
.end method


# virtual methods
.method protected onFgAppInPackageList(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/TurboModeOnOff;->updateTurboMode()V

    return-void
.end method

.method public declared-synchronized onListScrollBoost(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mListScrollBoost:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/TurboModeOnOff;->updateTurboMode()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
