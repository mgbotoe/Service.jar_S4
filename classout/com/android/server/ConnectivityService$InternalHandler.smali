.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    const/4 v10, 0x0

    const/4 v2, 0x1

    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_fe

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    const/4 v0, 0x0

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v11

    :try_start_c
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v12, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)I

    move-result v12

    if-ne v10, v12, :cond_31

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_31

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    :cond_31
    monitor-exit v11
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_51

    if-eqz v0, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetTransition Wakelock for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " released by timeout"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_7

    :catchall_51
    move-exception v10

    :try_start_52
    monitor-exit v11
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v10

    :pswitch_54
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto :goto_7

    :pswitch_5c
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v10, v5, v1}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;II)V

    goto :goto_7

    :pswitch_66
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v10, v5, v8}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;II)V

    goto :goto_7

    :pswitch_70
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v10, v7}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;I)V

    goto :goto_7

    :pswitch_78
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v2, :cond_82

    :goto_7c
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v10, v2}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;Z)V

    goto :goto_7

    :cond_82
    move v2, v10

    goto :goto_7c

    :pswitch_84
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v2, :cond_8f

    :goto_88
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileDataSecondary(Z)V
    invoke-static {v10, v2}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_7

    :cond_8f
    move v2, v10

    goto :goto_88

    :pswitch_91
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    :pswitch_98
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v2, :cond_a6

    move v4, v2

    :goto_9d
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v11, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v10, v11, v4}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    :cond_a6
    move v4, v10

    goto :goto_9d

    :pswitch_a8
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v11

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_7

    :pswitch_be
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v10, v3}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_c9
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    if-ne v11, v2, :cond_d6

    :goto_cf
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v10, v6, v2}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    :cond_d6
    move v2, v10

    goto :goto_cf

    :pswitch_d8
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    if-ne v11, v2, :cond_e5

    :goto_de
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnableSecondary(IZ)V
    invoke-static {v10, v6, v2}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    :cond_e5
    move v2, v10

    goto :goto_de

    :pswitch_e7
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v11

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkInfo;

    invoke-virtual {v11, v10}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_54
        :pswitch_7
        :pswitch_70
        :pswitch_5c
        :pswitch_66
        :pswitch_7
        :pswitch_78
        :pswitch_8
        :pswitch_91
        :pswitch_98
        :pswitch_a8
        :pswitch_be
        :pswitch_c9
        :pswitch_e7
        :pswitch_84
        :pswitch_d8
    .end packed-switch
.end method
