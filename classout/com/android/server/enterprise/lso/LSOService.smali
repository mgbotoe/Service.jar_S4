.class public Lcom/android/server/enterprise/lso/LSOService;
.super Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mItemData:[Landroid/app/enterprise/lso/LSOItemData;

.field private mOverlayAdminUid:I

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    :cond_2e
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_70

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    :goto_5a
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/app/enterprise/lso/LSOItemData;

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v0, 0x1

    :goto_60
    const/4 v2, 0x3

    if-gt v0, v2, :cond_79

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_70
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_5a

    :cond_79
    return-void
.end method

.method private declared-synchronized deleteFiles(I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4e

    move-result-wide v1

    if-eqz p1, :cond_27

    :try_start_7
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_51

    :cond_22
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_4e

    :goto_25
    monitor-exit p0

    return-void

    :cond_27
    const/4 v0, 0x1

    :goto_28
    const/4 v3, 0x3

    if-gt v0, v3, :cond_22

    :try_start_2b
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_46} :catch_51

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :catchall_49
    move-exception v3

    :try_start_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_51
    move-exception v3

    :try_start_52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4e

    goto :goto_25
.end method

.method private deleteWallpaperFiles()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private enforcePermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .registers 1

    const-string v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotfication()V
    .registers 4

    const-string v1, "LSO"

    const-string v2, "sendConfigChangeNotfication:"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public canConfigure(I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, -0x1

    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_21
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission()I

    move-result v4

    const/4 p1, -0x1

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v5, v8, :cond_30

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v5, v4, :cond_32

    :cond_30
    add-int/lit8 v0, v0, 0x1

    :cond_32
    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v5, v8, :cond_3c

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3a} :catch_66

    if-ne v5, v4, :cond_3e

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    :cond_3e
    :goto_3e
    if-lez v2, :cond_80

    if-ne v2, v0, :cond_80

    const/4 v3, 0x1

    :goto_43
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_66
    move-exception v1

    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled exception in canConfigure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_80
    const/4 v3, 0x0

    goto :goto_43
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v1, "%s_%s%s_%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/enterprise/lso/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z
    .registers 11

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    const-string v5, "LSO"

    const-string v6, "copyFiles()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/lso/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_3d

    move-result-wide v2

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    const-string v5, "/data/system/enterprise"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_76

    move-result v5

    if-nez v5, :cond_31

    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    :goto_2f
    monitor-exit p0

    return v4

    :cond_31
    :try_start_31
    const-string v5, "/data/system/enterprise/lso"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_76

    move-result v5

    if-nez v5, :cond_40

    :try_start_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_2f

    :catchall_3d
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_40
    :try_start_40
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_76

    move-result v5

    if-nez v5, :cond_4a

    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3d

    goto :goto_2f

    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_65} :catch_76

    move-result v1

    const/4 v1, 0x1

    :try_start_67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6a
    if-nez v1, :cond_6f

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    :cond_6f
    move v4, v1

    goto :goto_2f

    :catchall_71
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_76
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_3d

    goto :goto_6a
.end method

.method public declared-synchronized copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    .registers 17

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 v8, 0x1

    :cond_4
    :goto_4
    monitor-exit p0

    return v8

    :cond_6
    :try_start_6
    const-string v10, "LSO"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFiles() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_af

    move-result-object v2

    const/4 v8, 0x1

    :try_start_24
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v9

    packed-switch v9, :pswitch_data_b2

    :cond_2b
    :goto_2b
    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v10, "android:src"

    invoke-virtual {v1, v10}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "android:src"

    invoke-virtual {v1, v10}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a8

    const/4 v8, 0x0

    goto :goto_4

    :pswitch_4f
    move-object v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemContainer;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6e

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6b

    const/4 v8, 0x0

    goto :goto_2b

    :cond_6b
    invoke-virtual {v6, v5}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    :cond_6e
    const/4 v4, 0x0

    :goto_6f
    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v10

    if-ge v4, v10, :cond_2b

    if-eqz v8, :cond_2b

    invoke-virtual {v6, v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v10

    add-int/lit8 v11, p3, 0x1

    invoke-virtual {p0, v10, p2, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z

    move-result v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :pswitch_84
    move-object v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemImage;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2b

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a0

    const/4 v8, 0x0

    goto :goto_2b

    :cond_a0
    invoke-virtual {v7, v5}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    goto :goto_2b

    :catch_a4
    move-exception v3

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_a8
    const-string v10, "android:src"

    invoke-virtual {p1, v10, v5}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_24 .. :try_end_ad} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ad} :catch_a4

    goto/16 :goto_4

    :catchall_af
    move-exception v10

    monitor-exit p0

    throw v10

    :pswitch_data_b2
    .packed-switch 0x3
        :pswitch_84
        :pswitch_4f
    .end packed-switch
.end method

