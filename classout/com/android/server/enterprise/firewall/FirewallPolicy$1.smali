.class Lcom/android/server/enterprise/firewall/FirewallPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized enableRulesWithContainerId(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I
    invoke-static {v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxyWithUid(IZI)Z

    :cond_10
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(I)V
    invoke-static {v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "FirewallPolicy"

    const-string v4, "Recieved intent: android.intent.action.BOOT_COMPLETED"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->enableRulesWithContainerId(I)V

    if-eqz v0, :cond_38

    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->enableRulesWithContainerId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_38
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRules()Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v1

    const-string v3, "FirewallPolicy"

    const-string v4, "Exception: "

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method
