.class public Lcom/android/server/power/ShutdownThreadFeature;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# static fields
.field protected static LedOffValue:I = 0x0

.field protected static LedOnValue:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static WiFiOff:Z


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    sput v0, Lcom/android/server/power/ShutdownThreadFeature;->LedOnValue:I

    sput v0, Lcom/android/server/power/ShutdownThreadFeature;->LedOffValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .registers 4

    const-string v0, "ShutdownThread"

    const-string v1, "situation volume"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shutdownProperties()V
    .registers 2

    const-string v0, "ShutdownThread"

    const-string v1, "!@sys.deviceOffReq = 1"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.deviceOffReq"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sys.radio.shutdown"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method

.method protected shutdownRadios(ILandroid/content/Context;Z)V
    .registers 15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v3, v7, v9

    const/4 v1, 0x1

    new-array v5, v1, [Z

    const/16 v6, 0x1f4

    iput-object p2, p0, Lcom/android/server/power/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/server/power/ShutdownThreadFeature$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThreadFeature$1;-><init>(Lcom/android/server/power/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    int-to-long v7, p1

    :try_start_22
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_32

    :goto_25
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_31

    const-string v1, "ShutdownThread"

    const-string v7, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v7}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    :catch_32
    move-exception v1

    goto :goto_25
.end method
