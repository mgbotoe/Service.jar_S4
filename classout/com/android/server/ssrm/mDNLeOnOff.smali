.class public Lcom/android/server/ssrm/mDNLeOnOff;
.super Lcom/android/server/ssrm/FgAppListener;
.source "mDNLeOnOff.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static isLockScreenOn:Z

.field private static ismDNIeAppFg:Z

.field private static mPreviousmDNIeValue:I


# instance fields
.field private mResult:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string v0, "mDNLeOnOff"

    sput-object v0, Lcom/android/server/ssrm/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->DEBUG:Z

    sput-boolean v2, Lcom/android/server/ssrm/mDNLeOnOff;->ismDNIeAppFg:Z

    sput-boolean v2, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    sput v2, Lcom/android/server/ssrm/mDNLeOnOff;->mPreviousmDNIeValue:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/mDNLeOnOff;->mResult:Z

    const-string v0, "com.google.android.apps.books"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.sec.readershub"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method


# virtual methods
.method protected calculateCurrentmDNIe()I
    .registers 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/ssrm/mDNLeOnOff;->ismDNIeAppFg:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v0, 0x9

    goto :goto_9
.end method

.method protected onFgAppInPackageList(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/ssrm/mDNLeOnOff;->ismDNIeAppFg:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIe()V

    return-void
.end method

.method protected onLockScreenRelease()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIe()V

    return-void
.end method

.method protected onScreenOff()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIe()V

    return-void
.end method

.method protected updatemDNIe()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->calculateCurrentmDNIe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIeSysFs(I)V

    return-void
.end method

.method protected updatemDNIeSysFs(I)V
    .registers 6

    sget v1, Lcom/android/server/ssrm/mDNLeOnOff;->mPreviousmDNIeValue:I

    if-eq p1, v1, :cond_30

    :try_start_4
    invoke-static {p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/mDNLeOnOff;->mResult:Z

    sput p1, Lcom/android/server/ssrm/mDNLeOnOff;->mPreviousmDNIeValue:I

    sget-object v1, Lcom/android/server/ssrm/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setmDNLeUIMode => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/mDNLeOnOff;->mResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/IllegalAccessError; {:try_start_4 .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    sget-object v1, Lcom/android/server/ssrm/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "IllegalAccessError occured!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method
