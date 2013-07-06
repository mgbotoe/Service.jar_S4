.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Ljava/lang/Thread;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v2, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgHandle:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgDecodeBuffer:[I
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgLoadFrame(I[I)I

    move-result v9

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load frame: ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_33} :catch_a5

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v1, v1, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgDecodeBuffer:[I
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->width:I
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->width:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)I

    move-result v6

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->height:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v1, v1, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, v0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_70
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v3, v3, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x3

    iput v3, v0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v0, v0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget v3, v3, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_b7

    if-ne v0, v3, :cond_93

    :try_start_8a
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v0, v0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_b7
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_93} :catch_ae

    :cond_93
    :goto_93
    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_b7

    if-gtz v9, :cond_b

    :goto_96
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgHandle:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgClose(I)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #setter for: Lcom/android/server/power/ShutdownDialog;->qmgHandle:I
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownDialog;->access$802(Lcom/android/server/power/ShutdownDialog;I)I

    return-void

    :catch_a5
    move-exception v8

    const-string v0, "ShutdownDialog"

    const-string v1, "qmgLoadFrame return < 0"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_96

    :catch_ae
    move-exception v8

    :try_start_af
    const-string v0, "ShutdownDialog"

    const-string v3, "InterruptedException"

    invoke-static {v0, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_93

    :catchall_b7
    move-exception v0

    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_b7

    throw v0
.end method
