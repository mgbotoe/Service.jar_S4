.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
.super Landroid/os/Handler;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerServiceHandler"
.end annotation


# static fields
.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED:I = 0x2

.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED:I = 0x4

.field public static final ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION:I = 0x6

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK:I = 0x9

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_CONTAINEROBJ:Ljava/lang/String; = "containerObj"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ERROR:Ljava/lang/String; = "errorCode"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PASSWORD:Ljava/lang/String; = "password"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PRIMARY:Ljava/lang/String; = "primary"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_RID:Ljava/lang/String; = "requestId"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATE:Ljava/lang/String; = "state"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER:I = 0x5

.field public static final ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT:I = 0xe

.field public static final ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE:I = 0x7

.field public static final ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT:I = 0x8

.field public static final ENTERPRISE_CONTAINER_LOCK_TIMEOUT:I = 0xf

.field public static final ENTERPRISE_CONTAINER_PACKAGE_INSTALLED:I = 0x1

.field public static final ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED:I = 0x3

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE:I = 0xb

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS:I = 0xd

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_SETUP_FAILURE:I = 0xa

.field public static final ENTERPRISE_CONTAINER_SETUP_SUCCESS:I = 0xc


# instance fields
.field private mParent:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V
    .registers 5

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    return-void
.end method


