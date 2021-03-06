.class Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLockList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addLock(Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;)V
    .registers 5

    iget-object v1, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method dumpDVFSLockList()V
    .registers 11

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    if-nez v0, :cond_f

    monitor-exit v3

    :goto_e
    return-void

    :cond_f
    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "############################ Start : CPU BOOST ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_153

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_b4

    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MAX_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_14f

    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MIN_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    :cond_153
    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "############################ END : CPU BOOST ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_18e

    const-string v2, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMaxLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$600(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_1c2

    const-string v2, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMinLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$600(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$600(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c2
    monitor-exit v3

    goto/16 :goto_e

    :catchall_1c5
    move-exception v2

    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_7 .. :try_end_1c7} :catchall_1c5

    throw v2
.end method

.method getAllDVFSLocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_22

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v3, :cond_1f

    iget-object v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    return-object v2
.end method

.method getIndex(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_23

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_20

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_1f
    return v1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_23
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method getMaxOfMinLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_29

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_21

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    move v4, v1

    move v3, v2

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_24
    if-le v1, v4, :cond_21

    move v4, v1

    move v3, v2

    goto :goto_21

    :cond_29
    if-ltz v3, :cond_32

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    :goto_31
    return-object v5

    :cond_32
    const/4 v5, 0x0

    goto :goto_31
.end method

.method getMinOfMaxLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_29

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_21

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    move v4, v1

    move v3, v2

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_24
    if-ge v1, v4, :cond_21

    move v4, v1

    move v3, v2

    goto :goto_21

    :cond_29
    if-ltz v3, :cond_32

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    :goto_31
    return-object v5

    :cond_32
    const/4 v5, 0x0

    goto :goto_31
.end method

.method removeLock(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method
