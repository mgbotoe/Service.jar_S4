.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;
.super Landroid/os/Handler;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnHandler"
.end annotation


# static fields
.field private static final ACTION_IPTABLE_EXECUTE:I = 0x5

.field private static final ACTION_NOTIFY_APP_LAUNCH:I = 0x7

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_RETRY_VPN_CONNECTION:I = 0x6

.field private static final ACTION_VPN_INITIALIZE_BIND:I = 0x8

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final ENTERPRISE_STATUS_CALLBACK:I = 0x1

.field private static final GET_STATUS_IDLE:I = 0x1

.field private static final VPN_CONNECT_FAILURE:I = 0x5

.field private static final VPN_CONNECT_READY:I = 0x1

.field private static final VPN_CONNECT_SUCCESS:I = 0x4

.field private static final VPN_PROFILE_CONNECTING:I = 0x2

.field private static final VPN_PROFILE_DELETE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 52

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Message received"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    const/16 v38, -0x1

    const/16 v42, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/4 v15, 0x0

    const/16 v37, -0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    packed-switch v43, :pswitch_data_d26

    :cond_25
    :goto_25
    return-void

    :pswitch_26
    const-string v43, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    const-string v43, "profileName"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v43, "errorString"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_48

    const-string v15, "Empty"

    :cond_48
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> Error String Value is"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v43, "state"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> { state : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", status: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " , profile:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "}"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v41, :cond_4cf

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_25

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v0, v5

    move/from16 v22, v0

    if-nez v36, :cond_3d9

    packed-switch v37, :pswitch_data_d3a

    :pswitch_d8
    goto/16 :goto_25

    :pswitch_da
    const/16 v16, 0x0

    :goto_dc
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_2cd

    aget-object v42, v5, v16

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_145

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2310()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    :cond_145
    add-int/lit8 v16, v16, 0x1

    goto :goto_dc

    :pswitch_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/List;

    move-result-object v35

    const/16 v16, 0x0

    :goto_154
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_1df

    aget-object v42, v5, v16

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_180

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_1db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v35

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/util/List;)Z

    move-result v43

    if-eqz v43, :cond_1db

    :cond_180
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1db

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2308()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x1

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    :cond_1db
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_154

    :cond_1df
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v43

    if-lez v43, :cond_224

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :pswitch_22f
    const/16 v16, 0x0

    :goto_231
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_297

    aget-object v42, v5, v16

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_28f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2310()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    :cond_28f
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_231

    :cond_297
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_2bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_2bc
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :cond_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_2f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_2f2
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :pswitch_303
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v43, "Network Changed"

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_38b

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_321
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_375

    aget-object v42, v5, v16

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_36d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    :cond_36d
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_321

    :cond_375
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38b
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_39a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_39a
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :pswitch_3ab
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "The Start Connection callback for removeEnterpriseVpnConnection is recieved and its state is  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "Status is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_3d9
    sparse-switch v37, :sswitch_data_d4a

    goto/16 :goto_25

    :goto_3de
    :sswitch_3de
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> VPN disconnect successfully"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_3e9
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_473

    aget-object v42, v5, v16

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_452

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2310()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    :cond_452
    add-int/lit8 v16, v16, 0x1

    goto :goto_3e9

    :sswitch_455
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> VPN disconnect failure. damn :( :"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3de

    :cond_473
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v43

    if-lez v43, :cond_4c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_4ba
    :goto_4ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :cond_4c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto :goto_4ba

    :cond_4cf
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> ProfileNameVpnEntry returned null in handleMessage"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :pswitch_4da
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Handle MSG ACTION_PACKAGE_ADDED"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v43, "uid"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    const-string v43, "package"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_52b

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> PackageName and UID : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52b
    const-string v43, "com.mocana.vpn.android"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_542

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :cond_542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updatePackageData(Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)Z

    move-result v43

    if-eqz v43, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Package found in DB with rule proceed with logic"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-result-object v40

    if-eqz v40, :cond_25

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v43

    if-eqz v43, :cond_744

    if-lez v10, :cond_5af

    if-lez v10, :cond_744

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_744

    :cond_5af
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Network is connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    if-eqz v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    const/16 v39, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_5ea

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    :cond_5ea
    if-eqz v39, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_610

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Callback state: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_610
    const-string v43, "CONNECTED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_6a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v41, :cond_69e

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V
    :try_end_67b
    .catch Landroid/os/RemoteException; {:try_start_5b8 .. :try_end_67b} :catch_67d

    goto/16 :goto_25

    :catch_67d
    move-exception v13

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Exception at mocana:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_69e
    :try_start_69e
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "Profilename not found in the map"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_6a9
    const-string v43, "CONNECTING"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    new-instance v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-direct/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v45

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v44

    move/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v43

    if-nez v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    const/16 v39, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_72a

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    if-eqz v39, :cond_72a

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Cannot start vpn, mocana returned error"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_742
    .catch Landroid/os/RemoteException; {:try_start_69e .. :try_end_742} :catch_67d

    goto/16 :goto_25

    :cond_744
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Network is not connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :pswitch_74f
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Handle MSG ACTION_PACKAGE_REMOVED"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v43, "package"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v42, :cond_25

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Handle MSG ACTION_PACKAGE_REMOVED >> Remove from iptable/hashmap"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V

    goto/16 :goto_25

    :pswitch_7a4
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> CONNECTIVITY_ACTION >> Handle MSG CONNECTIVITY_ACTION"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v43, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    const/16 v43, 0x1

    move/from16 v0, v27

    move/from16 v1, v43

    if-ne v0, v1, :cond_7e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :cond_7e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_25

    :pswitch_7f8
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_IPTABLE_EXECUTE >> Handle MSG ACTION_IPTABLE_EXECUTE"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v43, "command"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v43, " "

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    array-length v0, v4

    move/from16 v21, v0

    const/16 v17, 0x0

    :goto_820
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_82e

    aget-object v7, v4, v17

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_820

    :cond_82e
    :try_start_82e
    new-instance v43, Ljava/lang/ProcessBuilder;

    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-direct/range {v43 .. v44}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Process;->waitFor()I
    :try_end_84e
    .catch Ljava/io/IOException; {:try_start_82e .. :try_end_84e} :catch_850
    .catch Ljava/lang/InterruptedException; {:try_start_82e .. :try_end_84e} :catch_85c

    goto/16 :goto_25

    :catch_850
    move-exception v13

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_IPTABLE_EXECUTE >> IOException iptables command failed "

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :catch_85c
    move-exception v13

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_IPTABLE_EXECUTE >> InterruptedException iptables command failed "

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :pswitch_868
    const-string v43, "uid"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v43

    if-eqz v43, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> notifyContainerAppLaunch network on"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v43

    const-string v44, "EnterpriseVpn"

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "UID_APP"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-string v49, "profileName"

    aput-object v49, v47, v48

    const/16 v48, 0x1

    const-string v49, "applicationInfo"

    aput-object v49, v47, v48

    invoke-virtual/range {v43 .. v47}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_25

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v43

    if-lez v43, :cond_25

    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    const-string v43, "profileName"

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v43, "applicationInfo"

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_937

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> packageName : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " profileName :"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "interface: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    if-eqz v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v33

    const/16 v39, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_969

    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    :cond_969
    if-eqz v39, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Value is not null and going inside start connection"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_9ac

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Callback state: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9ac
    const-string v43, "IDLE"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_9c4

    const-string v43, "FAILED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_a7a

    :cond_9c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    new-instance v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-direct/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v45

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v44

    move/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v43

    if-nez v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v33

    const/16 v39, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_a3f

    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    if-eqz v39, :cond_a3f

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_a3f

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Cannot start vpn, mocana returned error"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a57
    .catch Landroid/os/RemoteException; {:try_start_887 .. :try_end_a57} :catch_a59

    goto/16 :goto_25

    :catch_a59
    move-exception v13

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> Exceptionin notify: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_a7a
    :try_start_a7a
    const-string v43, "CONNECTED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_25

    if-eqz v14, :cond_25

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v40, :cond_25

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    if-nez v43, :cond_af3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    goto/16 :goto_25

    :cond_af3
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Already running application ignoring:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b17
    .catch Landroid/os/RemoteException; {:try_start_a7a .. :try_end_b17} :catch_a59

    goto/16 :goto_25

    :pswitch_b19
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Handle MSG ACTION_RETRY_VPN_CONNECTION"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v43

    if-eqz v43, :cond_cf5

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Network is connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    if-eqz v43, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b64
    :goto_b64
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_cea

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v24

    const/16 v32, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b8e
    :goto_b8e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_bb9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_bb6

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_b8e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_b8e

    :cond_bb6
    const/16 v32, 0x0

    goto :goto_b8e

    :cond_bb9
    if-eqz v32, :cond_bee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bcc
    .catch Landroid/os/RemoteException; {:try_start_b40 .. :try_end_bcc} :catch_bcd

    goto :goto_b64

    :catch_bcd
    move-exception v13

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Exception at mocana:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_bee
    :try_start_bee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    const/16 v39, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_c0e

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    :cond_c0e
    if-eqz v39, :cond_b64

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Callback state: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v43, "IDLE"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_c46

    const-string v43, "FAILED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_b64

    :cond_c46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    new-instance v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-direct/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v45

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    move-object/from16 v2, v44

    move/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v43

    if-nez v43, :cond_cd7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    const/16 v39, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_ccc

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    if-eqz v39, :cond_ccc

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ccc
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Cannot start vpn, mocana returned error"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b64

    :cond_cd7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b64

    :cond_cea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_cf3
    .catch Landroid/os/RemoteException; {:try_start_bee .. :try_end_cf3} :catch_bcd

    goto/16 :goto_25

    :cond_cf5
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Network is not connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :pswitch_d00
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_VPN_INITIALIZE_BIND >> Handle MSG ACTION_VPN_INITIALIZE_BIND"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->initializeHashtable()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkPackagesOnStartup()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_25

    :pswitch_data_d26
    .packed-switch 0x1
        :pswitch_26
        :pswitch_4da
        :pswitch_74f
        :pswitch_7a4
        :pswitch_7f8
        :pswitch_b19
        :pswitch_868
        :pswitch_d00
    .end packed-switch

    :pswitch_data_d3a
    .packed-switch 0x1
        :pswitch_da
        :pswitch_303
        :pswitch_d8
        :pswitch_148
        :pswitch_22f
        :pswitch_3ab
    .end packed-switch

    :sswitch_data_d4a
    .sparse-switch
        0x1 -> :sswitch_3de
        0x5 -> :sswitch_455
    .end sparse-switch
.end method
