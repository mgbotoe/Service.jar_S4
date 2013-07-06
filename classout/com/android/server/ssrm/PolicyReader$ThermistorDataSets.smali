.class public Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThermistorDataSets"
.end annotation


# instance fields
.field private ACL:Ljava/lang/String;

.field private ARMCore:I

.field private ARMFreq:I

.field private Flash:Ljava/lang/String;

.field private chargeCurent:I

.field private mLcdBrightness:I

.field private mLevel:I

.field private mRecordingStop:Ljava/lang/String;

.field private mTemprature:I

.field final synthetic this$0:Lcom/android/server/ssrm/PolicyReader;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/PolicyReader;)V
    .registers 4

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->this$0:Lcom/android/server/ssrm/PolicyReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAclState()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1a
    if-nez v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    move v1, v0

    goto :goto_1d
.end method

.method public getArmCore()I
    .registers 2

    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    return v0
.end method

.method public getArmFreq()I
    .registers 2

    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    return v0
.end method

.method public getChargeCurrent()I
    .registers 2

    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    return v0
.end method

.method public getFlashState()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1a
    if-nez v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    move v1, v0

    goto :goto_1d
.end method

.method public getLcdBrightness()I
    .registers 2

    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    return v0
.end method

.method public getSurfaceTemp()I
    .registers 2

    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    return v0
.end method

.method public isRecordingStop()Z
    .registers 3

    const-string v0, "on"

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setAcl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    return-void
.end method

.method public setArmCore(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    return-void
.end method

.method public setArmFreq(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    return-void
.end method

.method public setChargeCurrent(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    return-void
.end method

.method public setLcdBrightness(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    return-void
.end method

.method public setRecordingStop(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    return-void
.end method

.method public setSurfaceTemp(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    return-void
.end method
