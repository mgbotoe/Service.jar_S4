.class public Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
.super Ljava/lang/Object;
.source "WifiManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerAdapter"

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    .registers 3

    const-class v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_18
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addDns(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    .registers 4

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_b

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    :cond_b
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    return-void
.end method

.method public forget(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public prefixLengthToNetmaskInt(I)I
    .registers 3

    invoke-static {p1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method
