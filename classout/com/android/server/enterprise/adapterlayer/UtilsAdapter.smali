.class public Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;
.super Ljava/lang/Object;
.source "UtilsAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    return-void
.end method

.method public static updateAccountManagerCache()V
    .registers 4

    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    :cond_f
    return-void
.end method
