.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$900(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1100()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
