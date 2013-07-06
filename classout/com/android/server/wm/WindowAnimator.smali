.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;,
        Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowAnimator"

.field static final WALLPAPER_ACTION_PENDING:I = 0x1


# instance fields
.field mAboveUniverseLayer:I

.field mAdjResult:I

.field final mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mAppAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDh:I

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDw:I

.field mForceHiding:Z

.field mInitialized:Z

.field mInnerDh:I

.field mInnerDw:I

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mPendingActions:I

.field mPendingLayoutChanges:Landroid/util/SparseIntArray;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    invoke-direct {v0}, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->copyLayoutToAnimParamsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .registers 21

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v15, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->clear()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    invoke-static {}, Landroid/view/Surface;->setAnimationTransaction()V

    :try_start_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v9, 0x0

    :goto_37
    if-ge v9, v11, :cond_c8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v12, :cond_65

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_65

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v15

    if-eqz v15, :cond_81

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_65
    :goto_65
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v14}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_71
    if-ge v10, v3, :cond_c4

    invoke-virtual {v14, v10}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    :cond_81
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v15, 0x0

    iput-object v15, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_91
    .catchall {:try_start_2b .. :try_end_91} :catchall_14e
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_91} :catch_92

    goto :goto_65

    :catch_92
    move-exception v8

    :try_start_93
    const-string v15, "WindowAnimator"

    const-string v16, "Unhandled exception in Window Manager"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_14e

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :goto_9f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    :goto_a9
    if-ltz v9, :cond_153

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_c1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    :cond_c1
    add-int/lit8 v9, v9, -0x1

    goto :goto_a9

    :cond_c4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_37

    :cond_c8
    :try_start_c8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    const/4 v9, 0x0

    :goto_cc
    if-ge v9, v11, :cond_138

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v12, :cond_e7

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    :cond_e7
    iget-object v5, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v4, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v4, :cond_102

    if-eqz v5, :cond_102

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V

    :cond_102
    if-eqz v4, :cond_133

    iget-boolean v15, v4, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v15, :cond_133

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->isDimmingLocked(I)Z

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v15

    if-nez v15, :cond_136

    const/4 v15, 0x1

    :goto_125
    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2, v15}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v15

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_133
    add-int/lit8 v9, v9, 0x1

    goto :goto_cc

    :cond_136
    const/4 v15, 0x0

    goto :goto_125

    :cond_138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v15, :cond_149

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v15}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_149
    .catchall {:try_start_c8 .. :try_end_149} :catchall_14e
    .catch Ljava/lang/RuntimeException; {:try_start_c8 .. :try_end_149} :catch_92

    :cond_149
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto/16 :goto_9f

    :catchall_14e
    move-exception v15

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v15

    :cond_153
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-nez v15, :cond_163

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-lez v15, :cond_166

    :cond_163
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAnimToLayoutLocked()V

    :cond_166
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v15, :cond_182

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    monitor-exit v16

    goto/16 :goto_6

    :catchall_17f
    move-exception v15

    monitor-exit v16
    :try_end_181
    .catchall {:try_start_175 .. :try_end_181} :catchall_17f

    throw v15

    :cond_182
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_6
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2b

    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyLayoutToAnimParamsLocked()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    monitor-enter v8

    const/4 v13, 0x0

    :try_start_8
    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAnimationScheduled:Z

    iget-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    if-nez v13, :cond_10

    monitor-exit v8

    :goto_f
    return-void

    :cond_10
    const/4 v13, 0x0

    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, 0x1

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_30

    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, -0x2

    and-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    :cond_30
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v13, :cond_8e

    const/4 v13, 0x0

    :goto_3d
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v7, 0x0

    :goto_56
    if-ge v7, v10, :cond_c8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13}, Lcom/android/server/wm/WinAnimatorList;->clear()V

    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWinAnimatorLists:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WinAnimatorList;

    if-eqz v12, :cond_7e

    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13, v12}, Lcom/android/server/wm/WinAnimatorList;->addAll(Ljava/util/Collection;)Z

    :cond_7e
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mDimParams:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v3, :cond_a1

    const/4 v13, 0x0

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    :cond_8b
    :goto_8b
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_8e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v13, :cond_98

    const/4 v13, 0x0

    goto :goto_3d

    :cond_98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_3d

    :cond_a1
    iget-object v9, v3, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v13, :cond_c3

    const/4 v6, 0x0

    :goto_a8
    iget-boolean v13, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_8b

    if-eqz v6, :cond_b8

    iget-boolean v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_b8

    iget v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v14, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v13, v14, :cond_8b

    :cond_b8
    new-instance v13, Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-direct {v13, v3}, Lcom/android/server/wm/DimAnimator$Parameters;-><init>(Lcom/android/server/wm/DimAnimator$Parameters;)V

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    goto :goto_8b

    :catchall_c0
    move-exception v13

    monitor-exit v8
    :try_end_c2
    .catchall {:try_start_8 .. :try_end_c2} :catchall_c0

    throw v13

    :cond_c3
    :try_start_c3
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v6, v13, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_a8

    :cond_c8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_d6
    if-ge v7, v1, :cond_f8

    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;

    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v14, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    :cond_f8
    monitor-exit v8
    :try_end_f9
    .catchall {:try_start_c3 .. :try_end_f9} :catchall_c0

    goto/16 :goto_f
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private performAnimationsLocked(I)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .registers 9

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_4f

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v5, :cond_31

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v1, :cond_31

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_34

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    const/4 v5, 0x4

    const-string v6, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_34
    const/16 v5, 0x8

    const-string v6, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_31

    :cond_4f
    return-void
