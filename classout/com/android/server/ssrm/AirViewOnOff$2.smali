.class final Lcom/android/server/ssrm/AirViewOnOff$2;
.super Ljava/lang/Object;
.source "AirViewOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/AirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$fps:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$filePath:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$fps:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$800()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v6}, Lcom/android/server/ssrm/AirViewOnOff;->access$902(Z)Z

    #calls: Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$600()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/16 v0, 0xa

    :goto_10
    if-lez v0, :cond_d

    const-wide/16 v3, 0x32

    :try_start_14
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_4e

    :goto_17
    iget-object v3, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/ssrm/AirViewOnOff;->readFPSFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: Current FPS trim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$fps:I

    invoke-static {v2, v3}, Lcom/android/server/ssrm/AirViewOnOff;->checkFPS(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-static {v6}, Lcom/android/server/ssrm/AirViewOnOff;->access$902(Z)Z

    iget v3, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$fps:I

    #calls: Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus(I)V
    invoke-static {v3}, Lcom/android/server/ssrm/AirViewOnOff;->access$1000(I)V

    goto :goto_d

    :catch_4e
    move-exception v1

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: exception msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_6e
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method
