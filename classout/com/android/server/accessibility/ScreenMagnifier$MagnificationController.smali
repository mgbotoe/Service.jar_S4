.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnificationController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;
    }
.end annotation


# static fields
.field private static final PROPERTY_NAME_ACCESSIBILITY_TRANSFORMATION:Ljava/lang/String; = "accessibilityTransformation"


# instance fields
.field private final mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

.field private final mSentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTransformationAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .registers 8

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    new-instance v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    const-class v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const-class v3, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    const-string v4, "accessibilityTransformation"

    invoke-static {v2, v3, v4}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v1

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3400(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private animateAccessibilityTranformation(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getAccessibilityTransformation()Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedRegionBounds()Landroid/graphics/Rect;
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v1, v1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v2, v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v2, v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMagnifiedRegionCenterX()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    return v0
.end method

.method public getMagnifiedRegionCenterY()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    return v0
.end method

.method public getScale()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    return v0
.end method

.method public getScaledOffsetX()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    return v0
.end method

.method public getScaledOffsetY()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    return v0
.end method

.method public isMagnifying()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public reset(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->reset()V

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateAccessibilityTranformation(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setAccessibilityTransformation(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V

    goto :goto_1b
.end method

.method public setAccessibilityTransformation(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->updateFrom(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerService:Landroid/view/IWindowManager;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3600(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3500(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget v2, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iget v3, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iget v4, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindowManager;->magnifyDisplay(IFFF)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_22
.end method

.method public setMagnifiedRegionCenter(FFZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .registers 18

    iget-object v10, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v9, v10, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iget v7, v10, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    iget v8, v10, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iget v11, v10, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    neg-float v11, v11

    add-float/2addr v11, p2

    div-float v3, v11, v9

    iget v11, v10, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    neg-float v11, v11

    add-float v11, v11, p3

    div-float v4, v11, v9

    sub-float v11, v7, v3

    div-float v12, v9, p1

    mul-float v5, v11, v12

    sub-float v11, v8, v4

    div-float v12, v9, p1

    mul-float v6, v11, v12

    add-float v1, v3, v5

    add-float v2, v4, v6

    move/from16 v0, p4

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    return-void
.end method

.method public setScaleAndMagnifiedRegionCenter(FFFZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget v0, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->initialize(FFF)V

    if-eqz p4, :cond_3b

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateAccessibilityTranformation(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V

    goto :goto_1e

    :cond_3b
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setAccessibilityTransformation(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V

    goto :goto_1e
.end method
