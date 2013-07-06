.class Lcom/android/server/am/ActivityManagerService$22;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$shutdownIntent:Landroid/content/Intent;

.field final synthetic val$shutdownReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserStartedState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserStartedState;Landroid/content/Intent;Landroid/content/IIntentReceiver;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$22;->val$uss:Lcom/android/server/am/UserStartedState;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$shutdownIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 23

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$uss:Lcom/android/server/am/UserStartedState;

    iget v0, v0, Lcom/android/server/am/UserStartedState;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    monitor-exit v1

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$uss:Lcom/android/server/am/UserStartedState;

    const/4 v2, 0x3

    iput v2, v0, Lcom/android/server/am/UserStartedState;->mState:I

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2b

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$shutdownIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v13, 0x3e8

    iget v14, p0, Lcom/android/server/am/ActivityManagerService$22;->val$userId:I

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZIII)I
    invoke-static/range {v0 .. v14}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZIII)I

    goto :goto_b

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
