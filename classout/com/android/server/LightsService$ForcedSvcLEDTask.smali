.class Lcom/android/server/LightsService$ForcedSvcLEDTask;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcedSvcLEDTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LightsService$ForcedSvcLEDTask;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    const-string v0, "LightsService"

    const-string v2, "[SvcLED] ForcedSvcLEDTask is running."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    const/4 v2, 0x0

    #calls: Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;Z)V

    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    const/16 v2, 0x13

    #calls: Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/LightsService;->access$2300(Lcom/android/server/LightsService;I)V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2c

    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mWakeLockReleaseTask:Lcom/android/server/LightsService$WakeLockReleaseTask;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$WakeLockReleaseTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method
