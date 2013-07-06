.class Lcom/android/server/ssrm/Monitor$3$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor$3;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$3$1;->this$0:Lcom/android/server/ssrm/Monitor$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-wide/16 v4, 0x0

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1500()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JF_BOOT_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$3102(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1500()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JF_BOOT_BOOSTER"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$3202(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3300()[I

    move-result-object v0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3100()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$3302([I)[I

    :cond_33
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3300()[I

    move-result-object v0

    if-eqz v0, :cond_d8

    :try_start_39
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JF_BOOT_BOOSTER:: mBootMinFreqHelper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3300()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JF_BOOT_BOOSTER:: mBootMaxFreqHelper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3100()Landroid/os/DVFSHelper;

    move-result-object v2

    const v3, 0x16e360

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3100()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "CPU"

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3300()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3200()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "CPU"

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3100()Landroid/os/DVFSHelper;

    move-result-object v2

    const v3, 0x16e360

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JF_BOOT_BOOSTER:: acquire"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3100()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3200()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JF_BOOT_BOOSTER:: release"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3100()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3200()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V
    :try_end_d8
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_d8} :catch_d9

    :cond_d8
    :goto_d8
    return-void

    :catch_d9
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d8
.end method
