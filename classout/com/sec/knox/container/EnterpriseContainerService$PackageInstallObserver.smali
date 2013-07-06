.class Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field containerId:I

.field finished:Z

.field pkgName:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 9

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageInstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v3, 0x1

    :try_start_1a
    iput-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_3d

    move-result-object v2

    const/4 v3, 0x0

    :try_start_2b
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_33} :catch_38

    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catch_38
    move-exception v0

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    goto :goto_33

    :catchall_3d
    move-exception v3

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_3d

    throw v3
.end method
