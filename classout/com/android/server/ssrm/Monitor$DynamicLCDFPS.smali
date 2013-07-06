.class abstract Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DynamicLCDFPS"
.end annotation


# instance fields
.field protected currentFPS:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method protected constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->resetFPS()V

    return-void
.end method


# virtual methods
.method protected calculateCurrentFPS()I
    .registers 3

    const/4 v0, 0x3

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    sget v1, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    if-lez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    if-eqz v1, :cond_17

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_6

    :cond_17
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    goto :goto_6

    :cond_21
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected abstract getSysFSPath()Ljava/lang/String;
.end method

.method public handleMonitorStateChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateFPS()V

    return-void
.end method

.method public initialize()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateFPS()V

    return-void
.end method

.method public resetFPS()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    return-void
.end method

.method protected updateFPS()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->calculateCurrentFPS()I

    move-result v0

    iget v1, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    if-eq v1, v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateSysFSFile(I)V

    iput v0, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    :cond_d
    return-void
.end method

.method protected updateSysFSFile(I)V
    .registers 6

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSysFSFile: fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_30

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    #calls: Lcom/android/server/ssrm/Monitor;->isFPSValid(I)Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor;->access$4400(I)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    :goto_3d
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->getInstance()Lcom/android/server/ssrm/AirViewOnOff;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/ssrm/AirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V

    goto :goto_2f

    :cond_48
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sys FS file wasn\'t updated!!!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method
