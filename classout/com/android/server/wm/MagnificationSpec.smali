.class public Lcom/android/server/wm/MagnificationSpec;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"


# instance fields
.field public mOffsetX:F

.field public mOffsetY:F

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    return-void
.end method


# virtual methods
.method public initialize(FFF)V
    .registers 4

    iput p1, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    iput p2, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    iput p3, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    return-void
.end method

.method public isNop()Z
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
