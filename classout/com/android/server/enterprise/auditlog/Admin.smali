.class public Lcom/android/server/enterprise/auditlog/Admin;
.super Ljava/lang/Object;
.source "Admin.java"

# interfaces
.implements Lcom/android/server/enterprise/auditlog/IObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "Admin"


# instance fields
.field private mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

.field private mBegin:J

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mEnd:J

.field private mIptablesLogging:Z

.field private volatile mIsDumping:Z

.field private mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

.field private mMdmLogging:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    return-void
.end method


# virtual methods
.method deleteAllFiles()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->deleteAllFiles()V

    return-void
.end method

.method dump(JJLandroid/os/ParcelFileDescriptor;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    if-nez v1, :cond_21

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    const-string v1, "swap"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;->swapFiles(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    :cond_21
    return v0
.end method

.method getCriticalLogSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    return v0
.end method

.method getIptablesLogging()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    return v0
.end method

.method getMDMLogging()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return v0
.end method

.method getMaximumLogSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDumpFinished(ZZ)V
    .registers 8

    const/4 v4, 0x0

    const-string v1, "Admin"

    const-string v2, "notifyDumpFinished - Begin"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setTypeOfDump(Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, v4, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.dump.audit.log.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    if-eqz p1, :cond_5b

    const-string v1, "Admin"

    const-string v2, "Dump success! Sending Intent!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Admin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mdm.intent.extra.audit.log.result"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_4c
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "Admin"

    const-string v2, "notifyDumpFinished - End"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5b
    const-string v1, "Admin"

    const-string v2, "Dump failed! Sending Intent!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    const-string v2, "Dump failed! Sending Intent!"

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mdm.intent.extra.audit.log.result"

    const/16 v2, -0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4c
.end method

.method public notifyReadyToDump(Z)V
    .registers 10

    if-eqz p1, :cond_2c

    new-instance v0, Lcom/android/server/enterprise/auditlog/Dumper;

    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/Dumper;-><init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V

    :cond_1f
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setDeviceInfo(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Dumper;->start()V

    :cond_2c
    return-void
.end method

.method setBootCompleted(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBootCompleted(Z)V

    return-void
.end method

.method setCriticalLogSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setCriticalLogSize(I)V

    return-void
.end method

.method setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method setFilter(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_10

    new-instance v0, Lcom/android/server/enterprise/auditlog/Filter;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/Filter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/Filter;->setFilter(Ljava/lang/String;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    const/4 v0, 0x1

    goto :goto_f
.end method

.method setIptablesLogging(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    return-void
.end method

.method setMDMLogging(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return-void
.end method

.method setMaximumLogSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setMaximumLogSize(I)V

    return-void
.end method

.method shutdown()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->shutdown()V

    return-void
.end method

.method write(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->write(Ljava/lang/String;)V

    return-void
.end method
