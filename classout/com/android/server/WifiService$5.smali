.class Lcom/android/server/WifiService$5;
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

    iput-object p1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/server/WifiService;->simState:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$3502(Lcom/android/server/WifiService;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM STATE CHANGED [state] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string v0, "LOADED"

    iget-object v1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "CARD_IO_ERROR"

    iget-object v1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->simState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_59
    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->isFirstBootMccMnc:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->isBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "WifiService"

    const-string v1, "isSimCheked will be true "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/WifiService;->isSimCheked:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$3402(Lcom/android/server/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v0}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    :cond_81
    return-void
.end method
