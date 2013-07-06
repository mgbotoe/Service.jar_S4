.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DIGEST_TYPE:Ljava/lang/String; = "SHA-256"

.field private static final PARTITION_TO_SCAN:Ljava/lang/String; = "/system"

.field private static TAG:Ljava/lang/String;

.field private static mFilesCount:I

.field private static mProgress:I


# instance fields
.field private ISL_BIND_ACTION:Ljava/lang/String;

.field cISAConnect:Landroid/content/ServiceConnection;

.field private mAdminUid:I

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

.field private mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

.field private mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;


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
    sput-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    const-string v0, "EnterpriseISLPolicy Service"

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    sput v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.ISA_BIND_ACTION"

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->ISL_BIND_ACTION:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->cISAConnect:Landroid/content/ServiceConnection;

    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object p1
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1

    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return p0
.end method

.method static synthetic access$404()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1

    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    return v0
.end method

.method private enforceEnterpriseISLPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearBaseline()Z
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in clearBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->clearBaseline()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "clearBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public establishBaselineScan(Z)Z
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in establishBaselineScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->establishBaselineScan(Z)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "establishBaselineScan - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public isISAReady()Z
    .registers 3

    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in isISAReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public performPreBaselineScan()Z
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in performPreBaselineScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performPreBaselineScan()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "performPreBaselineScan - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public performScanNow(ILjava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "in performScanNow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    sput v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    const/4 v2, -0x1

    sput v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v2, :cond_38

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performScanNow(ILjava/util/List;)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_2d

    move-result v1

    :cond_21
    :goto_21
    return v1

    :catch_22
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catch_2d
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_38
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "performScanNow - ISA interface is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public putPackageToBaseline(Ljava/lang/String;)Z
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in putPackageToBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "putPackageToBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public removePackageFromBaseline(Ljava/lang/String;)Z
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in removePackageFromBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "removePackageFromBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public requestBindISA(Ljava/lang/String;)Z
    .registers 14

    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_1c

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "in requestBindISA - packageName is -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->ISL_BIND_ACTION:Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_f6

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_84

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestBindISA - Package  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestBindISA - Service  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c

    new-instance v2, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e9

    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_d7

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Comp Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Comp Class -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->cISAConnect:Landroid/content/ServiceConnection;

    const/4 v11, 0x1

    invoke-virtual {v9, v0, v10, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v6, 0x1

    :cond_e8
    :goto_e8
    return v6

    :cond_e9
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_3c

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "requestBindISA - ComponentName is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    :cond_f6
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_e8

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "requestBindISA - No package found with ISL intent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8
.end method

.method public setISLCallBack()V
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in setISLCallBack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_3b

    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    new-instance v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    invoke-interface {v1, v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->setISLCallBack(Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_19} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_30

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catch_25
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catch_30
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_3b
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "setISLCallBack - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public setIntegrityResultSubscriber(Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in setIntegrityResultSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public updatePlatformBaseline()Z
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in updatePlatformBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->updatePlatformBaseline()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "updatePlatformBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
