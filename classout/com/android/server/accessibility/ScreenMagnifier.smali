.class public final Lcom/android/server/accessibility/ScreenMagnifier;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;,
        Lcom/android/server/accessibility/ScreenMagnifier$Viewport;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;,
        Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;,
        Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;,
        Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;,
        Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_MAGNIFICATION_CONTROLLER:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_ROTATION:Z = false

.field private static final DEBUG_SCALING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final DEBUG_TRANSFORMATION:Z = false

.field private static final DEBUG_VIEWPORT_WINDOW:Z = false

.field private static final DEBUG_WINDOW_TRANSITIONS:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final DEFAULT_SCREEN_MAGNIFICATION_AUTO_UPDATE:I = 0x1

.field private static final DEFAULT_WINDOW_ANIMATION_SCALE:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MULTI_TAP_TIME_SLOP_ADJUSTMENT:I = 0x32

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

.field private final mDisplayContentObserver:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

.field private final mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLongAnimationDuration:I

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field private final mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

.field private final mShortAnimationDuration:I

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTranslationEnabledBeforePan:Z

.field private final mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

.field private final mWindowAnimationScale:F

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerService:Landroid/view/IWindowManager;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4020

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mShortAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "window_animation_scale"

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowAnimationScale:F

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mShortAnimationDuration:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {v0, p1, v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mShortAnimationDuration:I

    int-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;Landroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    iget v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:I

    int-to-long v6, v6

    iget v8, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowAnimationScale:F

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$Viewport;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;JF)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayContentObserver:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$Viewport;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/IWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerService:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$4100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/ScreenMagnifier;)F
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    return v0
.end method

.method private getPersistedScale()F
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    const/high16 v2, 0x4000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    :goto_8
    if-ge v1, p1, :cond_17

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_17

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, p1, :cond_28

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    move v1, v3

    goto :goto_8

    :cond_28
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    :goto_8
    if-ge v1, p1, :cond_17

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_17

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, p1, :cond_28

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    move v1, v3

    goto :goto_8

    :cond_28
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_e6

    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v3, :cond_e4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move/from16 v0, v19

    float-to-int v4, v0

    move/from16 v0, v20

    float-to-int v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScaledOffsetX()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScaledOffsetY()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v9

    const/16 v21, 0x0

    :goto_5d
    move/from16 v0, v21

    if-ge v0, v8, :cond_aa

    aget-object v3, v10, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v3, v10, v21

    aget-object v4, v10, v21

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v4, v4, v23

    div-float v4, v4, v22

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v3, v10, v21

    aget-object v4, v10, v21

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v4, v4, v24

    div-float v4, v4, v22

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v3, v9, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_5d

    :pswitch_8e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    goto/16 :goto_7

    :pswitch_98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->access$400(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    goto/16 :goto_7

    :cond_aa
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_ce
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->setDownTime(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_e4
    return-void

    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_98
    .end packed-switch
.end method

.method private static isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_auto_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private persistScale(F)V
    .registers 4

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private transitionToState(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    iput p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->access$300(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_1b
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->destroy()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayContentObserver:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->destroy()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->destroy()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    packed-switch v0, :pswitch_data_36

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_28
    :pswitch_28
    return-void

    :pswitch_29
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_28

    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->access$200(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V

    goto :goto_28

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
