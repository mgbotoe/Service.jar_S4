.class Lcom/android/server/power/ShutdownDialog$StateFinish;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateFinish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StateFinish;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StateFinish;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateFinish;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StatePrepare;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateFinish;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateFinish;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StatePrepare;

    move-result-object v1

    #setter for: Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$702(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    return-void
.end method

.method public start()V
    .registers 3

    const-string v0, "ShutdownDialog"

    const-string v1, "already finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public started()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public waitForFinish(I)Z
    .registers 4

    const-string v0, "ShutdownDialog"

    const-string v1, "already finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