.end method

.method private updateAppWindowsLocked()V
    .registers 13

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_53

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_30

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_30

    move v4, v6

    :goto_1f
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_32

    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_30
    move v4, v7

    goto :goto_1f

    :cond_32
    if-eqz v4, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_2d

    :cond_53
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_5c
    if-ge v3, v1, :cond_a9

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_86

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_86

    move v4, v6

    :goto_75
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_88

    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_83
    :goto_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_86
    move v4, v7

    goto :goto_75

    :cond_88
    if-eqz v4, :cond_83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exiting appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_83

    :cond_a9
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .registers 24

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v10

    iget-object v15, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    iget-object v0, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_15
    if-ltz v12, :cond_b2

    invoke-virtual {v15, v12}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-nez v19, :cond_26

    :cond_23
    :goto_23
    add-int/lit8 v12, v12, -0x1

    goto :goto_15

    :cond_26
    iget v11, v14, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    iget-object v13, v14, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6f

    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_67

    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_47

    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_47

    move-object v9, v13

    :cond_47
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    if-eqz v8, :cond_67

    if-eqz v16, :cond_63

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_67

    :cond_63
    move-object/from16 v16, v14

    move/from16 v17, v8

    :cond_67
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_6f
    iget-object v7, v14, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v7, :cond_23

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23

    iget-boolean v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_90

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_90

    move-object v9, v13

    :cond_90
    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    if-eqz v8, :cond_23

    if-eqz v16, :cond_ac

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_23

    :cond_ac
    move-object/from16 v16, v14

    move/from16 v17, v8

    goto/16 :goto_23

    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v9, :cond_ce

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_ce
    if-eqz v17, :cond_15a

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v13, :cond_10b

    :cond_f6
    invoke-virtual {v15}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_fb
    if-ge v12, v5, :cond_10b

    invoke-virtual {v15, v12}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v19, v0

    if-eqz v19, :cond_130

    iget v6, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13c

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    if-nez v19, :cond_133

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v19

    :goto_123
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v19

    const/high16 v20, 0x200

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13c

    :cond_12f
    :goto_12f
    return-void

    :cond_130
    add-int/lit8 v12, v12, 0x1

    goto :goto_fb

    :cond_133
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v19

    goto :goto_123

    :cond_13c
    if-eqz v18, :cond_12f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    move/from16 v20, v0

    add-int/lit8 v21, v6, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    goto :goto_12f

    :cond_15a
    if-eqz v18, :cond_12f

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_12f
.end method

