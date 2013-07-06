.class public final Lcom/android/server/ssrm/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field static final BROWSER:Ljava/lang/String; = "com.android.browser"

.field static final CONTACTS:Ljava/lang/String; = "com.android.contacts"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final GMAPS:Ljava/lang/String; = "com.google.android.apps.maps"

.field static final GTALK:Ljava/lang/String; = "com.google.android.talk"

.field static final LAUNCHER:Ljava/lang/String; = "com.sec.android.app.launcher"

.field static final MESSAGING:Ljava/lang/String; = "com.android.mms"

.field static final PHONE:Ljava/lang/String; = "com.android.phone"

.field static final SKYPE:Ljava/lang/String; = "com.skype.raider"

.field private static TAG:Ljava/lang/String; = null

.field static final VIDEO_PLAYER:Ljava/lang/String; = "com.sec.android.app.videoplayer"

.field static final YOUTUBE:Ljava/lang/String; = "com.google.android.youtube"

.field private static busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Controller;->DEBUG:Z

    const-string v0, "Controller"

    sput-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sput-object v2, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sput-object v2, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sput-object v2, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sput-object v2, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boost(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;JLcom/android/server/ssrm/Monitor$SIOPLevel;)V
    .registers 17

    sget-object v3, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: mContext is null"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v3, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    const-string v4, "CustomFrequencyManagerService"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    sget-object v3, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    if-eqz v0, :cond_24

    if-nez v10, :cond_2c

    :cond_24
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: mCustomFreqManager or mPowerManager is null"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_2c
    if-nez p1, :cond_36

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: attr is null"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_36
    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_5b

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "In Controller :: App status Old CPu request exists..removing... = "

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_52

    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_52
    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_5b

    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_5b
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v8

    if-eqz v8, :cond_29a

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c6

    const/4 v1, 0x7

    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_260

    const/4 v3, 0x0

    aget v2, v8, v3

    :goto_7d
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_b4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    if-le v2, v3, :cond_b4

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SSRM is restricting the CPU Boost freq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "based on Device Temperature Level Value Requested = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    :cond_b4
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_c6
    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_128

    const/4 v1, 0x6

    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27d

    const/4 v3, 0x0

    aget v2, v8, v3

    :goto_e2
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_119

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    if-le v2, v3, :cond_119

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSRM is restricting the CPU Boost freq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "based on Device Temperature Level Value Requested = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    :cond_119
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_128
    :goto_128
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_13e

    sget-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_13e

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "In Controller :: App status Old GPu request exists..removing... = "

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_13e
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v9

    if-eqz v9, :cond_2fd

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15c

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_181

    :cond_15c
    const/4 v1, 0x1

    iget-boolean v3, p1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isGpuMax:Z

    if-eqz v3, :cond_2cf

    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b4

    array-length v3, v9

    add-int/lit8 v3, v3, -0x1

    aget v2, v9, v3

    :goto_172
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sget-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_181
    :goto_181
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_197

    sget-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_197

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "In Controller :: App status Old Bus request exists..removing... = "

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_197
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_364

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d9

    :cond_1b5
    iget-boolean v3, p1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isBusMax:Z

    if-eqz v3, :cond_334

    const/16 v1, 0xa

    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_317

    const/4 v3, 0x0

    aget v2, v7, v3

    :goto_1ca
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sget-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_1d9
    :goto_1d9
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_1e8

    sget-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_1e8

    sget-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_1e8
    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_200

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_200
    const/4 v1, 0x3

    iget-boolean v3, p1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isBusMax:Z

    if-eqz v3, :cond_399

    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37e

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: lcd frame rate MAX isn\'t supported."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_218
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_24f

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v3

    if-le v2, v3, :cond_24f

    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSRM is restricting the LCDBoost freq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "based on Device Temperature Level requested freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v2

    :cond_24f
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    sget-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_b

    :cond_260
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_273

    array-length v3, v8

    add-int/lit8 v3, v3, -0x1

    aget v2, v8, v3

    goto/16 :goto_7d

    :cond_273
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_7d

    :cond_27d
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_290

    array-length v3, v8

    add-int/lit8 v3, v3, -0x1

    aget v2, v8, v3

    goto/16 :goto_e2

    :cond_290
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_e2

    :cond_29a
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Controller :: Error While requesting CPU Boost for packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_128

    :cond_2b4
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c5

    const/4 v3, 0x0

    aget v2, v9, v3

    goto/16 :goto_172

    :cond_2c5
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_172

    :cond_2cf
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e0

    const/4 v3, 0x0

    aget v2, v9, v3

    goto/16 :goto_172

    :cond_2e0
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f3

    array-length v3, v9

    add-int/lit8 v3, v3, -0x1

    aget v2, v9, v3

    goto/16 :goto_172

    :cond_2f3
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_172

    :cond_2fd
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Controller :: Error While requesting GPU Boost for packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_181

    :cond_317
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32a

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    aget v2, v7, v3

    goto/16 :goto_1ca

    :cond_32a
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1ca

    :cond_334
    const/16 v1, 0xb

    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_347

    const/4 v3, 0x0

    aget v2, v7, v3

    goto/16 :goto_1ca

    :cond_347
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35a

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    aget v2, v7, v3

    goto/16 :goto_1ca

    :cond_35a
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1ca

    :cond_364
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Controller :: Error While requesting BUS Boost for packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d9

    :cond_37e
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38f

    const/4 v3, 0x0

    aget v2, v7, v3

    goto/16 :goto_218

    :cond_38f
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_218

    :cond_399
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ac

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    aget v2, v7, v3

    goto/16 :goto_218

    :cond_3ac
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3bd

    const/4 v3, 0x0

    aget v2, v7, v3

    goto/16 :goto_218

    :cond_3bd
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_218
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/Controller;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static removeBoost(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost::  Old CPu Max request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_2b
    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_56

    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost::  Old CPu Min request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_56
    sget-object v0, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_81

    sget-object v0, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost:: Old GPu request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_81
    sget-object v0, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost:: Old Bus request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_ac
    sget-object v0, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_d7

    sget-object v0, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost:: Old Lcd request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    :cond_d7
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    return-void
.end method
