.class Lcom/android/server/LightsService$WakeLockReleaseTask;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockReleaseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LightsService$WakeLockReleaseTask;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LightsService$WakeLockReleaseTask;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/LightsService$WakeLockReleaseTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$2800(Lcom/android/server/LightsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "LightsService"

    const-string v1, "[SvcLED] wl is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method
