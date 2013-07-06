.class Lcom/android/server/power/ShutdownDialog$DrawHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# instance fields
.field final MAX_SLEEP:I

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x42

    iput v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->MAX_SLEEP:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v0, v0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v1, v1, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgHandle:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "ShutdownDialog"

    const-string v1, "image load had been finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void

    :cond_1b
    const-string v0, "ShutdownDialog"

    const-string v1, "image buffer not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x21

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1a

    :cond_2e
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x42

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v2, v2, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, v0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_53
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v2, v2, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v0, v0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_1a

    :catchall_68
    move-exception v0

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_68

    throw v0
.end method
