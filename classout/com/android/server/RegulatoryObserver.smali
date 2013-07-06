.class Lcom/android/server/RegulatoryObserver;
.super Landroid/os/UEventObserver;
.source "RegulatoryObserver.java"


# static fields
.field private static final MSG_COUNTRY_CODE:I = 0x0

.field private static final REGULATORY_UEVENT_MATCH:Ljava/lang/String; = "MODALIAS=platform:regulatory"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryKeyword:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/RegulatoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    const-string v0, "COUNTRY="

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryKeyword:Ljava/lang/String;

    new-instance v0, Lcom/android/server/RegulatoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/RegulatoryObserver$1;-><init>(Lcom/android/server/RegulatoryObserver;)V

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->init()V

    const-string v0, "MODALIAS=platform:regulatory"

    invoke-virtual {p0, v0}, Lcom/android/server/RegulatoryObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/RegulatoryObserver;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/RegulatoryObserver;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final init()V
    .registers 4

    :try_start_0
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "RegulatoryObserver init."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private final run_crda()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_4e

    const-string v1, "wlan.crda.country"

    iget-object v2, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ctl.start"

    const-string v2, "wifi-crda"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start wifi-crda service to run crda."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country Code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Send broadcast country code message."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uevent:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_1d
    const-string v1, "COUNTRY"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regulatory Country Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->run_crda()V
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_42} :catch_44

    :goto_42
    :try_start_42
    monitor-exit p0

    return-void

    :catch_44
    move-exception v0

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse country code from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catchall_5e
    move-exception v1

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_5e

    throw v1
.end method
