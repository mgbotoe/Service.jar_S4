.class Lcom/sec/android/facedetection/FaceDetectionService$2$2;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/facedetection/FaceDetectionService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;


# direct methods
.method constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService$2;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$2$2;->this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/high16 v4, 0x2

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$2$2;->this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;

    iget-object v2, v2, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/facedetection/FaceDetectionService;->access$1000(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$2$2;->this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;

    iget-object v2, v2, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/facedetection/FaceDetectionService;->access$1000(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$2$2;->this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;

    iget-object v2, v2, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/facedetection/FaceDetectionService;->access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "System Error!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "Fatal System Error!!!!\nDumpstate done.\nRun *#9900# and copy log now!!!!!!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "OK"

    new-instance v3, Lcom/sec/android/facedetection/FaceDetectionService$2$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/facedetection/FaceDetectionService$2$2$1;-><init>(Lcom/sec/android/facedetection/FaceDetectionService$2$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
