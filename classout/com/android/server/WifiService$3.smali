.class Lcom/android/server/WifiService$3;
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

.field final synthetic val$IMS_LOWSIGNAL_STATUS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iput-object p2, p0, Lcom/android/server/WifiService$3;->val$IMS_LOWSIGNAL_STATUS:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/WifiService$3;->val$IMS_LOWSIGNAL_STATUS:Ljava/lang/String;

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mLowSignal:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/server/WifiService;->mNotificationRepeatTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/WifiService;->access$2702(Lcom/android/server/WifiService;J)J

    :cond_20
    iget-object v1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mLowSignal:Z
    invoke-static {v1, v0}, Lcom/android/server/WifiService;->access$2502(Lcom/android/server/WifiService;Z)Z

    iget-object v1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mLowSignalNWs:I
    invoke-static {v3}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)I

    move-result v3

    #calls: Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V
    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;ZIZI)V

    :cond_39
    return-void
.end method
