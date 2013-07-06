.class public Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    }
.end annotation


# static fields
.field private static final CONTAINER_REMOVED:Ljava/lang/String; = "enterprise.container.uninstalled"

.field private static final CONTAINER_SETUP_FAILURE:Ljava/lang/String; = "enterprise.container.setup.failure"

.field private static final CONTAINER_SETUP_SUCCESS:Ljava/lang/String; = "enterprise.container.setup.success"

.field private static final INTENT_SSO_SERVICE_DISCONNECTED:Ljava/lang/String; = "sso.enterprise.container.disconnected"

.field private static final INTENT_SSO_SERVICE_SETUP_SUCCESS:Ljava/lang/String; = "sso.enterprise.container.setup.success"


# instance fields
.field private final CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER2_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER3_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER_1:I

.field private final CONTAINER_2:I

.field private final CONTAINER_3:I

.field private final SSO_TYPE_VALUE:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWNAPI:Ljava/lang/String;

.field cSignConnect1:Landroid/content/ServiceConnection;

.field cSignConnect2:Landroid/content/ServiceConnection;

.field cSignConnect3:Landroid/content/ServiceConnection;

.field private mBroadCastReciever:Landroid/content/BroadcastReceiver;

.field private mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

.field private mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

.field private mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;-><init>()V

    const-string v0, "EnterpriseSSOPolicy Service"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->TAG:Ljava/lang/String;

    const-string v0, "API Not Supported"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->UNKNOWNAPI:Ljava/lang/String;

    const-string v0, "sec_container_1.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

    const-string v0, "sec_container_2.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER2_ACTION_SSO_SERVICE:Ljava/lang/String;

    const-string v0, "sec_container_3.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER3_ACTION_SSO_SERVICE:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_TYPE_VALUE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_1:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_2:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_3:I

    iput-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iput-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iput-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect2:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect3:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->registerReciever()V

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getContainerPolicy()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    return-object v0
.end method

.method private bindSSOInterfaces(I)Z
    .registers 7

    const/4 v4, 0x1

    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces() containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ae

    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). default case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return v0

    :pswitch_36
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_1.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_1 case. CONTAINER1_ACTION_SSO_SERVICE:sec_container_1.com.samsung.safe.auth.mgmt, success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :pswitch_5e
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_2.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect2:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_2 case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :pswitch_86
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_3.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect3:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_3 case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_36
        :pswitch_5e
        :pswitch_86
    .end packed-switch
.end method

.method private enforceEnterpriseSSOPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_SSO"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getContainerPolicy()V
    .registers 3

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_17

    const-string v0, "EnterpriseSSOPolicy Service"

    const-string v1, "SSO: getEDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public deleteSSOWhiteList(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v5, 0x0

    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    if-nez p4, :cond_14

    :try_start_b
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList packageName is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_13
    :goto_13
    return-object v5

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v6, p1, v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_32} :catch_33

    goto :goto_1d

    :catch_33
    move-exception v2

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_3c
    :try_start_3c
    const-string v6, "centrify"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    packed-switch p1, :pswitch_data_e2

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. default"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :pswitch_5b
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. CONTAINER_1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :pswitch_82
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. CONTAINER_2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_aa
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. CONTAINER_3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_d2
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_df} :catch_33

    goto/16 :goto_13

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_82
        :pswitch_aa
    .end packed-switch
.end method

.method public forceReauthenticate(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_9
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    packed-switch p1, :pswitch_data_a6

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-object v1

    :pswitch_1c
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_42

    goto :goto_1b

    :catch_42
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :pswitch_4b
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :pswitch_71
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_97
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_a4} :catch_42

    goto/16 :goto_1b

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_4b
        :pswitch_71
    .end packed-switch
.end method

.method public getAppAllowedState(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_9
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    packed-switch p1, :pswitch_data_ba

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-object v1

    :pswitch_1c
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_47} :catch_48

    goto :goto_1b

    :catch_48
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :pswitch_51
    :try_start_51
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :pswitch_7d
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_aa
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_b7} :catch_48

    goto/16 :goto_1b

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_51
        :pswitch_7d
    .end packed-switch
.end method

.method public getSSOCustomerId(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSSOCustomerId() containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_21
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    packed-switch p1, :pswitch_data_ae

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-object v1

    :pswitch_34
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_56

    goto :goto_33

    :catch_56
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API getSSOCustomerId-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    :pswitch_5f
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :pswitch_81
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_a3
    const-string v2, "API Not Supported"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_ad} :catch_56

    goto :goto_33

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_34
        :pswitch_5f
        :pswitch_81
    .end packed-switch
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public registerReciever()V
    .registers 4

    const-string v1, "EnterpriseSSOPolicy Service"

    const-string v2, "SSO registerReciever() "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "enterprise.container.setup.success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "enterprise.container.uninstalled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setCustomerInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_9
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    packed-switch p1, :pswitch_data_a6

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-object v1

    :pswitch_1c
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2, p3, p4}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_42

    goto :goto_1b

    :catch_42
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :pswitch_4b
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2, p3, p4}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :pswitch_71
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2, p3, p4}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_97
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_a4} :catch_42

    goto/16 :goto_1b

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_4b
        :pswitch_71
    .end packed-switch
.end method

.method public setSSOCustomerId(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSSOCustomerId() containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_21
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    packed-switch p1, :pswitch_data_be

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-object v1

    :pswitch_34
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2, p3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_59} :catch_5a

    goto :goto_33

    :catch_5a
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API setSSOCustomerId-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    :pswitch_63
    :try_start_63
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2, p3}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :pswitch_89
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2, p3}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_af
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_bc} :catch_5a

    goto/16 :goto_33

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_34
        :pswitch_63
        :pswitch_89
    .end packed-switch
.end method

.method public setSSOWhiteList(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const-string v6, "EnterpriseSSOPolicy Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSSOWhiteList() containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    if-nez p4, :cond_2c

    :try_start_23
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList packageName is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_2b
    :goto_2b
    return-object v5

    :cond_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v6, p1, v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4a} :catch_4b

    goto :goto_35

    :catch_4b
    move-exception v2

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    :cond_54
    :try_start_54
    const-string v6, "centrify"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    packed-switch p1, :pswitch_data_fa

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. default"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :pswitch_73
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v6, :cond_2b

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v6, :cond_2b

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. CONTAINER_1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :pswitch_9a
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v6, :cond_2b

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v6, :cond_2b

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. CONTAINER_2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :pswitch_c2
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v6, :cond_2b

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v6, :cond_2b

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. CONTAINER_3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :cond_ea
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_f7} :catch_4b

    goto/16 :goto_2b

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_73
        :pswitch_9a
        :pswitch_c2
    .end packed-switch
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public unenroll(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_9
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    packed-switch p1, :pswitch_data_a6

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-object v1

    :pswitch_1c
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_42

    goto :goto_1b

    :catch_42
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :pswitch_4b
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :pswitch_71
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_97
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_a4} :catch_42

    goto/16 :goto_1b

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_4b
        :pswitch_71
    .end packed-switch
.end method
