.class public Lcom/android/server/ssrm/Monitor$SysfsTable;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysfsTable"
.end annotation


# instance fields
.field aclOnOffPath:Ljava/lang/String;

.field apTemperaturePath:Ljava/lang/String;

.field chargingCurrentPath:Ljava/lang/String;

.field cpTemperaturePath:Ljava/lang/String;

.field public isAclOnOffValid:Z

.field public isApTemperatureValid:Z

.field public isChargingCurrentValid:Z

.field public isCpTemperatureValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$SysfsTable;->checkSysfsReady()V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: apTemperaturePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: cpTemperaturePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: chargingCurrentPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: aclOnOffPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static checkCpSysfsAccesible()V
    .registers 5

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4700()Lcom/android/server/ssrm/Monitor$SysfsTable;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4700()Lcom/android/server/ssrm/Monitor$SysfsTable;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$SysfsTable$1;

    invoke-direct {v2}, Lcom/android/server/ssrm/Monitor$SysfsTable$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpSysfsReadThread:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method


# virtual methods
.method checkSysfsReady()V
    .registers 7

    const/4 v5, 0x1

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_16

    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z

    :cond_16
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2b

    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    :cond_2b
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_40

    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    :cond_40
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_55

    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    :cond_55
    return-void
.end method
