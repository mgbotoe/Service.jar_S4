.class Lcom/android/server/LightsService$2;
.super Landroid/os/HandlerThread;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/server/LightsService;->access$802(Lcom/android/server/LightsService;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    :try_start_11
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$1602(Lcom/android/server/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1500(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const v3, 0x1110019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    #setter for: Lcom/android/server/LightsService;->mUsePatternLED:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$302(Lcom/android/server/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const v3, 0x1110018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    #setter for: Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$1702(Lcom/android/server/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1700(Lcom/android/server/LightsService;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$1802(Lcom/android/server/LightsService;Z)Z

    :cond_50
    invoke-static {}, Lcom/android/server/LightsService;->access$1900()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SPH-D710"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-static {}, Lcom/android/server/LightsService;->access$1900()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SCH-R760"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-static {}, Lcom/android/server/LightsService;->access$1900()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SPH-M830"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-static {}, Lcom/android/server/LightsService;->access$1900()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SPH-M950"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    :cond_80
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$1802(Lcom/android/server/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/LightsService;->mUsePatternLED:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$302(Lcom/android/server/LightsService;Z)Z

    :cond_8c
    const-string v1, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SvcLED] GlobalConfig.GLOBALCONFIG_SETTINGS_SUPPORT_LED_INDICATOR : true  mUseSoftwareAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/LightsService;->access$1700(Lcom/android/server/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUseLEDAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/LightsService;->access$1800(Lcom/android/server/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUsePatternLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUsePatternLED:Z
    invoke-static {v4}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_cc
    move-exception v1

    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_11 .. :try_end_ce} :catchall_cc

    throw v1
.end method
