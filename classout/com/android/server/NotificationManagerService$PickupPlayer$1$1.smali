.class Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$PickupPlayer$1;->onMotionListener(Landroid/hardware/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$PickupPlayer$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "Pickup - mInCall is true, vibration will be returned."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_20
    return-void

    :cond_21
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "Pickup - mVibrator.vibrateImmVibe()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    #getter for: Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B
    invoke-static {v1}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$2900(Lcom/android/server/NotificationManagerService$PickupPlayer;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_20
.end method
