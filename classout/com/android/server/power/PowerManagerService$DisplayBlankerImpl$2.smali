.class Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5000(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "PowerManagerService"

    const-string v2, "mPrintWakeLockDuringScreenOffRunnable : screen is on, just return"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->printWakeLockLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5700(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5514(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const-wide/32 v2, 0x1b7740

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5500(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    #setter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5502(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5500(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    goto :goto_24

    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_58

    throw v0
.end method
