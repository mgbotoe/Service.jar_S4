.class public Lcom/android/server/enterprise/seandroid/SEAndroidService;
.super Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;
.source "SEAndroidService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapps_context"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAndroidPolicy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private declared-synchronized adminLockPolicy(ZI)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v3, "SEAndroidPolicy"

    const-string v4, "adminLockPolicy_begin"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_50

    move-result v3

    if-eqz v3, :cond_2c

    :try_start_f
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Locking on Database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "SeAndroidPolicyLocked"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SE_ANDROID_TABLE"

    invoke-virtual {v3, p2, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_50
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_46

    move-result v2

    :cond_2c
    :goto_2c
    :try_start_2c
    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPolicy result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_50

    monitor-exit p0

    return v2

    :catch_46
    move-exception v1

    :try_start_47
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Exception on Database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    const/4 v2, 0x0

    goto :goto_2c

    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized allowChanges(I)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    const-string v4, "SEAndroidPolicy"

    const-string v5, "allowChanges_begin"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package Name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.sec.android.app.spota"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by SPOTA Agent"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked()Z

    move-result v2

    if-nez v2, :cond_50

    :cond_48
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_7c

    const/4 v1, 0x1

    :cond_50
    :goto_50
    monitor-exit p0

    return v1

    :cond_52
    :try_start_52
    const-string v4, "SEAndroidPolicy"

    const-string v5, "Requested by MDM Agent"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v5

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v4

    if-nez v4, :cond_78

    move v4, v2

    :goto_64
    or-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7a

    :goto_6c
    or-int/2addr v2, v4

    if-eqz v2, :cond_50

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_52 .. :try_end_76} :catchall_7c

    const/4 v1, 0x1

    goto :goto_50

    :cond_78
    move v4, v3

    goto :goto_64

    :cond_7a
    move v2, v3

    goto :goto_6c

    :catchall_7c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized broadcastStateChanged(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v1, "SEAndroidPolicy"

    const-string v2, "broadcastStateChanged_begin"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SEAndroidPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.seandroid.policy.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mdm.intent.extra.seandroid.state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .registers 11

    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFiles_begin"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz p2, :cond_20

    const/4 v1, 0x0

    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_39

    :try_start_17
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_64
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1a} :catch_6a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_67

    const/4 v4, 0x1

    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_5e

    :cond_20
    :goto_20
    return v4

    :catch_21
    move-exception v0

    :goto_22
    :try_start_22
    const-string v5, "SEAndroidPolicy"

    const-string v6, "File Not Found"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_4e

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    :catch_30
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    :goto_35
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catch_39
    move-exception v0

    :goto_3a
    :try_start_3a
    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFile failed "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4e

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    :try_start_44
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_20

    :catch_48
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    :catchall_4e
    move-exception v5

    :goto_4f
    if-eqz v1, :cond_54

    :try_start_51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    throw v5

    :catch_55
    move-exception v0

    const-string v6, "SEAndroidPolicy"

    const-string v7, "Error closing OutputStream"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :catch_5e
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    :catchall_64
    move-exception v5

    move-object v1, v2

    goto :goto_4f

    :catch_67
    move-exception v0

    move-object v1, v2

    goto :goto_3a

    :catch_6a
    move-exception v0

    move-object v1, v2

    goto :goto_22
.end method

.method private enforceSeAndroidPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private declared-synchronized isAdminLocked()Z
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v5, "SEAndroidPolicy"

    const-string v6, "isAdminLocked_begin = all"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "SeAndroidPolicyLocked"

    aput-object v6, v0, v5

    iget-object v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SE_ANDROID_TABLE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v5, "SeAndroidPolicyLocked"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "SEAndroidPolicy"

    const-string v6, "At Least one Admin is locked"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_47

    const/4 v4, 0x1

    :cond_45
    monitor-exit p0

    return v4

    :catchall_47
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized isAdminLocked(I)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked_begin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_64

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1b
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "SeAndroidPolicyLocked"

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SE_ANDROID_TABLE"

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v4, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_5a

    move-result v4

    if-eqz v4, :cond_58

    const/4 v3, 0x1

    :goto_3e
    :try_start_3e
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_64

    monitor-exit p0

    return v3

    :cond_58
    const/4 v3, 0x0

    goto :goto_3e

    :catch_5a
    move-exception v1

    :try_start_5b
    const-string v4, "SEAndroidPolicy"

    const-string v5, "isAdminLocked = exception"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64

    const/4 v3, 0x0

    goto :goto_3e

    :catchall_64
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeFiles()Z
    .registers 13

    const-string v9, "SEAndroidPolicy"

    const-string v10, "removeFiles_begin"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :try_start_8
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Lets start the loop"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    array-length v7, v1

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v7, :cond_34

    aget-object v5, v1, v6

    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_4e

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_34
    const/4 v8, 0x1

    :goto_35
    const-string v9, "SEAndroidPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeFiles result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_4e
    move-exception v2

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Exception.removeFiles"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_35
.end method

