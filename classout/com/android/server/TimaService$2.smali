.class Lcom/android/server/TimaService$2;
.super Ljava/util/TimerTask;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TimaService;->changeInterval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/TimaService$2;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/TimaService$2;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/server/TimaService$2;->this$0:Lcom/android/server/TimaService;

    const v1, 0xc350

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/android/server/TimaService;->checkEvent(II)Ljava/lang/String;

    return-void
.end method
