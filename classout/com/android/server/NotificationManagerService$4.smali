.class Lcom/android/server/NotificationManagerService$4;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2700(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$2702(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_2c
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v0, v2}, Lcom/android/server/NotificationManagerService;->access$602(Lcom/android/server/NotificationManagerService;Z)Z

    return-void
.end method
