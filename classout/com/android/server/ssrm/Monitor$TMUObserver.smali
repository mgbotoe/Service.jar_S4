.class Lcom/android/server/ssrm/Monitor$TMUObserver;
.super Landroid/os/UEventObserver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TMUObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/Monitor$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor$TMUObserver;-><init>()V

    return-void
.end method

.method private final systemShutdown()V
    .registers 4

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "systemShutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SYSTEM_REQUEST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1500()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 7

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thermistor TMU UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_1f
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMUSTATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_6c

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6f

    :try_start_2c
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tmu Uevent Match"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TMUSTATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4e

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tmu state Tripping"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor$TMUObserver;->systemShutdown()V
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_4e} :catch_50

    :cond_4e
    :goto_4e
    :try_start_4e
    monitor-exit p0

    return-void

    :catch_50
    move-exception v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse TMUSTATE from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :catchall_6c
    move-exception v2

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_6c

    throw v2

    :cond_6f
    :try_start_6f
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Thermistor : onUEvent : ERROR : SHOULD NOT BE HERE!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_6c

    goto :goto_4e
.end method
