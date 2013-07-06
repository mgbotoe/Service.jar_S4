.class Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SIPStatusInfo"
.end annotation


# instance fields
.field public isSIPEventFilterThreadRunning:Z

.field public isSIPVisible:Z

.field public latestSIPPidReport:I

.field public latestSIPVisibleReport:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    iput v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPPidReport:I

    return-void
.end method

.method public static getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .registers 1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4500()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;-><init>()V

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$4502(Lcom/android/server/ssrm/Monitor$SIPStatusInfo;)Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    :cond_e
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4500()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    return-object v0
.end method