.method private declared-synchronized searchAgent()I
    .registers 13

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    const-string v9, "SEAndroidPolicy"

    const-string v10, "searchAgent_begin"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "SeAndroidPolicyLocked"

    aput-object v10, v0, v9

    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SE_ANDROID_TABLE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_d7

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Start the Search"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Searching for the Agent"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SEAndroidPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Agent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "adminUid"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SEAndroidPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Agent Locked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const-string v8, "SEAndroidPolicy"

    const-string v9, "Agent found"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "adminUid"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v8, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "SEAndroidPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "com.sec.android.app.spota"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    const-string v7, "SEAndroidPolicy"

    const-string v8, "searchAgent = SPOTA_AGENT"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_4 .. :try_end_cc} :catchall_e0

    :goto_cc
    monitor-exit p0

    return v6

    :cond_ce
    :try_start_ce
    const-string v6, "SEAndroidPolicy"

    const-string v8, "searchAgent = MDM_AGENT"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_cc

    :cond_d7
    const-string v6, "SEAndroidPolicy"

    const-string v7, "searchAgent = NONE"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_ce .. :try_end_de} :catchall_e0

    move v6, v8

    goto :goto_cc

    :catchall_e0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public amsGetEnforce()Z
    .registers 5

    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsGetEnforce_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "persist.security.ams.enforce"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public amsSetEnforce(Z)I
    .registers 7

    const-string v3, "SEAndroidPolicy"

    const-string v4, "amsSetEnforce_begin"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz p1, :cond_25

    const-string v2, "1"

    :goto_17
    const-string v3, "persist.security.ams.enforce"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_24
    return v0

    :cond_25
    const-string v2, "0"

    goto :goto_17

    :cond_28
    const/4 v0, -0x2

    goto :goto_24
.end method

.method public amsSetLogLevel(I)I
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsSetLogLevel_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_5a

    packed-switch p1, :pswitch_data_5c

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Flag with a wrong value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    :goto_22
    return v0

    :pswitch_23
    const-string v2, "persist.security.ams.verbose"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    :pswitch_35
    const-string v2, "persist.security.ams.verbose"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    :pswitch_47
    const-string v2, "persist.security.ams.verbose"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    :cond_5a
    const/4 v0, -0x2

    goto :goto_22

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_35
        :pswitch_47
    .end packed-switch
.end method

.method public getSEAndroidAgent()I
    .registers 3

    const-string v0, "SEAndroidPolicy"

    const-string v1, "getSEAndroidAgent_begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v0

    return v0
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
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "SEAndroidPolicy"

    const-string v1, "Admin is quiting"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :cond_17
    return-void
.end method

.method public revokeSELinuxPolicy()I
    .registers 6

    const/4 v4, 0x0

    const-string v2, "SEAndroidPolicy"

    const-string v3, "revokeSELinuxPolicy_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Lets remove the Files"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v0, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :cond_27
    :goto_27
    return v0

    :cond_28
    const/4 v0, -0x2

    goto :goto_27
.end method

.method public setFileContexts([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setFileContexts_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "file_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setPropertyContexts([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setPropertyContexts_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "property_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setSEAppContexts([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSEAppContexts_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "seapps_context"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setSELinuxEnforcing()Z
    .registers 6

    const/4 v4, 0x1

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSELinuxEnforcing_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v4}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    move-result v0

    :cond_1d
    return v0
.end method

.method public setSELinuxPolicy([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSELinuxPolicy_begin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "sepolicy"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
