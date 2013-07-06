.class public Lcom/sec/knox/container/manager/StateManager;
.super Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.source "StateManager.java"


# static fields
.field private static mInstance:Lcom/sec/knox/container/manager/StateManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/knox/container/manager/IStateManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerState:Lcom/sec/knox/container/constants/CSState;

.field private mCtx:Landroid/content/Context;

.field private mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mStateHashMap:Ljava/util/HashMap;
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

.field private mStateTable:[[Lcom/sec/knox/container/constants/CSState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;-><init>(Landroid/content/Context;)V

    const-string v0, "StateManager"

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [[Lcom/sec/knox/container/constants/CSState;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mContainerState:Lcom/sec/knox/container/constants/CSState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    const-string v0, "ECS_Statemanager"

    const-string v1, "StateManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_30f

    const-string v0, "  *******  ECS_StateManager"

    const-string v1, "HashMap is not null, clearing ................"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_30f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;
    .registers 2

    sget-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sec/knox/container/manager/StateManager;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/manager/StateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    :cond_b
    sget-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    return-object v0
.end method

.method private updateStateChangeToClients(ILcom/sec/knox/container/constants/CSState;)I
    .registers 8

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "_ECS_ECS updateStateChangeToClients"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/manager/IStateManagerCallback;

    const-string v2, "ECS_Statemanager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling Client callback function id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Lcom/sec/knox/container/manager/IStateManagerCallback;->onContainerStateChange(ILcom/sec/knox/container/constants/CSState;)V

    goto :goto_d

    :cond_45
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;
    .registers 7

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " V-1: Container Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(IZ)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_61

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " Got the currState in HASH"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current Status in DB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/knox/container/constants/CSState;->getState(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NewState :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_61
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " ************ no entry in HASH **********"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getContainerStatus(Landroid/content/Context;I)I

    move-result v0

    goto :goto_28
.end method

.method public registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I
    .registers 4

    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v1, "_ECS_ECS registerCallbackClient"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Container Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " transitState currentState Id   :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Event Id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getting new State  of State["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from mStateTable["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v2, v2

    if-lez v2, :cond_b6

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v3, v3

    if-ge v2, v3, :cond_b6

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v2, v3, :cond_b6

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ltz v2, :cond_b6

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v2

    if-gez v2, :cond_c1

    :cond_b6
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid array index passed, returning"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;
    :try_end_bf
    .catchall {:try_start_1 .. :try_end_bf} :catchall_154

    :goto_bf
    monitor-exit p0

    return-object v2

    :cond_c1
    :try_start_c1
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v3

    aget-object v1, v2, v3

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1, v2}, Lcom/sec/knox/container/constants/CSState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_149

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State Transit from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ====>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "activestatus"

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    sget-object v4, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v0, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v2

    if-eqz v2, :cond_13e

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " Updated into DB"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v1

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->setContainerStatus(II)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "_ECS_ECS updateStateChangeToClients"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->updateStateChangeToClients(ILcom/sec/knox/container/constants/CSState;)I

    move-object v2, p2

    goto :goto_bf

    :cond_13e
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "Saving STATE into DB FAILED"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    goto/16 :goto_bf

    :cond_149
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "New State is CSSTATE_INVALID"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;
    :try_end_152
    .catchall {:try_start_c1 .. :try_end_152} :catchall_154

    goto/16 :goto_bf

    :catchall_154
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public unRegisterClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method
