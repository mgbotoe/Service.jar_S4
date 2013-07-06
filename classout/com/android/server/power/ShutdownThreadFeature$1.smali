.class Lcom/android/server/power/ShutdownThreadFeature$1;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThreadFeature;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThreadFeature;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->this$0:Lcom/android/server/power/ShutdownThreadFeature;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    invoke-static {}, Lcom/android/server/power/ShutdownThreadFeature;->shutdownProperties()V

    const-string v11, "nfc"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const-string v11, "bluetooth_manager"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    const-string v11, "connectivity"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-eqz v7, :cond_35

    :try_start_2f
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_f2

    :cond_35
    const/4 v9, 0x1

    :goto_36
    if-eqz v2, :cond_3f

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v11

    if-eqz v11, :cond_47

    :cond_3f
    if-eqz v7, :cond_47

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_48

    :cond_47
    const/4 v9, 0x1

    :cond_48
    if-nez v9, :cond_55

    const-string v11, "ShutdownThread"

    const-string v12, "Turning off radio..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v7, v11}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_55} :catch_f5

    :cond_55
    :goto_55
    if-eqz v8, :cond_5d

    :try_start_57
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_100

    :cond_5d
    const/4 v10, 0x1

    :goto_5e
    if-nez v10, :cond_6b

    const-string v11, "ShutdownThread"

    const-string v12, "Turning off radio2..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_6b} :catch_103

    :cond_6b
    :goto_6b
    const-string v11, "ShutdownThread"

    const-string v12, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_7b

    :try_start_74
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10e

    :cond_7b
    const/4 v6, 0x1

    :goto_7c
    if-nez v6, :cond_89

    const-string v11, "ShutdownThread"

    const-string v12, "Turning off NFC..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_89} :catch_111

    :cond_89
    :goto_89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$endTime:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_f1

    if-nez v1, :cond_a5

    :try_start_95
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_98} :catch_11f

    move-result v11

    if-nez v11, :cond_11c

    const/4 v1, 0x1

    :goto_9c
    if-eqz v1, :cond_a5

    const-string v11, "ShutdownThread"

    const-string v12, "Bluetooth turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    if-nez v9, :cond_b7

    :try_start_a7
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_aa} :catch_12c

    move-result v11

    if-nez v11, :cond_12a

    const/4 v9, 0x1

    :goto_ae
    if-eqz v9, :cond_b7

    const-string v11, "ShutdownThread"

    const-string v12, "Radio turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    if-nez v10, :cond_c9

    :try_start_b9
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bc} :catch_139

    move-result v11

    if-nez v11, :cond_137

    const/4 v10, 0x1

    :goto_c0
    if-eqz v10, :cond_c9

    const-string v11, "ShutdownThread"

    const-string v12, "Radio2 turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    if-nez v6, :cond_dc

    :try_start_cb
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_ce} :catch_146

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_144

    const/4 v6, 0x1

    :goto_d3
    if-eqz v6, :cond_dc

    const-string v11, "ShutdownThread"

    const-string v12, "NFC turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    if-eqz v9, :cond_150

    if-eqz v10, :cond_150

    if-eqz v1, :cond_150

    if-eqz v6, :cond_150

    const-string v11, "ShutdownThread"

    const-string v12, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$done:[Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput-boolean v13, v11, v12

    :cond_f1
    return-void

    :cond_f2
    const/4 v9, 0x0

    goto/16 :goto_36

    :catch_f5
    move-exception v4

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v9, 0x1

    goto/16 :goto_55

    :cond_100
    const/4 v10, 0x0

    goto/16 :goto_5e

    :catch_103
    move-exception v4

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio2 shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v10, 0x1

    goto/16 :goto_6b

    :cond_10e
    const/4 v6, 0x0

    goto/16 :goto_7c

    :catch_111
    move-exception v4

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v6, 0x1

    goto/16 :goto_89

    :cond_11c
    const/4 v1, 0x0

    goto/16 :goto_9c

    :catch_11f
    move-exception v4

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during bluetooth shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v1, 0x1

    goto/16 :goto_9c

    :cond_12a
    const/4 v9, 0x0

    goto :goto_ae

    :catch_12c
    move-exception v4

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v9, 0x1

    goto/16 :goto_ae

    :cond_137
    const/4 v10, 0x0

    goto :goto_c0

    :catch_139
    move-exception v4

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio2 shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v10, 0x1

    goto/16 :goto_c0

    :cond_144
    const/4 v6, 0x0

    goto :goto_d3

    :catch_146
    move-exception v4

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v6, 0x1

    goto :goto_d3

    :cond_150
    const-string v11, "ShutdownThread"

    const-string v12, "!@before sleep"

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v11, 0x1f4

    :try_start_159
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15c
    .catch Ljava/lang/InterruptedException; {:try_start_159 .. :try_end_15c} :catch_1b5

    :goto_15c
    const-string v11, "ShutdownThread"

    const-string v12, "!@after sleep"

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!@[Phone off retry:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$endTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " radio="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " radio2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bluetooth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " nfc="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_89

    :catch_1b5
    move-exception v3

    const-string v11, "ShutdownThread"

    const-string v12, "InterruptedException"

    invoke-static {v11, v12, v3}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_15c
.end method
