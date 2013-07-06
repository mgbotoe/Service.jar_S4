.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_2a

    :cond_5
    return-void

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget v2, v0, v1

    if-eqz v2, :cond_1f

    aget v2, v0, v1

    if-lez v2, :cond_22

    aget v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Process;->movProcGroup(II)V

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    aget v2, v0, v1

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Process;->movProcGroup(II)V

    goto :goto_1f

    :pswitch_data_2a
    .packed-switch 0xcccc
        :pswitch_6
    .end packed-switch
.end method
