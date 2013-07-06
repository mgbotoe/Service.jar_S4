.class Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
.super Landroid/os/Handler;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const-wide/16 v10, 0xbb8

    const/4 v8, 0x3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v5, v5, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_274

    :goto_28
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :pswitch_30
    :try_start_30
    const-string v5, "FaceDetectionService"

    const-string v6, "open()"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    const/16 v6, 0xb

    const/16 v7, 0xa

    iget-object v8, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;
    invoke-static {v8}, Lcom/sec/android/facedetection/FaceDetectionService;->access$500(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/HandlerThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/seccamera/SecCamera;->open(IILandroid/os/Looper;Z)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v6

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$402(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    const-string v5, "FaceDetectionService"

    const-string v6, "open() x"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_56} :catch_113
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_56} :catch_11d

    :goto_56
    :try_start_56
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    if-eqz v5, :cond_140

    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    const/4 v5, 0x1

    invoke-static {v5, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget v6, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    rsub-int v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$602(Lcom/sec/android/facedetection/FaceDetectionService;I)I

    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Faces need to be rotated counter clock-wise "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v7}, Lcom/sec/android/facedetection/FaceDetectionService;->access$600(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " degree."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    const/16 v5, 0x7530

    const/16 v6, 0x7530

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v5, "qualcomm: intelligent-mode"

    const-string v6, "qualcomm: intelligent-mode and no-display"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_138

    const-string v5, "intelligent-mode"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v5, "176x104"

    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->strToSize(Ljava/lang/String;)Lcom/sec/android/facedetection/FaceDetectionService$Size;

    move-result-object v3

    iget v5, v3, Lcom/sec/android/facedetection/FaceDetectionService$Size;->width:I

    iget v6, v3, Lcom/sec/android/facedetection/FaceDetectionService$Size;->height:I

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    :goto_c4
    const-string v5, "vtmode"

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage signal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_10c} :catch_11d

    :goto_10c
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_28

    :catch_113
    move-exception v1

    :try_start_114
    const-string v5, "FaceDetectionService"

    const-string v6, "Unable to open Camera"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11b} :catch_11d

    goto/16 :goto_56

    :catch_11d
    move-exception v1

    const-string v5, "FaceDetectionService"

    const-string v6, "Something goes wrong!!! Retry!"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    invoke-virtual {v5, v4, v10, v11}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10c

    :cond_138
    :try_start_138
    const-string v5, "FaceDetectionService"

    const-string v6, "I don\'t know how to enable the vision camera."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    :cond_140
    const-string v5, "FaceDetectionService"

    const-string v6, "Retry! START_CAMERA!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    const/4 v6, 0x1

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_15d} :catch_11d

    goto :goto_10c

    :pswitch_15e
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    if-eqz v4, :cond_178

    :try_start_166
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->release()V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_178} :catch_19f

    :cond_178
    :goto_178
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4, v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$402(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage signal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_28

    :catch_19f
    move-exception v1

    const-string v4, "FaceDetectionService"

    const-string v5, "Something goes wrong!!! Ignore."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    :pswitch_1a8
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    if-eqz v5, :cond_218

    :try_start_1b0
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v5, v5, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v5

    if-gez v5, :cond_21f

    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "4 direction face detect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v7}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1dd
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->sendFaceDetectionHint(I)V

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_247

    :goto_1f6
    invoke-virtual {v5, v4}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetectionSW_ForFaceService(Z)V

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v5, 0x3b9aca00

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_211

    const-string v4, "FaceDetectionService"

    const-string v5, "START_FD_XXX_EYE failed. No Callback."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catchall {:try_start_1b0 .. :try_end_211} :catchall_249
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_211} :catch_23a

    :cond_211
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    :goto_215
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_218
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_28

    :cond_21f
    :try_start_21f
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    iget-object v7, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v7}, Lcom/sec/android/facedetection/FaceDetectionService;->access$600(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v7

    div-int/lit8 v7, v7, 0x5a

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x4

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$902(Lcom/sec/android/facedetection/FaceDetectionService;I)I
    :try_end_239
    .catchall {:try_start_21f .. :try_end_239} :catchall_249
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_239} :catch_23a

    goto :goto_1dd

    :catch_23a
    move-exception v1

    :try_start_23b
    const-string v4, "FaceDetectionService"

    const-string v5, "START_FD_XXX_EYE failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_242
    .catchall {:try_start_23b .. :try_end_242} :catchall_249

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    goto :goto_215

    :cond_247
    const/4 v4, 0x0

    goto :goto_1f6

    :catchall_249
    move-exception v4

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v5, v5, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    :pswitch_252
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    if-eqz v4, :cond_263

    :try_start_25a
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopFaceDetection()V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_263} :catch_26a

    :cond_263
    :goto_263
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_28

    :catch_26a
    move-exception v1

    const-string v4, "FaceDetectionService"

    const-string v5, "STOP_FD failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_263

    nop

    :pswitch_data_274
    .packed-switch 0x0
        :pswitch_15e
        :pswitch_30
        :pswitch_252
        :pswitch_1a8
        :pswitch_1a8
    .end packed-switch
.end method
