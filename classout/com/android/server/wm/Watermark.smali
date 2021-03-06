.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field final mDeltaX:I

.field final mDeltaY:I

.field final mDisplay:Landroid/view/Display;

.field mDrawNeeded:Z

.field mLastDH:I

.field mLastDW:I

.field mSurface:Landroid/view/Surface;

.field final mText:Ljava/lang/String;

.field final mTextAscent:I

.field final mTextDescent:I

.field final mTextHeight:I

.field final mTextPaint:Landroid/graphics/Paint;

.field final mTextWidth:I

.field final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .registers 26

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    and-int/lit8 v16, v16, -0x2

    const/4 v15, 0x0

    :goto_24
    move/from16 v0, v16

    if-ge v15, v0, :cond_84

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v2, 0x61

    if-lt v10, v2, :cond_64

    const/16 v2, 0x66

    if-gt v10, v2, :cond_64

    add-int/lit8 v2, v10, -0x61

    add-int/lit8 v10, v2, 0xa

    :goto_4c
    const/16 v2, 0x61

    if-lt v11, v2, :cond_74

    const/16 v2, 0x66

    if-gt v11, v2, :cond_74

    add-int/lit8 v2, v11, -0x61

    add-int/lit8 v11, v2, 0xa

    :goto_58
    mul-int/lit8 v2, v10, 0x10

    add-int/2addr v2, v11

    rsub-int v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x2

    goto :goto_24

    :cond_64
    const/16 v2, 0x41

    if-lt v10, v2, :cond_71

    const/16 v2, 0x46

    if-gt v10, v2, :cond_71

    add-int/lit8 v2, v10, -0x41

    add-int/lit8 v10, v2, 0xa

    goto :goto_4c

    :cond_71
    add-int/lit8 v10, v10, -0x30

    goto :goto_4c

    :cond_74
    const/16 v2, 0x41

    if-lt v11, v2, :cond_81

    const/16 v2, 0x46

    if-gt v11, v2, :cond_81

    add-int/lit8 v2, v11, -0x41

    add-int/lit8 v11, v2, 0xa

    goto :goto_58

    :cond_81
    add-int/lit8 v11, v11, -0x30

    goto :goto_58

    :cond_84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x14

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v14

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v3, v14

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextAscent:I

    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextDescent:I

    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    mul-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, -0x5000

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v17

    const/4 v2, 0x5

    const/4 v3, 0x0

    const v4, 0x60ffffff

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x7

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v18

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    move/from16 v0, v17

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :try_start_163
    new-instance v2, Landroid/view/Surface;

    const-string v4, "WatermarkSurface"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x3

    const/4 v8, 0x4

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setLayerStack(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    const v3, 0xf4240

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setLayer(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/Surface;->setPosition(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->show()V
    :try_end_19d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_163 .. :try_end_19d} :catch_19e

    :goto_19d
    return-void

    :catch_19e
    move-exception v2

    goto :goto_19d
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 16

    const/4 v12, 0x0

    iget-boolean v11, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v11, :cond_5b

    iget v6, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iget v3, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    iput-boolean v12, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v12, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    :try_start_11
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_5e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_16} :catch_5c

    move-result-object v0

    :goto_17
    if-eqz v0, :cond_5b

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v1, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    div-int v5, v11, v1

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    mul-int v12, v5, v1

    sub-int v8, v11, v12

    div-int/lit8 v7, v1, 0x4

    if-lt v8, v7, :cond_36

    sub-int v11, v1, v7

    if-le v8, v11, :cond_39

    :cond_36
    div-int/lit8 v11, v1, 0x3

    add-int/2addr v1, v11

    :cond_39
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v10, v11

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v9, v11

    :cond_3f
    :goto_3f
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v11, v3

    if-ge v10, v11, :cond_56

    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v9

    int-to-float v13, v10

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v9, v1

    if-lt v9, v6, :cond_3f

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    sub-int/2addr v9, v11

    add-int/2addr v10, v2

    goto :goto_3f

    :cond_56
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5b
    return-void

    :catch_5c
    move-exception v11

    goto :goto_17

    :catch_5e
    move-exception v11

    goto :goto_17
.end method

.method positionSurface(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    :cond_8
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    :cond_14
    return-void
.end method
