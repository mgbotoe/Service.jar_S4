.class Lcom/android/server/power/ShutdownDialog$StateDrawing;
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
    name = "StateDrawing"
.end annotation


# instance fields
.field imageLoadThread:Ljava/lang/Thread;

.field soundThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Ljava/lang/Thread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "ShutdownDialog"

    const-string v1, "can\'t prepare while draw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/power/ShutdownDialog$SoundThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$SoundThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public started()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public waitForFinish(I)Z
    .registers 5

    const-string v0, "ShutdownDialog"

    const-string v1, "animation finish wait"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Ljava/lang/Thread;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Ljava/lang/Thread;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_1f} :catch_33

    :cond_1f
    :goto_1f
    const-string v0, "ShutdownDialog"

    const-string v1, "animation finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mStateFinish:Lcom/android/server/power/ShutdownDialog$StateFinish;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1700(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateFinish;

    move-result-object v1

    #setter for: Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$702(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    const/4 v0, 0x0

    return v0

    :catch_33
    move-exception v0

    goto :goto_1f
.end method
