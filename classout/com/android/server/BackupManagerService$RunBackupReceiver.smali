.class Lcom/android/server/BackupManagerService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string v2, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_11
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_3a

    move-result v2

    if-lez v2, :cond_3d

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_3a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1b .. :try_end_2f} :catch_31

    :goto_2f
    :try_start_2f
    monitor-exit v3

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    const-string v2, "BackupManagerService"

    const-string v4, "Run init intent cancelled"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3a

    throw v2

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    :cond_5d
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v2, :cond_6a

    :cond_63
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/BackupManagerService;->needUpdateBackupAlarm:Z

    monitor-exit v3

    goto :goto_30

    :cond_6a
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-nez v2, :cond_8d

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2f

    :cond_8d
    const-string v2, "BackupManagerService"

    const-string v4, "Backup time but one already running"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_95
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup pass but e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_3d .. :try_end_bf} :catchall_3a

    goto/16 :goto_2f
.end method
