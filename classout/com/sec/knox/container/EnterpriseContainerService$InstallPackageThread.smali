.class Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;
.super Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallPackageThread"
.end annotation


# instance fields
.field private mApkFilePath:Ljava/lang/String;

.field private mInstallSource:I

.field private mInstallType:I

.field private mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)V
    .registers 8

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V

    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    iput p6, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallType:I

    iput p7, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallSource:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const/4 v14, 0x1

    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InstallPackageThread run(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v8, -0x6e

    :try_start_20
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5400(Lcom/sec/knox/container/EnterpriseContainerService;)V

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_7e

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_7e

    new-instance v10, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EnterpriseContainerService: Not a valid file \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_55
    .catchall {:try_start_20 .. :try_end_55} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_55} :catch_55

    :catch_55
    move-exception v1

    :try_start_56
    const-string v10, "EnterpriseContainerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_c7

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    :goto_61
    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;)V

    :try_start_64
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v10, :cond_18a

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v10, "packageName"

    iget-object v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v8, v14, :cond_145

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v11, 0x3ee

    invoke-interface {v10, v11, v7}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7d} :catch_17e

    :goto_7d
    return-void

    :cond_7e
    const/4 v4, 0x0

    :try_start_7f
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sec/knox/container/signapk/SignApk;

    invoke-direct {v3}, Lcom/sec/knox/container/signapk/SignApk;-><init>()V

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/signapk/SignApk;->getSignatures(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_ce

    new-instance v10, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EnterpriseContainerServiceApk is not signed \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_c7
    .catchall {:try_start_7f .. :try_end_c7} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_c7} :catch_55

    :catchall_c7
    move-exception v10

    iget-object v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v11}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v10

    :cond_ce
    :try_start_ce
    iget v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallType:I
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d0} :catch_55

    packed-switch v10, :pswitch_data_194

    :cond_d3
    :goto_d3
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    goto :goto_61

    :pswitch_d6
    :try_start_d6
    const-string v10, "EnterpriseContainerService"

    const-string v11, "Apk install process has started....."

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    new-instance v6, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-direct {v6, v10, v11}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v6, v2, v12}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    monitor-enter v6
    :try_end_fb
    .catchall {:try_start_d6 .. :try_end_fb} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_fb} :catch_55

    :goto_fb
    :try_start_fb
    iget-boolean v10, v6, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z
    :try_end_fd
    .catchall {:try_start_fb .. :try_end_fd} :catchall_108

    if-nez v10, :cond_10b

    :try_start_ff
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_108
    .catch Ljava/lang/InterruptedException; {:try_start_ff .. :try_end_102} :catch_103

    goto :goto_fb

    :catch_103
    move-exception v1

    :try_start_104
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_fb

    :catchall_108
    move-exception v10

    monitor-exit v6
    :try_end_10a
    .catchall {:try_start_104 .. :try_end_10a} :catchall_108

    :try_start_10a
    throw v10
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10b} :catch_55

    :cond_10b
    :try_start_10b
    iget v8, v6, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    monitor-exit v6
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_108

    if-ne v8, v14, :cond_d3

    :try_start_110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v10, "containerid"

    iget v11, v6, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "package_install_name"

    iget-object v11, v6, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "package_install_uid"

    iget v11, v6, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "package_install_source"

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallSource:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "package_original_signature"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_144
    .catchall {:try_start_110 .. :try_end_144} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_144} :catch_55

    goto :goto_d3

    :cond_145
    :try_start_145
    const-string v10, "pmerrorcode"

    invoke-virtual {v7, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v11, 0x3ef

    invoke-interface {v10, v11, v7}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    const-string v10, "EnterpriseContainerService"

    const-string v11, "Callback Object updateStatus invoked"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " INSTALL FAILED. ErrorCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_17c} :catch_17e

    goto/16 :goto_7d

    :catch_17e
    move-exception v1

    const-string v10, "EnterpriseContainerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    :cond_18a
    :try_start_18a
    const-string v10, "EnterpriseContainerService"

    const-string v11, "Call Back not found for install package"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_191} :catch_17e

    goto/16 :goto_7d

    nop

    :pswitch_data_194
    .packed-switch 0x1f5
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
    .end packed-switch
.end method
