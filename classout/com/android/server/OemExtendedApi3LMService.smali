.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field public static final ACTION_EMERGENCY_LOCK_ENABLED:Ljava/lang/String; = "android.action.emergencylockenabled"

.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "my_profile_enabled"

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final is3LMAllowed:Z


# instance fields
.field private binder:Lcom/samsung/felicaremotelock/IFelica;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field private mHapticFeedbackVibrationIntensity:I

.field private mLockScreenSettings:I

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOneSegState:I

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    new-instance v1, Lcom/android/server/OemExtendedApi3LMService$1;

    invoke-direct {v1, p0}, Lcom/android/server/OemExtendedApi3LMService$1;-><init>(Lcom/android/server/OemExtendedApi3LMService;)V

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "DeviceManager3LM"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IDeviceManager3LM;

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    new-instance v1, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-direct {v1, p1}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    iput v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mOneSegState:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/felicaremotelock/IFelica;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "OemExtendedApi3LM"

    const-string v2, "OemExtendedApi3LMService:  Bind to Felica Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/OemExtendedApi3LMService;Lcom/samsung/felicaremotelock/IFelica;)Lcom/samsung/felicaremotelock/IFelica;
    .registers 2

    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    return-object p1
.end method

.method private isAccessPermitted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public getFelicaState()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getInfraredState()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getOneSegState()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public setFelicaState(I)V
    .registers 2

    return-void
.end method

.method public setInfraredState(I)V
    .registers 2

    return-void
.end method

.method public setOneSegState(I)V
    .registers 2

    return-void
.end method
