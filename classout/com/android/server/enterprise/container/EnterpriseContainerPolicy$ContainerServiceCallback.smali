.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;
.super Lcom/sec/enterprise/knox/EnterpriseContainerCallback;
.source "EnterpriseContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerServiceCallback"
.end annotation


# instance fields
.field private final mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field private final mAdminUid:I

.field private final mContainerId:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/EnterpriseContainerCallback;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    iput p3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    iput-object p4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-void
.end method


# virtual methods
.method public updateStatus(ILandroid/os/Bundle;)V
    .registers 9

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContainerServiceCallback:updateStatus( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_132

    :pswitch_2d
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - errorCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v3, :cond_5c

    :try_start_57
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    invoke-interface {v3, p1, p2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_114

    :cond_5c
    :goto_5c
    return-void

    :pswitch_5d
    const-string v3, "containerid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container created with Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_53

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->isAdminActive(I)Z

    move-result v3

    if-eqz v3, :cond_95

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    #calls: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z
    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$500(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;II)Z

    goto :goto_53

    :cond_95
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin is no more active: DELETE CONTAINER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_af
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;
    invoke-static {v3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    invoke-interface {v3, v0, p0}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v2

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContainerService.removeContainer("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_dd} :catch_df

    goto/16 :goto_53

    :catch_df
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_53

    :pswitch_eb
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container Removed with Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    if-lez v3, :cond_53

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    #calls: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)Z

    goto/16 :goto_53

    :catch_114
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in updateStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    nop

    :pswitch_data_132
    .packed-switch 0x3e9
        :pswitch_5d
        :pswitch_2d
        :pswitch_eb
    .end packed-switch
.end method
