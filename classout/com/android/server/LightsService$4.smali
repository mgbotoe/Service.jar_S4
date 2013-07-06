.class Lcom/android/server/LightsService$4;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    const/4 v2, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED] onSensorChanged::light value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    :try_start_25
    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mForcedSvcLEDTask:Lcom/android/server/LightsService$ForcedSvcLEDTask;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDTask;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x0

    #calls: Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;Z)V

    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #calls: Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V
    invoke-static {v1, v0}, Lcom/android/server/LightsService;->access$2300(Lcom/android/server/LightsService;I)V

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_7b

    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2500(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$2400(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2500(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I
    invoke-static {v5}, Lcom/android/server/LightsService;->access$2600(Lcom/android/server/LightsService;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/LightsService;->access$2400(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mWakeLockReleaseTask:Lcom/android/server/LightsService$WakeLockReleaseTask;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$2700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$WakeLockReleaseTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1
.end method
