.class Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceIndicator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetectionService.Indicator"


# instance fields
.field bEnabled:Z

.field bOpened:Z

.field private mContext:Landroid/content/Context;

.field private mDimmedIconId:I

.field private mNormalIconId:I

.field private mService:Landroid/app/StatusBarManager;

.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mContext:Landroid/content/Context;

    const v0, 0x108069d

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mNormalIconId:I

    const v0, 0x108069c

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mDimmedIconId:I

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bOpened:Z

    iput-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bEnabled:Z

    return-void
.end method

.method private update()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bEnabled:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    iget v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mDimmedIconId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_1f
    iget-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bOpened:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    iget v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mDimmedIconId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    invoke-virtual {v0, v1, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_34
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    iget v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mNormalIconId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    invoke-virtual {v0, v1, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized onCameraStatusChanged(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bOpened:Z

    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->update()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingChanged(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->update()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