# virtual methods
.method public addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z
    .registers 26

    const/16 v18, 0x0

    if-nez p1, :cond_e6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p5

    move/from16 v1, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    invoke-static {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5200(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v2

    if-eqz v2, :cond_124

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    move-object/from16 v0, p5

    move/from16 v1, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    invoke-static {v2, v0, v1, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5300(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeUserCredentials(ILjava/lang/String;)V

    :try_start_37
    invoke-virtual/range {p5 .. p5}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getApkInstallPath()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_7a

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_7a

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7a

    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_7a} :catch_e7

    :cond_7a
    :goto_7a
    :try_start_7a
    new-instance v14, Ljava/io/File;

    const-string v2, "/system/containers"

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_b1

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_b1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b1

    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_b1} :catch_106

    :cond_b1
    :goto_b1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v2, "apksCount"

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x1

    const/16 v5, 0x3f3

    const/4 v7, 0x0

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v7, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v9, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;ZI)V

    invoke-virtual {v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->start()V

    const/16 v18, 0x1

    :cond_e6
    :goto_e6
    return v18

    :catch_e7
    move-exception v16

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    :catch_106
    move-exception v16

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :cond_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v0, v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Failed after mount cannot add to DB"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e6
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 68

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Message received "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->toString(I)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    if-nez v3, :cond_29

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cache object is null returning from handleMessage()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    const/16 v28, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Bundle;

    const/16 v54, 0x0

    const/16 v64, 0x0

    const/16 v44, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_f48

    :cond_40
    :pswitch_40
    move/from16 v22, v28

    goto :goto_28

    :pswitch_43
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE called. Starting everything from here."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/manager/StateManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    const/4 v6, 0x1

    sget-object v8, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntArrayValues()[I

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;-><init>([Ljava/lang/String;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v9

    invoke-direct {v4, v6, v8, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3302(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3300(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    const-string v6, "EnterpriseContainerService"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3402(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3400()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$300(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Landroid/app/enterprise/IEnterpriseVpnPolicy;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3600(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v4

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3502(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/app/enterprise/IEnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1500(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-result-object v3

    if-nez v3, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    :cond_182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3700(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x1

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3802(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v35

    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    if-eqz v34, :cond_1de

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of createInprogresslist:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1de
    if-eqz v56, :cond_1fc

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of removeInprogresslist:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fc
    if-eqz v35, :cond_21a

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of DoesntExistlist:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21a
    if-eqz v34, :cond_223

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_223
    if-eqz v56, :cond_22c

    move-object/from16 v0, v57

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_22c
    if-eqz v35, :cond_235

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_235
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of objects:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v57, :cond_296

    const-string v3, "EnterpriseContainerService"

    const-string v4, "removeList of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_25c
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29d

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v4, v6, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_25c

    :cond_296
    const-string v3, "EnterpriseContainerService"

    const-string v4, "createInprogresslist is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v47

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of objects:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v47, :cond_309

    const-string v3, "EnterpriseContainerService"

    const-string v4, "List of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_2d0
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_305

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    const-string v3, "EnterpriseContainerService"

    const-string v4, "At least one container is there"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v4, v6, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    goto :goto_2d0

    :cond_305
    move/from16 v22, v28

    goto/16 :goto_28

    :cond_309
    const-string v3, "EnterpriseContainerService"

    const-string v4, "List is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v28

    goto/16 :goto_28

    :pswitch_314
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "rid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container remount successfully: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_3ac

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_3f8

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container remount successfully: New state is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/16 v6, 0x3f6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    :cond_3ac
    new-instance v60, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.success"

    move-object/from16 v0, v60

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v60

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v48, Landroid/os/Bundle;

    invoke-direct/range {v48 .. v48}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v22, v28

    goto/16 :goto_28

    :cond_3f8
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container remount successfully: transitState failed. State still invalid"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_390

    :pswitch_400
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4200(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/16 v11, 0x3e9

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v32, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.success"

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v22, v28

    goto/16 :goto_28

    :pswitch_473
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "rid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x2

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Container remount failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " <<<<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_4d0

    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container remount failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/16 v6, 0x3f7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    :cond_4d0
    new-instance v38, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.failed"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v8, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v22, v28

    goto/16 :goto_28

    :pswitch_518
    const-string v3, "containerid"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Container create failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " <<<<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container set up failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v14, 0x1

    const/16 v16, 0x3ea

    const/16 v17, 0x0

    const/16 v18, 0x1

    move v15, v10

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v38, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.failure"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v22, v28

    goto/16 :goto_28

    :pswitch_586
    const-string v3, "state"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v58

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "requestId"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "errorCode"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    const-string v3, "primary"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v45

    const-string v3, "status"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v59

    const-string v3, "password"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "containerObj"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    new-instance v48, Landroid/os/Bundle;

    invoke-direct/range {v48 .. v48}, Landroid/os/Bundle;-><init>()V

    if-eqz v58, :cond_5c4

    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_793

    :cond_5c4
    const/4 v3, 0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_68f

    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_61d

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "primaryMountStatus"

    const-string v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v14, 0x1

    const/16 v16, 0x3f2

    const/16 v18, 0x0

    move v15, v10

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v5, v10, v2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mountSecondStorage(IIILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60a

    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_60e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    :cond_60a
    :goto_60a
    move/from16 v22, v28

    goto/16 :goto_28

    :cond_60e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_60a

    :cond_61d
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed for mounting primary partition: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_67d

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container remount failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    goto/16 :goto_28

    :cond_67d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    goto/16 :goto_28

    :cond_68f
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_750

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "secondaryMountStatus"

    const-string v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v14, 0x1

    const/16 v16, 0x3f2

    const/16 v18, 0x0

    move v15, v10

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-object/from16 v18, v30

    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_731

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remount success for : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_72d
    :goto_72d
    move/from16 v22, v28

    goto/16 :goto_28

    :cond_731
    move-object/from16 v13, p0

    move/from16 v14, v58

    move/from16 v15, v59

    move/from16 v16, v36

    move/from16 v17, v10

    invoke-virtual/range {v13 .. v19}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_72d

    :cond_750
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed for mounting secondary partition: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_781

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    goto/16 :goto_28

    :cond_781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    goto/16 :goto_28

    :cond_793
    const/4 v3, 0x1

    move/from16 v0, v58

    if-ne v0, v3, :cond_819

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_7db

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmount is success "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v28

    goto/16 :goto_28

    :cond_7db
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const/16 v23, 0x3ed

    const/16 v25, 0x1

    move/from16 v22, v10

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v65, Landroid/content/Intent;

    const-string v3, "enterprise.container.unmountfailure"

    move-object/from16 v0, v65

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v65

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v22, v28

    goto/16 :goto_28

    :cond_819
    const/4 v3, 0x3

    move/from16 v0, v58

    if-ne v0, v3, :cond_40

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password callback"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_8fa

    const-string v3, "EnterpriseContainerService"

    const-string v4, "changePassword success"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password storing the new password"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v10, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePassword(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->onChangePasswordSuccess(I)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x3

    const/16 v6, 0x3f4

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_8f6

    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): restarting password expiry timeout"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_89e
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b8

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v10, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V

    goto :goto_89e

    :cond_8b8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v55, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.close_dialog"

    move-object/from16 v0, v55

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8f6
    move/from16 v22, v28

    goto/16 :goto_28

    :cond_8fa
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change Password failed cannot update the cache error code:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x3

    const/16 v6, 0x3f5

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move/from16 v22, v28

    goto/16 :goto_28

    :pswitch_92d
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder UID :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v3, "package_install_uid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v64

    const-string v3, "package_install_source"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    const-string v3, "package_original_signature"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v52

    const-string v51, "NA"

    if-eqz v52, :cond_973

    const-string v3, ","

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    :cond_973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_afc

    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerid"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "packages"

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "original_signature"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "installation_source"

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "app_uid"

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0, v6}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v26

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v54

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplicationUninstallationEnabled  :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v43, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v43 .. v43}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v44}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    move-object/from16 v0, v43

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " INSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_aa0
    new-instance v37, Landroid/os/Bundle;

    invoke-direct/range {v37 .. v37}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "package"

    move-object/from16 v0, v37

    move-object/from16 v1, v54

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v4, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v4

    move/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v4, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    move-object/from16 v1, v54

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5000(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    if-eqz v62, :cond_28

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "packageName"

    move-object/from16 v0, v62

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "packageInstallStatus"

    const-string v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v23, 0x3f3

    const/16 v25, 0x0

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_28

    :cond_afc
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " UPDATED SUCCESSFULLY in container: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_aa0

    :pswitch_b24
    new-instance v48, Landroid/os/Bundle;

    invoke-direct/range {v48 .. v48}, Landroid/os/Bundle;-><init>()V

    const/16 v49, 0x0

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_b7d

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cancel Container: All packages will be uninstalled"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_28

    :cond_b7d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v26

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v39, :cond_bdd

    const/16 v40, 0x0

    :goto_bad
    if-eqz v40, :cond_be6

    move-object/from16 v27, v40

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v46, v0

    const/16 v42, 0x0

    :goto_bb8
    move/from16 v0, v42

    move/from16 v1, v46

    if-ge v0, v1, :cond_be6

    aget-object v41, v27, v42

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_bda

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    :cond_bda
    add-int/lit8 v42, v42, 0x1

    goto :goto_bb8

    :cond_bdd
    const-string v3, ";"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    goto :goto_bad

    :cond_be6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v39

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-ne v3, v4, :cond_c5f

    const-string v3, "containerid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_28

    :cond_c5f
    const-string v3, "containerid"

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_28

    :pswitch_c89
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder UID :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/sec/knox/container/manager/StateManager;->delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z

    new-instance v43, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v43 .. v43}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    new-instance v37, Landroid/os/Bundle;

    invoke-direct/range {v37 .. v37}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "package"

    move-object/from16 v0, v37

    move-object/from16 v1, v54

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v4, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_UNINSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v4

    move/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v4, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " UNINSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :pswitch_d3a
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() All Packages Uninstalled Part of Remove Container"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_e06

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v5

    const-string v3, "containerid"

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "requestid"

    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    const/16 v23, 0x3f8

    const/16 v25, 0x1

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v31, Landroid/content/Intent;

    const-string v3, "enterprise.container.cancelled"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container Cancelled intent Container id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "requestid"

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_dbe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    const-string v6, ""

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_28

    :cond_e06
    const-string v3, "containerid"

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const/16 v23, 0x3eb

    const/16 v25, 0x1

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v31, Landroid/content/Intent;

    const-string v3, "enterprise.container.uninstalled"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container removed intent Container id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_dbe

    :pswitch_e4c
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_e74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v39

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_28

    :pswitch_ea6
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_28

    :pswitch_edc
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v3

    if-eqz v3, :cond_f1d

    new-instance v53, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.show_dialog"

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Password is expired. Fire a change password intent"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_28

    :cond_f1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    goto/16 :goto_28

    :pswitch_f2c
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->executeTimeout(I)V

    goto/16 :goto_28

    :pswitch_data_f48
    .packed-switch 0x1
        :pswitch_92d
        :pswitch_b24
        :pswitch_c89
        :pswitch_d3a
        :pswitch_e4c
        :pswitch_ea6
        :pswitch_43
        :pswitch_40
        :pswitch_586
        :pswitch_518
        :pswitch_473
        :pswitch_400
        :pswitch_314
        :pswitch_edc
        :pswitch_f2c
    .end packed-switch
.end method

.method public mountSecondStorage(IIILjava/lang/String;)Z
    .registers 17

    const-string v1, "EnterpriseContainerService"

    const-string v2, "mountSecondStorage()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z
    invoke-static {v1, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "EnterpriseContainerService"

    const-string v2, "Error create container: sdcard directory"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_17
    return v1

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/container/.sdcontainer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt_1/sdcard_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v5, 0x0

    move v2, p1

    move v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p4

    move v7, p3

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_71

    const-string v1, "EnterpriseContainerService"

    const-string v2, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_17

    :cond_71
    const/4 v1, 0x1

    goto :goto_17
.end method

.method public toString(I)V
    .registers 5

    packed-switch p1, :pswitch_data_94

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message parameter : Unknown return - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void

    :pswitch_1c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_24
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_2c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_34
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_3c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_44
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_4c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_54
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_5c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_64
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_6c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_74
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_7c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_84
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_8c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
        :pswitch_34
        :pswitch_3c
        :pswitch_44
        :pswitch_4c
        :pswitch_54
        :pswitch_7c
        :pswitch_5c
        :pswitch_64
        :pswitch_6c
        :pswitch_74
        :pswitch_84
        :pswitch_8c
    .end packed-switch
.end method
