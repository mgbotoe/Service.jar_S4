.class final Lcom/android/server/ssrm/Monitor$3;
.super Landroid/content/BroadcastReceiver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private displayAllStates()V
    .registers 4

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Battery Remaining : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Battery Charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Battery Full:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nWifi Enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Wifi Connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nAirPlaneMode Status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUsb Status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBluetooth Enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Bluetooth Connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPower Connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPower Saving Mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nScreen On"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_120

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mhandle is ! null On"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11f
    return-void

    :cond_120
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mhandle is null On"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f
.end method

.method private isAutoBrightnessEnabled(Landroid/content/ContentResolver;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_2
    const-string v3, "screen_brightness_mode"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_7} :catch_e

    move-result v3

    if-ne v3, v2, :cond_c

    move v0, v2

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    :catch_e
    move-exception v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 26

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->getInstance()Lcom/android/server/ssrm/AirViewOnOff;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_11
    const-class v20, Lcom/android/server/ssrm/mDNLeOnOff;

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-class v20, Lcom/android/server/ssrm/DvfsUpThreshold;

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-class v20, Lcom/android/server/ssrm/TurboModeOnOff;

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_3e} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_3e} :catch_94

    :goto_3e
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_99

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v20

    const-string v21, "onReceive:: ACTION_BOOT_COMPLETED is received."

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    const-string v20, "jf"

    const-string v21, "jf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_70

    new-instance v20, Ljava/lang/Thread;

    new-instance v21, Lcom/android/server/ssrm/Monitor$3$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$3$1;-><init>(Lcom/android/server/ssrm/Monitor$3;)V

    invoke-direct/range {v20 .. v21}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    :cond_70
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFile()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "psm_switch"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_8e

    const/16 v20, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$3400(Z)V

    :cond_8e
    :goto_8e
    return-void

    :catch_8f
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_3e

    :catch_94
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3e

    :cond_99
    const-string v20, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_119

    const-string v20, "level"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    sput v20, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    sget v20, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c1

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    :cond_c1
    const-string v20, "status"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_f2

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    :cond_d9
    :goto_d9
    const-string v20, "plugged"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v5, v0, :cond_113

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    goto :goto_8e

    :cond_f2
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v6, v0, :cond_fd

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    goto :goto_d9

    :cond_fd
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v6, v0, :cond_108

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    goto :goto_d9

    :cond_108
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v6, v0, :cond_d9

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    goto :goto_d9

    :cond_113
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    goto/16 :goto_8e

    :cond_119
    const-string v20, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14e

    const-string v20, "state"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v20

    if-eqz v20, :cond_140

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x3e8

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_140
    if-eqz v4, :cond_148

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    goto/16 :goto_8e

    :cond_148
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    goto/16 :goto_8e

    :cond_14e
    const-string v20, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_182

    const-string v20, "wifi_state"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_174

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    goto/16 :goto_8e

    :cond_174
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8e

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    goto/16 :goto_8e

    :cond_182
    const-string v20, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_192

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    goto/16 :goto_8e

    :cond_192
    const-string v20, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a2

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    goto/16 :goto_8e

    :cond_1a2
    const-string v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c3

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    if-eqz v20, :cond_1bd

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->resetFPS()V

    :cond_1bd
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    goto/16 :goto_8e

    :cond_1c3
    const-string v20, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e1

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ACTION_SCREEN_OFF:: limitChargingCurrent = -1"

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, -0x1

    #calls: Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$3600(I)V

    goto/16 :goto_8e

    :cond_1e1
    const-string v20, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_208

    const-string v20, "1"

    const-string v21, "sys.multiwindow.running"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    if-eqz v20, :cond_8e

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto/16 :goto_8e

    :cond_208
    const-string v20, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_250

    const-string v20, "android.bluetooth.adapter.extra.STATE"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v20, 0xc

    move/from16 v0, v20

    if-ne v7, v0, :cond_22c

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    goto/16 :goto_8e

    :cond_22c
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v7, v0, :cond_23c

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_8e

    :cond_23c
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v7, v0, :cond_248

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_8e

    :cond_248
    if-nez v7, :cond_8e

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_8e

    :cond_250
    const-string v20, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_27a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "psm_switch"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_273

    const/16 v20, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$3400(Z)V

    goto/16 :goto_8e

    :cond_273
    const/16 v20, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$3400(Z)V

    goto/16 :goto_8e

    :cond_27a
    const-string v20, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4eb

    const-string v20, "SSRM_STATUS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v20, "SSRM_STATUS_VALUE"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string v20, "PackageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v20, "PID"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v20, "FullScreen"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2dd

    sput-boolean v17, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sget-boolean v20, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2dd

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    if-eqz v20, :cond_2d9

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_2d9
    sget-boolean v20, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    :cond_2dd
    if-eqz v12, :cond_8e

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_8e

    if-eqz v16, :cond_8e

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BroadcastReceiver::onReceive SSRM_STATUS_NOTIFY with statusName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  statusValue ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v13, :cond_394

    const-string v20, "Camera_preview"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_35d

    const-string v20, "MoviePlayer_play"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_35d

    const-string v20, "SIP_show"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_35d

    const-string v20, "ChatOnV_vtCall"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_35d

    const-string v20, "GroupPlay_fpsChange"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_35d

    const-string v20, "Phone_vtCall"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_375

    :cond_35d
    if-eqz v17, :cond_44d

    move/from16 v20, v13

    :goto_361
    sput v20, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    if-eqz v20, :cond_370

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_370
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$3702(Z)Z

    :cond_375
    const-string v20, "GroupPlay_gpuLock"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_394

    const-string v20, "jf"

    const-string v21, "jf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_394

    if-eqz v17, :cond_451

    const-string v20, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    :cond_394
    :goto_394
    const-string v20, "BrowserLowFps"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3af

    sput-boolean v17, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    if-eqz v20, :cond_3af

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_3af
    sget-boolean v20, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DUAL_RECORD:Z

    if-eqz v20, :cond_3e2

    const-string v20, "Camera_recording"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3cb

    const-string v20, "Camera_recordingDual"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3e2

    :cond_3cb
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3800()Z

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_3dd

    invoke-static/range {v17 .. v17}, Lcom/android/server/ssrm/Monitor;->access$3802(Z)Z

    const/16 v20, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    :cond_3dd
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$3702(Z)Z

    :cond_3e2
    sget-boolean v20, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DRAMA_SHOT:Z

    if-eqz v20, :cond_410

    const-string v20, "Camera_panoramaShot"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3fe

    const-string v20, "Camera_dramaShot"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_410

    :cond_3fe
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Z

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_410

    invoke-static/range {v17 .. v17}, Lcom/android/server/ssrm/Monitor;->access$3702(Z)Z

    const/16 v20, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    :cond_410
    sget-boolean v20, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_BROWSER_BOOSTER:Z

    if-eqz v20, :cond_45a

    const-string v20, "Browser_loading_URL"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_45a

    const-string v20, "URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8e

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_8e

    const-string v20, "Browser_leaving_URL"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3900()Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->handleURL(Ljava/lang/String;ZLjava/lang/String;I)V

    goto/16 :goto_8e

    :cond_44d
    const/16 v20, 0x0

    goto/16 :goto_361

    :cond_451
    const-string v20, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto/16 :goto_394

    :cond_45a
    if-eqz v17, :cond_4a6

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v11, Landroid/os/Message;->what:I

    const/16 v20, 0x3

    move/from16 v0, v20

    iput v0, v11, Landroid/os/Message;->arg2:I

    move/from16 v0, v20

    iput v0, v11, Landroid/os/Message;->arg1:I

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v20

    const-wide/16 v21, 0xc8

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_483
    const-string v20, "BenchmarkBooster"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8e

    if-eqz v17, :cond_4ca

    const/16 v20, -0x1

    #calls: Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$4000(I)V

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$4102(Z)Z

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Benchmark is working now. SIOP will not control CPU max freq any more"

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8e

    :cond_4a6
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v11, Landroid/os/Message;->what:I

    const/16 v20, 0x4

    move/from16 v0, v20

    iput v0, v11, Landroid/os/Message;->arg2:I

    move/from16 v0, v20

    iput v0, v11, Landroid/os/Message;->arg1:I

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_483

    :cond_4ca
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$4102(Z)Z

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4200()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v20

    if-eqz v20, :cond_4e0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4200()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v20

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    #calls: Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$4000(I)V

    :cond_4e0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Benchmark is done now. SIOP will control CPU max freq again"

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8e

    :cond_4eb
    const-string v20, "ResponseAxT9Info"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4fa

    #calls: Lcom/android/server/ssrm/Monitor;->onSIPIntentReceived(Landroid/content/Intent;)V
    invoke-static/range {p2 .. p2}, Lcom/android/server/ssrm/Monitor;->access$4300(Landroid/content/Intent;)V

    goto/16 :goto_8e

    :cond_4fa
    const-string v20, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8e

    sget-boolean v20, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v20, :cond_515

    invoke-static {}, Lcom/android/server/ssrm/TouchBusBooster;->getInstance()Lcom/android/server/ssrm/TouchBusBooster;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/TouchBusBooster;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_515
    sget-boolean v20, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    if-eqz v20, :cond_564

    const-string v20, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v20, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v20, "FOREGROUND"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_564

    const-string v20, "com.sec.android.app.sbrowser"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_54b

    const-string v20, "com.android.chrome"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5c3

    :cond_54b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$3;->isAutoBrightnessEnabled(Landroid/content/ContentResolver;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$1602(Z)Z

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$1702(Z)Z

    const/16 v20, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    :cond_564
    :goto_564
    const-string v20, "FOREGROUND"

    const-string v21, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_619

    const-string v20, "com.google.android.youtube"

    const-string v21, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_59a

    const-string v20, "com.android.chrome"

    const-string v21, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5d4

    :cond_59a
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    :goto_5a6
    sget-boolean v20, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5fc

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    if-eqz v20, :cond_5bd

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_5bd
    sget-boolean v20, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    goto/16 :goto_8e

    :cond_5c3
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1700()Z

    move-result v20

    if-eqz v20, :cond_564

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$1702(Z)Z

    const/16 v20, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    goto :goto_564

    :cond_5d4
    const-string v20, "com.sec.android.app.sbrowser"

    const-string v21, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5ef

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    goto :goto_5a6

    :cond_5ef
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    goto :goto_5a6

    :cond_5fc
    sget-boolean v20, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8e

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    if-eqz v20, :cond_613

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_613
    sget-boolean v20, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    sput-boolean v20, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    goto/16 :goto_8e

    :cond_619
    const-string v20, "BACKGROUND"

    const-string v21, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8e

    const-string v20, "com.samsung.groupcast"

    const-string v21, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8e

    const-string v20, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto/16 :goto_8e
.end method
