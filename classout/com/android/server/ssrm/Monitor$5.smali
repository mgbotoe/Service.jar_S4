.class final Lcom/android/server/ssrm/Monitor$5;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->onSIPIntentReceived(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v2

    if-nez v2, :cond_7

    :goto_6
    return-void

    :cond_7
    const-wide/16 v3, 0x64

    :try_start_9
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_54

    :goto_c
    iget-boolean v3, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    iget-boolean v4, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    if-eq v3, v4, :cond_74

    iget-boolean v3, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    iput-boolean v3, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    sget-boolean v3, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v3, :cond_23

    invoke-static {}, Lcom/android/server/ssrm/TouchBusBooster;->getInstance()Lcom/android/server/ssrm/TouchBusBooster;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/TouchBusBooster;->onSIPEventCallback(Z)V

    :cond_23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SSRM_STATUS_NAME"

    const-string v4, "SIP_show"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SSRM_STATUS_VALUE"

    iget-boolean v4, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "PackageName"

    const-string v4, "android.inputmethodservice"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "PID"

    iget v4, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPPidReport:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1500()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_50
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    goto :goto_6

    :catch_54
    move-exception v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSIPIntentReceived:: InterruptedException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_74
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSIPIntentReceived:: Redundant SIP visibility update will be ignored."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method
