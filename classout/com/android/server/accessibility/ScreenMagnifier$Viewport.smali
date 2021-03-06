.class final Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Viewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_NAME_BOUNDS:Ljava/lang/String; = "bounds"


# instance fields
.field private final mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

.field private final mResizeFrameAnimator:Landroid/animation/ValueAnimator;

.field private final mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;

.field private final mTempWindowInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

.field private final mWindowInfoInverseComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;Landroid/view/animation/Interpolator;J)V
    .registers 15

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempWindowInfoList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempRect1:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempRect2:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempRect3:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mWindowInfoInverseComparator:Ljava/util/Comparator;

    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mWindowManagerService:Landroid/view/IWindowManager;

    iput-object p4, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    new-instance v2, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;)V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    const-string v3, "alpha"

    new-array v4, v5, [I

    fill-array-data v4, :array_8e

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$1;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-class v2, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    const-class v3, Landroid/graphics/Rect;

    const-string v4, "bounds"

    invoke-static {v2, v3, v4}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v1

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$2;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)V

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    new-array v3, v5, [Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->access$3900(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;)Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->access$3900(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;)Landroid/graphics/Rect;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mResizeFrameAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mResizeFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mResizeFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->recomputeBounds(Z)V

    return-void

    :array_8e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    return-object v0
.end method

.method private isWindowMagnified(I)Z
    .registers 3

    const/16 v0, 0x7e3

    if-eq p1, v0, :cond_e

    const/16 v0, 0x7db

    if-eq p1, v0, :cond_e

    const/16 v0, 0x7dc

    if-eq p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private resize(Landroid/graphics/Rect;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    if-eqz p2, :cond_36

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mResizeFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mResizeFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mResizeFrameAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->access$3900(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mResizeFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c

    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_c
.end method

.method private subtract(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_18

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_18

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_18

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_24

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_24
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2e

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2e
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_38

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_38
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_42

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_42
    const/4 v0, 0x1

    goto :goto_19
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public recomputeBounds(Z)V
    .registers 15

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v10, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v10}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempRect2:Landroid/graphics/Rect;

    iget v10, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v12, v12, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempWindowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    :try_start_1b
    iget-object v10, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v11, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v11}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getDisplayId()I

    move-result v11

    invoke-interface {v10, v11, v6}, Landroid/view/IWindowManager;->getVisibleWindowsForDisplay(ILjava/util/List;)V

    iget-object v10, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mWindowInfoInverseComparator:Ljava/util/Comparator;

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v8, :cond_66

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInfo;

    iget v10, v5, Landroid/view/WindowInfo;->type:I

    const/16 v11, 0x7eb

    if-eq v10, v11, :cond_48

    iget v10, v5, Landroid/view/WindowInfo;->type:I

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_4b

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_4b
    iget-object v9, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mTempRect3:Landroid/graphics/Rect;

    iget-object v10, v5, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v10, v5, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v10}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->isWindowMagnified(I)Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :goto_60
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_1b .. :try_end_63} :catchall_8e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_63} :catch_7d

    move-result v10

    if-eqz v10, :cond_48

    :cond_66
    add-int/lit8 v4, v8, -0x1

    :goto_68
    if-ltz v4, :cond_a1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    invoke-virtual {v10}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_68

    :cond_76
    :try_start_76
    invoke-direct {p0, v9, v7}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->subtract(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    invoke-direct {p0, v0, v9}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->subtract(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_8e
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7c} :catch_7d

    goto :goto_60

    :catch_7d
    move-exception v10

    add-int/lit8 v4, v8, -0x1

    :goto_80
    if-ltz v4, :cond_a1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    invoke-virtual {v10}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_80

    :catchall_8e
    move-exception v10

    move-object v11, v10

    add-int/lit8 v4, v8, -0x1

    :goto_92
    if-ltz v4, :cond_a0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    invoke-virtual {v10}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_92

    :cond_a0
    throw v11

    :cond_a1
    iget-object v10, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v10}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget v3, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v10, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v10}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget v1, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v12, v12, v3, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-direct {p0, v7, p1}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->resize(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public rotationChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->rotationChanged()V

    return-void
.end method

.method public setFrameShown(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->isShown()Z

    move-result v0

    if-ne v0, p1, :cond_9

    :goto_8
    return-void

    :cond_9
    if-eqz p2, :cond_2c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_8

    :cond_19
    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->show()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    :cond_26
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->show()V

    goto :goto_8

    :cond_39
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->hide()V

    goto :goto_8
.end method
