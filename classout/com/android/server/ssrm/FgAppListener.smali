.class public abstract Lcom/android/server/ssrm/FgAppListener;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# static fields
.field private static final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String; = "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

#the value of this static final field might be set in the static constructor
.field protected static final DEBUG:Z = false

.field private static final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String; = "com.sec.android.extra.MULTIWINDOW_RUNNING"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/FgAppListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootComplete:Z

.field private mContext:Landroid/content/Context;

.field private mForegroundPackageName:Ljava/lang/String;

.field private mIsFgAppInPackageList:Z

.field private mMultiWindowOn:Z

.field private mPackagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/FgAppListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/FgAppListener;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    iput-object v1, p0, Lcom/android/server/ssrm/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/FgAppListener;->mBootComplete:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    return-void
.end method

.method protected static fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_33

    :cond_32
    :goto_32
    return-void

    :cond_33
    :try_start_33
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3d} :catch_4f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_6b

    :try_start_3d
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4d} :catch_a6

    move-object v3, v4

    goto :goto_32

    :catch_4f
    move-exception v0

    :try_start_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_6a} :catch_6b

    goto :goto_32

    :catch_6b
    move-exception v0

    :goto_6c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_86
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_32

    :catch_8a
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_a6
    move-exception v0

    move-object v3, v4

    goto :goto_6c
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/FgAppListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v1, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    monitor-enter v1

    :try_start_b
    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_26

    :cond_1d
    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/FgAppListener;

    return-object v0

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/FgAppListener;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method protected static writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_20

    :try_start_6
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_2d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_30

    if-eqz v1, :cond_17

    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_2b

    :cond_17
    :goto_17
    move-object v0, v1

    :cond_18
    :goto_18
    return-void

    :catchall_19
    move-exception v2

    :goto_1a
    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_29

    :cond_1f
    :goto_1f
    throw v2

    :catch_20
    move-exception v2

    :goto_21
    if-eqz v0, :cond_18

    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_18

    :catch_27
    move-exception v2

    goto :goto_18

    :catch_29
    move-exception v3

    goto :goto_1f

    :catch_2b
    move-exception v2

    goto :goto_17

    :catchall_2d
    move-exception v2

    move-object v0, v1

    goto :goto_1a

    :catch_30
    move-exception v2

    move-object v0, v1

    goto :goto_21
.end method


# virtual methods
.method protected addPackage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected clearPackages()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    return-void
.end method

.method protected getForegroundPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected isBootComplete()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/FgAppListener;->mBootComplete:Z

    return v0
.end method

.method protected isMultiWindowActivated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    return v0
.end method

.method protected isPackageExist(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onBootComplete()V
    .registers 1

    return-void
.end method

.method protected onFgAppChanged()V
    .registers 1

    return-void
.end method

.method protected abstract onFgAppInPackageList(Z)V
.end method

.method protected onLockScreenRelease()V
    .registers 1

    return-void
.end method

.method protected onMultiWindowStatusChanged(Z)V
    .registers 2

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput-object p1, p0, Lcom/android/server/ssrm/FgAppListener;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string v6, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/FgAppListener;->onMultiWindowStatusChanged(Z)V

    goto :goto_5

    :cond_22
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mBootComplete:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onBootComplete()V

    goto :goto_5

    :cond_31
    const-string v6, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    const-string v6, "PACKAGE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "PROCESS_STATE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "FOREGROUND"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iput-object v2, p0, Lcom/android/server/ssrm/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onFgAppChanged()V

    iget-object v6, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v6, v1, :cond_5

    iput-boolean v1, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/FgAppListener;->onFgAppInPackageList(Z)V

    goto :goto_5

    :cond_64
    const-string v6, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const-string v6, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "PackageName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/ssrm/FgAppListener;->onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_5

    :cond_82
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onLockScreenRelease()V

    goto/16 :goto_5

    :cond_8f
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onScreenOff()V

    goto/16 :goto_5
.end method

.method protected onScreenOff()V
    .registers 1

    return-void
.end method

.method protected onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    return-void
.end method
