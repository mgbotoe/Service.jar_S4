.class Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;
.super Ljava/lang/Object;
.source "EnterpriseContainerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerState"
.end annotation


# instance fields
.field mContainerId:I

.field mIsCanceled:Z

.field mRequestId:I

.field private mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;II)V
    .registers 5

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->this$0:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    iput p2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    iput p3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public clearContainerRequestId(I)V
    .registers 4

    const/4 v1, -0x1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    if-ne v0, p1, :cond_c

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    :cond_c
    return-void
.end method

.method public containerCanceled(I)Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    if-ne p1, v1, :cond_b

    const/4 v1, -0x1

    if-eq p1, v1, :cond_b

    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getContainerIdForRequestId(I)I
    .registers 3

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    return v0
.end method

.method public getContainerState(I)I
    .registers 5

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_15
    return v1

    :cond_16
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public getRequestIdForContainer(I)I
    .registers 3

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    if-ne v0, p1, :cond_7

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public isContainerCanceled(I)Z
    .registers 3

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    if-ne v0, p1, :cond_7

    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public removeContainerState(I)V
    .registers 4

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContainerState(II)V
    .registers 6

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRequestIdForContainer(II)V
    .registers 4

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    iput p2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    return-void
.end method
