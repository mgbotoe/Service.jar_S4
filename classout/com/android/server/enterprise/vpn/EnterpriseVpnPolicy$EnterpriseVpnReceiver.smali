.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EnterpriseVpnReceiver >> onReceive >> BroadcastReceiver onReceive: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->isInitialStickyBroadcast()Z

    move-result v7

    if-nez v7, :cond_94

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a5

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    if-eqz v7, :cond_95

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    :cond_4a
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v11, :cond_94

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EnterpriseVpnReceiver >> onReceive >> Package Added = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const-string v7, "uid"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "package"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/4 v9, 0x2

    invoke-static {v7, v9, v8, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_94
    :goto_94
    return-void

    :cond_95
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseVpnReceiver >> onReceive >> mLooperThread is null...when ACTION_PACKAGE_ADDED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_a5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11d

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    if-eqz v7, :cond_10c

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_c3

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    :cond_c3
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EnterpriseVpnReceiver >> onReceive >> Package Added = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    const-string v7, "uid"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "package"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/4 v9, 0x3

    invoke-static {v7, v9, v8, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_94

    :cond_10c
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseVpnReceiver >> onReceive >> mLooperThread is null...when ACTION_PACKAGE_REMOVED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    :cond_11d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_186

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    if-eqz v7, :cond_175

    const-string v7, "noConnectivity"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v9, "status"

    if-nez v3, :cond_173

    const/4 v7, 0x1

    :goto_13c
    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/4 v9, 0x4

    invoke-static {v7, v9, v8, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EnterpriseVpnReceiver >> onReceive >> Connection change = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    :cond_173
    move v7, v8

    goto :goto_13c

    :cond_175
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseVpnReceiver >> onReceive >> mLooperThread is null...when CONNECTIVITY_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    :cond_186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.samsung.android.mdm.VPN_RETRY_CALLBACK"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ce

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    if-eqz v7, :cond_1bd

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/4 v9, 0x6

    invoke-static {v7, v9, v8, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseVpnReceiver >> onReceive >> Retrying VPN connection..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_94

    :cond_1bd
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseVpnReceiver >> onReceive >> mLooperThread is null...when VPN_RETRY_CALLBACK_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    :cond_1ce
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_225

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "EnterpriseVpnReceiver >> onReceive >> Boot Completion Successful..."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    if-eqz v7, :cond_214

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindAnyconnectVpnInterface()V
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/16 v9, 0x8

    invoke-static {v7, v9, v8, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseVpnReceiver >> onReceive >> Initialize and bind to VPN on Boot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_94

    :cond_214
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseVpnReceiver >> onReceive >> mLooperThread is null...when ACTION_BOOT_COMPLETED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    :cond_225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "enterprise.container.uninstalled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    const-string v7, "containerid"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v7

    if-eqz v7, :cond_257

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Container is removed Successfully, the database is now going to get cleared whose id is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_257
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->clearDatabaseAfterContainerRemoval(I)V
    invoke-static {v7, v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    goto/16 :goto_94
.end method
