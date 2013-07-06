.class final Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayContentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x3

.field private static final MESSAGE_ON_ROTATION_CHANGED:I = 0x5

.field private static final MESSAGE_ON_WINDOW_LAYERS_CHANGED:I = 0x6

.field private static final MESSAGE_ON_WINDOW_TRANSITION:I = 0x4

.field private static final MESSAGE_SHOW_VIEWPORT_FRAME:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

.field private final mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

.field private final mWindowAnimationScale:F

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$Viewport;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;JF)V
    .registers 12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iput-object p4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowManagerService:Landroid/view/IWindowManager;

    iput-object p5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    iput-wide p6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mLongAnimationDuration:J

    iput p8, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowAnimationScale:F

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

    :try_start_27
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->addDisplayContentChangeListener(ILandroid/view/IDisplayContentChangeListener;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_38} :catch_39

    :goto_38
    return-void

    :catch_39
    move-exception v0

    goto :goto_38
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Landroid/graphics/Rect;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRectangleOnScreenRequested(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;ILandroid/view/WindowInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnWindowTransition(ILandroid/view/WindowInfo;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRotationChanged(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    return-object v0
.end method

.method private ensureRectangleInMagnifiedRegionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v5, v6, :cond_55

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_4e

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    :goto_27
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_71

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v2, v5

    :goto_37
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionCenterX()F

    move-result v5

    add-float v3, v5, v1

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionCenterY()F

    move-result v5

    add-float v4, v5, v2

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_c

    :cond_4e
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    goto :goto_27

    :cond_55
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_62

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    goto :goto_27

    :cond_62
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_6f

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    goto :goto_27

    :cond_6f
    const/4 v1, 0x0

    goto :goto_27

    :cond_71
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_7e

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v2, v5

    goto :goto_37

    :cond_7e
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_8b

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v2, v5

    goto :goto_37

    :cond_8b
    const/4 v2, 0x0

    goto :goto_37
.end method

.method private handleOnRectangleOnScreenRequested(Landroid/graphics/Rect;Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->ensureRectangleInMagnifiedRegionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_8
.end method

.method private handleOnRotationChanged(I)V
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->resetMagnificationIfNeeded()V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v3, v4, v4}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->rotationChanged()V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->recomputeBounds(Z)V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_31

    const-wide/16 v3, 0x2

    iget-wide v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mLongAnimationDuration:J

    mul-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowAnimationScale:F

    mul-float/2addr v3, v4

    float-to-long v0, v3

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_31
    return-void
.end method

.method private handleOnWindowTransition(ILandroid/view/WindowInfo;)V
    .registers 9

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_b

    sparse-switch p1, :sswitch_data_6e

    :cond_b
    :goto_b
    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7e3

    if-eq v4, v5, :cond_29

    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7db

    if-eq v4, v5, :cond_29

    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7dc

    if-eq v4, v5, :cond_29

    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7d4

    if-eq v4, v5, :cond_29

    iget v4, p2, Landroid/view/WindowInfo;->type:I
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_39

    const/16 v5, 0x7d9

    if-ne v4, v5, :cond_2c

    :cond_29
    sparse-switch p1, :sswitch_data_88

    :cond_2c
    :goto_2c
    packed-switch p1, :pswitch_data_9a

    :cond_2f
    :goto_2f
    :pswitch_2f
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Landroid/view/WindowInfo;->recycle()V

    :cond_34
    return-void

    :sswitch_35
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->resetMagnificationIfNeeded()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_b

    :catchall_39
    move-exception v4

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/view/WindowInfo;->recycle()V

    :cond_3f
    throw v4

    :sswitch_40
    :try_start_40
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->recomputeBounds(Z)V

    goto :goto_2c

    :pswitch_4c
    if-eqz v1, :cond_2f

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    sparse-switch v3, :sswitch_data_a4

    goto :goto_2f

    :sswitch_5c
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->ensureRectangleInMagnifiedRegionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_6d
    .catchall {:try_start_40 .. :try_end_6d} :catchall_39

    goto :goto_2f

    :sswitch_data_6e
    .sparse-switch
        0x1006 -> :sswitch_35
        0x1008 -> :sswitch_35
        0x100a -> :sswitch_35
        0x100d -> :sswitch_35
        0x100e -> :sswitch_35
        0x200c -> :sswitch_35
    .end sparse-switch

    :sswitch_data_88
    .sparse-switch
        0x1001 -> :sswitch_40
        0x1003 -> :sswitch_40
        0x2002 -> :sswitch_40
        0x2004 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x1001
        :pswitch_4c
        :pswitch_2f
        :pswitch_4c
    .end packed-switch

    :sswitch_data_a4
    .sparse-switch
        0x2 -> :sswitch_5c
        0x3e8 -> :sswitch_5c
        0x3e9 -> :sswitch_5c
        0x3ea -> :sswitch_5c
        0x3eb -> :sswitch_5c
        0x7d1 -> :sswitch_5c
        0x7d2 -> :sswitch_5c
        0x7d3 -> :sswitch_5c
        0x7d5 -> :sswitch_5c
        0x7d6 -> :sswitch_5c
        0x7d7 -> :sswitch_5c
        0x7d8 -> :sswitch_5c
        0x7d9 -> :sswitch_5c
        0x7da -> :sswitch_5c
        0x7e4 -> :sswitch_5c
        0x7e8 -> :sswitch_5c
        0x7ec -> :sswitch_5c
    .end sparse-switch
.end method

.method private resetMagnificationIfNeeded()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    :cond_1c
    return-void
.end method

.method private rotationToString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const-string v0, "ROTATION_0"

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "ROATATION_90"

    goto :goto_1e

    :pswitch_22
    const-string v0, "ROATATION_180"

    goto :goto_1e

    :pswitch_25
    const-string v0, "ROATATION_270"

    goto :goto_1e

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private windowTransitionToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_3a

    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    :sswitch_6
    const-string v0, "TRANSIT_UNSET"

    goto :goto_5

    :sswitch_9
    const-string v0, "TRANSIT_NONE"

    goto :goto_5

    :sswitch_c
    const-string v0, "TRANSIT_ENTER"

    goto :goto_5

    :sswitch_f
    const-string v0, "TRANSIT_EXIT"

    goto :goto_5

    :sswitch_12
    const-string v0, "TRANSIT_SHOW"

    goto :goto_5

    :sswitch_15
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_5

    :sswitch_18
    const-string v0, "TRANSIT_PREVIEW_DONE"

    goto :goto_5

    :sswitch_1b
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_5

    :sswitch_1e
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_5

    :sswitch_21
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_5

    :sswitch_24
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_5

    :sswitch_27
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_5

    :sswitch_2a
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_5

    :sswitch_2d
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_5

    :sswitch_30
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_5

    :sswitch_33
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_5

    :sswitch_36
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_5

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x1 -> :sswitch_6
        0x0 -> :sswitch_9
        0x5 -> :sswitch_18
        0x1001 -> :sswitch_c
        0x1003 -> :sswitch_12
        0x1006 -> :sswitch_1b
        0x1008 -> :sswitch_21
        0x100a -> :sswitch_27
        0x100d -> :sswitch_30
        0x100e -> :sswitch_33
        0x2000 -> :sswitch_15
        0x2002 -> :sswitch_f
        0x2007 -> :sswitch_1e
        0x2009 -> :sswitch_24
        0x200b -> :sswitch_2a
        0x200c -> :sswitch_2d
        0x200f -> :sswitch_36
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeDisplayContentChangeListener(ILandroid/view/IDisplayContentChangeListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
