.class Lcom/android/server/power/FakeShutdown$Bootup;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bootup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown$Bootup;-><init>(Lcom/android/server/power/FakeShutdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v13, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v8, "FakeShutdown"

    const-string v9, "!@beginFastboot FAKE_STATE = UP_START"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    const/4 v8, 0x3

    :try_start_13
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$502(I)I

    monitor-exit v9
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_120

    const-string v8, "FakeShutdown"

    const-string v9, "!@call powermanager wakep()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    :try_start_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_123

    :goto_2f
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v9, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v9}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v9

    #setter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v8, v9}, Lcom/android/server/power/FakeShutdown;->access$602(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog;

    invoke-static {v12}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v9, 0x1f4

    #calls: Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V
    invoke-static {v8, v9, v11}, Lcom/android/server/power/FakeShutdown;->access$700(Lcom/android/server/power/FakeShutdown;IZ)V

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$800(Lcom/android/server/power/FakeShutdown;)Landroid/os/UEventObserver;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UEventObserver;->stopObserving()V

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->lauchCamera()Z
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$900(Lcom/android/server/power/FakeShutdown;)Z

    move-result v4

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)I

    move-result v8

    if-eq v0, v8, :cond_74

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v9, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v9}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)I

    move-result v9

    #calls: Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(I)V
    invoke-static {v8, v9}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;I)V

    :cond_74
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #setter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v8, v10}, Lcom/android/server/power/FakeShutdown;->access$1102(Lcom/android/server/power/FakeShutdown;I)I

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oldAirplaneMode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "bluetooth_manager"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "bluetooth_on"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v8, v9}, Lcom/android/server/power/FakeShutdown;->access$1302(Lcom/android/server/power/FakeShutdown;I)I

    :try_start_a3
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$1300(Lcom/android/server/power/FakeShutdown;)I

    move-result v8

    if-ne v8, v12, :cond_b5

    const-string v8, "FakeShutdown"

    const-string v9, "!@ [p9p9] bluetooth.enable();"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_b5} :catch_129

    :cond_b5
    :goto_b5
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    const/4 v8, 0x5

    :try_start_bd
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$502(I)I

    monitor-exit v9
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_132

    if-eqz v4, :cond_c8

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->waitForCamera()V
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$1400(Lcom/android/server/power/FakeShutdown;)V

    :cond_c8
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v8

    if-nez v8, :cond_135

    const-string v8, "FakeShutdown"

    const-string v9, "anim dialog not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d7
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->releaseWakeLocks()V

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const-string v8, "shutdown"

    const-string v9, "0"

    invoke-virtual {v2, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_ed
    const-string v8, "alarm"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_fc} :catch_146

    :goto_fc
    const-string v8, "FakeShutdown"

    const-string v9, "!@FAKE_STATE = NOTHING"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    const/4 v8, 0x0

    :try_start_10b
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$502(I)I

    const-string v8, "sys.fakeShutdown.state"

    const-string v10, "power_on"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9
    :try_end_116
    .catchall {:try_start_10b .. :try_end_116} :catchall_14f

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    invoke-static {v13}, Lcom/android/server/power/FakeShutdown;->access$1502(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/FakeShutdown;

    invoke-static {v13}, Lcom/android/server/power/FakeShutdown;->access$1002(Landroid/content/Context;)Landroid/content/Context;

    return-void

    :catchall_120
    move-exception v8

    :try_start_121
    monitor-exit v9
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v8

    :catch_123
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2f

    :catch_129
    move-exception v6

    const-string v8, "FakeShutdown"

    const-string v9, "!@RemoteException during bluetooth enable"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b5

    :catchall_132
    move-exception v8

    :try_start_133
    monitor-exit v9
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v8

    :cond_135
    const-string v8, "FakeShutdown"

    const-string v9, "!@anim dlg cancel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/power/ShutdownDialog;->cancel()V

    goto :goto_d7

    :catch_146
    move-exception v5

    const-string v8, "FakeShutdown"

    const-string v9, "!@is service dead?"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catchall_14f
    move-exception v8

    :try_start_150
    monitor-exit v9
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    throw v8
.end method
