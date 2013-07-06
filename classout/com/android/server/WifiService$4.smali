.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->isBootCompleted:Z
    invoke-static {v0, v3}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    #setter for: Lcom/android/server/WifiService;->simState_int:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$3102(Lcom/android/server/WifiService;I)I

    const-string v0, "WifiService"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/WifiService;->access$3200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_BOOT_COMPLETED [simState_int] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState_int:I
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState_int:I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)I

    move-result v0

    if-eq v0, v3, :cond_6a

    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState_int:I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState_int:I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->isFirstBootMccMnc:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_6a
    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "WifiService"

    const-string v1, "ACTION_BOOT_COMPLETED isSimCheked will be true "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->isSimCheked:Z
    invoke-static {v0, v3}, Lcom/android/server/WifiService;->access$3402(Lcom/android/server/WifiService;Z)Z

    :cond_7c
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v0}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    return-void
.end method