.method private updateWindowsLocked(I)V
    .registers 28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v2

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    move-object/from16 v25, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    :goto_1e
    if-ltz v16, :cond_250

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_ce

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v19

    if-eqz v23, :cond_79

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_79

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_79

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 2"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_12e

    move-object/from16 v18, v3

    if-nez v23, :cond_b7

    if-eqz v19, :cond_b7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 3"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_b7
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_ce

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_ce

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_ce

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    :cond_ce
    :goto_ce
    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_101

    if-eqz v11, :cond_dd

    iget-boolean v2, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_101

    :cond_dd
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_101

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    const/16 v4, 0x8

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 5"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_101
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v10, :cond_12a

    iget-object v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v2, :cond_12a

    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_11c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_11c
    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_12a

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_12a
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_1e

    :cond_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_ce

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-nez v2, :cond_1a5

    const/4 v15, 0x1

    :goto_144
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1a7

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v2, v4, :cond_1a7

    const/16 v17, 0x1

    :goto_154
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    if-eqz v2, :cond_16b

    if-nez v17, :cond_16b

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_173

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-eqz v2, :cond_173

    :cond_16b
    if-eqz v17, :cond_1aa

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_1aa

    :cond_173
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    :cond_179
    :goto_179
    if-eqz v12, :cond_ce

    const/high16 v2, 0x10

    and-int/2addr v2, v14

    if-eqz v2, :cond_ce

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 4"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_ce

    :cond_1a5
    const/4 v15, 0x0

    goto :goto_144

    :cond_1a7
    const/16 v17, 0x0

    goto :goto_154

    :cond_1aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_208

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_1b8
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_20a

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    :goto_1c6
    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy;->mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_20c

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    if-eqz v12, :cond_1ec

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy mustBeForceHidden hideLw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ec
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    if-eqz v12, :cond_179

    const/high16 v2, 0x80

    and-int v2, v2, v20

    if-eqz v2, :cond_179

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_179

    :cond_208
    const/4 v5, 0x0

    goto :goto_1b8

    :cond_20a
    const/4 v7, 0x0

    goto :goto_1c6

    :cond_20c
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v12

    if-eqz v12, :cond_179

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_237

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_237

    if-nez v21, :cond_229

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :cond_229
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x10

    and-int/2addr v2, v14

    if-eqz v2, :cond_237

    const/16 v22, 0x1

    :cond_237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_247

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_179

    :cond_247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_179

    :cond_250
    if-eqz v18, :cond_28f

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_28f

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_28f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_26b

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    :cond_26b
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    const/16 v16, 0x0

    :goto_275
    move/from16 v0, v16

    if-ge v0, v8, :cond_28f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v13, :cond_28c

    invoke-virtual {v13}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    :cond_28c
    add-int/lit8 v16, v16, 0x1

    goto :goto_275

    :cond_28f
    if-eqz v21, :cond_2bc

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    :goto_297
    if-ltz v16, :cond_2bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_2b9

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    :cond_2b9
    add-int/lit8 v16, v16, -0x1

    goto :goto_297

    :cond_2bc
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    :cond_8
    return-void
.end method

.method clearPendingActions()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6b

    const/4 v4, 0x1

    const-string v9, "  App Animators:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_3d
    if-ltz v2, :cond_6b

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "App Animator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_67

    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v0, p1, v5, p3}, Lcom/android/server/wm/AppWindowAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_64
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    :cond_67
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_64

    :cond_6b
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b7

    if-eqz v4, :cond_78

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_78
    const/4 v4, 0x1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper tokens:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_89
    if-ltz v2, :cond_b7

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_b3

    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v7, p1, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_b0
    add-int/lit8 v2, v2, -0x1

    goto :goto_89

    :cond_b3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_b0

    :cond_b7
    if-eqz v4, :cond_bc

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_bc
    const/4 v2, 0x0

    :goto_bd
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_183

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "DisplayContentsAnimator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    const/4 v3, 0x0

    :goto_e4
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v9

    if-ge v3, v9, :cond_10a

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Window #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    :cond_10a
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v9, :cond_123

    if-nez p3, :cond_116

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iget-boolean v9, v9, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    if-eqz v9, :cond_123

    :cond_116
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_123
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v9, :cond_162

    if-nez p3, :cond_12f

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v9, :cond_13c

    :cond_12f
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimAnimator:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_13c
    :goto_13c
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v9, :cond_16d

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimParams:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator$Parameters;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_14d
    :goto_14d
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v9, :cond_178

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mScreenRotationAnimation:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_15e
    :goto_15e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_bd

    :cond_162
    if-eqz p3, :cond_13c

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimAnimator "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13c

    :cond_16d
    if-eqz p3, :cond_14d

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimParams "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14d

    :cond_178
    if-eqz p3, :cond_15e

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no ScreenRotationAnimation "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15e

    :cond_183
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_1d6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mAnimTransactionSequence="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " mForceHiding="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mCurrentTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " mDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " mInnerDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " mInnerDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    :cond_1d6
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v9, :cond_1f4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f4
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    if-eqz v9, :cond_209

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mPendingActions=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_209
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_21a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_21a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWpAppAnimator="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v9, :cond_23c

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_256

    :cond_23c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mLowerWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUpperWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_256
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_271

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUniverseBackground="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v9, " mAboveUniverseLayer="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    :cond_271
    return-void
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    if-ne p2, p1, :cond_5

    if-eqz p3, :cond_7

    :cond_5
    if-nez p2, :cond_42

    :cond_7
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_d
    if-ltz v0, :cond_42

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1d
    if-ltz v1, :cond_3c

    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v7, :cond_39

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v5, v8}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    const/4 v7, 0x4

    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_3c
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_42
    return-void
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 6

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method isDimmingLocked(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;)Z
    .registers 4

    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method removeDisplayLocked(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-eqz v0, :cond_2c

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/DimSurface;->kill()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    :cond_16
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/DimAnimator;->kill()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .registers 10

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_d
    if-ltz v2, :cond_39

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_36

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_39
    return-void
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method setDisplayDimensions(IIII)V
    .registers 5

    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    iput p2, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    iput p3, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iput p4, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    return-void
.end method

.method setPendingLayoutChanges(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    or-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-void
.end method

.method updateAnimToLayoutLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iput v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mBulkUpdateParams:I

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method
