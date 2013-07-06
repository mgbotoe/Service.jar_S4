.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const-string v9, "wifi_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iget-object v10, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x3

    if-ne v8, v9, :cond_22

    const/4 v9, 0x1

    :goto_19
    #setter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v10, v9}, Lcom/android/server/WifiService;->access$1302(Lcom/android/server/WifiService;Z)Z

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/4 v9, 0x0

    goto :goto_19

    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    iget-object v10, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    iput-object v9, v10, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v9, Lcom/android/server/WifiService$13;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v10, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v10, v10, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1ea

    goto :goto_21

    :pswitch_50
    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v10, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v10}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/WifiService;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_73

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_73

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ad

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    sget-object v10, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

    invoke-virtual {v9, v10, v4}, Lcom/android/server/WifiService;->showHS20WifiNotification(Lcom/android/server/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    :cond_73
    :goto_73
    :pswitch_73
    iget-object v10, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v9, v9, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v11, :cond_b5

    const/4 v9, 0x1

    :goto_82
    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v10, v9}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationHS20Enabled:Z
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v9, v9, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_21

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    sget-object v10, Lcom/android/server/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/WifiService$HS20_ConType;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/WifiService;->showHS20WifiNotification(Lcom/android/server/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_21

    :cond_ad
    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    sget-object v10, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_VSP:Lcom/android/server/WifiService$HS20_ConType;

    invoke-virtual {v9, v10, v4}, Lcom/android/server/WifiService;->showHS20WifiNotification(Lcom/android/server/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_73

    :cond_b5
    const/4 v9, 0x0

    goto :goto_82

    :cond_b7
    const-string v9, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e7

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->noteScanEnd()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_d2

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v9}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    :cond_d2
    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e0

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v9}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine;->checkScanNet()V

    :cond_e0
    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkAndSetNotification()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto/16 :goto_21

    :cond_e7
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f6

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateResources()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    goto/16 :goto_21

    :cond_f6
    const-string v9, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_112

    const-string v9, "nid"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const v9, 0x1080706

    if-ne v7, v9, :cond_21

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/WifiService;->mIsShowingNotification:Z
    invoke-static {v9, v10}, Lcom/android/server/WifiService;->access$2102(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_21

    :cond_112
    const-string v9, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14d

    const-string v9, "NUM"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_138

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v9, v10}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    goto/16 :goto_21

    :cond_138
    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v9, v10}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    goto/16 :goto_21

    :cond_14d
    const-string v9, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a6

    const-string v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "android.intent.action.WIFI_DISPLAY displayState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v9, 0x12

    iput v9, v6, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v10, "stop"

    const/4 v9, 0x1

    if-ne v5, v9, :cond_1a4

    const/4 v9, 0x1

    :goto_188
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v9}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    if-nez v5, :cond_21

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v9}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto/16 :goto_21

    :cond_1a4
    const/4 v9, 0x0

    goto :goto_188

    :cond_1a6
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d4

    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/16 v10, 0xa

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v9, 0xc

    if-ne v2, v9, :cond_1c5

    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/server/WifiService;->access$2276(I)I

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->determineBoosterMode()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    goto/16 :goto_21

    :cond_1c5
    const/16 v9, 0xa

    if-ne v2, v9, :cond_21

    const/4 v9, -0x3

    invoke-static {v9}, Lcom/android/server/WifiService;->access$2272(I)I

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->determineBoosterMode()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    goto/16 :goto_21

    :cond_1d4
    const-string v9, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    const-string v9, "WifiService"

    const-string v10, "Receive IP Policy Intent"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->handleSecurityPolicy()V
    invoke-static {v9}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto/16 :goto_21

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_50
        :pswitch_73
        :pswitch_73
    .end packed-switch
.end method
