.class Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;
.super Ljava/lang/Object;
.source "ContainerStorageProvider.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerDbErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;->this$0:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContainerStorageProvider"

    const-string v1, "#######                                             ######"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContainerStorageProvider"

    const-string v1, "####### !! CONTAINER DATABASE CORRUPTION OCCURED !! ######"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContainerStorageProvider"

    const-string v1, "#######                                             ######"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
