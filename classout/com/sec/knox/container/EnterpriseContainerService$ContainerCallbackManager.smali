.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerCallbackManager"
.end annotation


# instance fields
.field mContainerCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .registers 3

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .registers 6

    if-eqz p2, :cond_26

    if-lez p1, :cond_26

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_27

    if-eqz p2, :cond_27

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    :goto_26
    return-void

    :cond_27
    if-eqz p2, :cond_26

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method public containsKey(I)Z
    .registers 4

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