.method public getData(I)Landroid/app/enterprise/lso/LSOItemData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LSO"

    const-string v1, "getData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    const/4 v0, 0x3

    if-le p1, v0, :cond_15

    :cond_d
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPreferences()Landroid/app/enterprise/lso/LSOAttributeSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConfigured("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2d

    :cond_26
    :goto_26
    if-eqz p1, :cond_36

    :cond_28
    :goto_28
    if-nez p1, :cond_41

    if-lez v2, :cond_3f

    :goto_2c
    return v1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v4, v7, :cond_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_36
    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v4, v7, :cond_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3f
    move v1, v3

    goto :goto_2c

    :cond_41
    if-lez v0, :cond_46

    if-ne v0, v2, :cond_46

    :goto_45
    goto :goto_2c

    :cond_46
    move v1, v3

    goto :goto_45
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
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne p1, v1, :cond_1e

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    const/4 v0, 0x1

    :goto_14
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1e
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v1, :cond_2c

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    :cond_2c
    return-void
.end method

.method public resetData(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission()I

    move-result v2

    if-ltz p1, :cond_29

    if-le p1, v7, :cond_31

    :cond_29
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "Invalid layer. Layer must be 0...3"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_31
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(I)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "LSO"

    const-string v4, "Not allowed to reset Overlay"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v2, v3, :cond_62

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5b

    iput-object v6, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    :cond_5b
    if-eqz p1, :cond_68

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v6, v3, p1

    :cond_61
    const/4 v1, 0x1

    :cond_62
    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    goto :goto_3f

    :cond_68
    const/4 v0, 0x1

    :goto_69
    if-gt v0, v7, :cond_61

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_69
.end method

.method public resetWallpaper()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "LSO"

    const-string v3, "resetWallpaper()"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(I)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "LSO"

    const-string v3, "Not allowed to reset Wallpaper"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v1, v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    const/4 v0, 0x1

    :cond_2b
    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    goto :goto_1a
.end method

.method public declared-synchronized setData(Landroid/app/enterprise/lso/LSOItemData;I)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x4

    monitor-enter p0

    :try_start_4
    const-string v0, "LSO"

    const-string v1, "setData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission()I

    move-result v7

    if-lt p2, v2, :cond_14

    const/4 v0, 0x3

    if-le p2, v0, :cond_1f

    :cond_14
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    const/4 v0, 0x1

    :try_start_20
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(I)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "LSO"

    const-string v1, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_1c

    move v0, v8

    :goto_2e
    monitor-exit p0

    return v0

    :cond_30
    :try_start_30
    invoke-virtual {p0, v7, p1, p2}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v9

    goto :goto_2e

    :cond_38
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v1, v7

    iget-object v5, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v6

    if-nez v6, :cond_5e

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v0, v8, :cond_59

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    :cond_59
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    move v0, v9

    goto :goto_2e

    :cond_5e
    iput v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object p1, v0, p2

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V
    :try_end_67
    .catchall {:try_start_30 .. :try_end_67} :catchall_1c

    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public setPreferences(Landroid/app/enterprise/lso/LSOAttributeSet;)I
    .registers 7

    const/4 v3, -0x1

    const/4 v2, -0x6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission()I

    move-result v1

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v4, v3, :cond_c

    :cond_b
    :goto_b
    return v2

    :cond_c
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v4, v1, :cond_19

    const-string v2, "LSO"

    const-string v4, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_b

    :cond_19
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_b

    :cond_27
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_31

    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    :cond_31
    if-eqz v0, :cond_35

    const/4 v2, 0x0

    goto :goto_b

    :cond_35
    const/4 v2, -0x4

    goto :goto_b
.end method

.method public setWallpaper(Ljava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v7, -0x4

    const-string v8, "LSO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWallpaper("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission()I

    move-result v5

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(I)Z

    move-result v8

    if-nez v8, :cond_33

    const-string v7, "LSO"

    const-string v8, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return v6

    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v0, 0x0

    :try_start_38
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_51

    const-string v8, "LSO"

    const-string v9, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4c} :catch_9b

    const/4 v6, -0x3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32

    :cond_51
    :try_start_51
    const-string v8, "/data/system/enterprise"

    invoke-static {v8}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_9b

    move-result v8

    if-nez v8, :cond_5e

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto :goto_32

    :cond_5e
    :try_start_5e
    const-string v8, "/data/system/enterprise/lso"

    invoke-static {v8}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_9b

    move-result v8

    if-nez v8, :cond_6b

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto :goto_32

    :cond_6b
    :try_start_6b
    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iget-object v10, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-static {p1, v8, v9, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string v8, "LSO"

    const-string v9, "Create Ripple image"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v10, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v8, v9, v10}, Landroid/app/enterprise/lso/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    :try_end_8c
    .catchall {:try_start_6b .. :try_end_8c} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8c} :catch_9b

    move-result v0

    :cond_8d
    :goto_8d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_a3

    const-string v6, "LSO"

    const-string v8, "Error in copying file"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_32

    :catch_9b
    move-exception v1

    const/4 v0, 0x0

    goto :goto_8d

    :catchall_9e
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_a3
    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v9, v5

    invoke-virtual {v8, v9, v10, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b3

    iput v6, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    move v6, v7

    goto :goto_32

    :cond_b3
    iput v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    const/4 v6, 0x0

    goto/16 :goto_32
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
