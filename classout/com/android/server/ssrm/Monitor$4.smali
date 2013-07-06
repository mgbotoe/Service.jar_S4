.class Lcom/android/server/ssrm/Monitor$4;
.super Landroid/app/IProcessObserver$Stub;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$4;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4

    return-void
.end method

.method public onImportanceChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 4

    sget v0, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    if-ne v0, p1, :cond_14

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_14
    return-void
.end method
